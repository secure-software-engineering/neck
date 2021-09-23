/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <algorithm>
#include <deque>
#include <limits>
#include <memory>
#include <unordered_map>
#include <unordered_set>

#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/DOTGraphTraits.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "NeckID/NeckID/NeckID.h"

namespace neckid {

/// Breadth-first search.
bool neckid::NeckAnalysis::isReachable(llvm::BasicBlock *Src,
                                       llvm::BasicBlock *Dst) {
  size_t Dummy = 0;
  return isReachable(Src, Dst, Dummy);
}

/// Breadth-first search that computes distance.
bool neckid::NeckAnalysis::isReachable(llvm::BasicBlock *Src,
                                       llvm::BasicBlock *Dst, size_t &Dist) {
  if (Src->getParent() != Dst->getParent()) {
    return false;
  }
  if (Src == Dst) {
    return true;
  }
  // Mark all the vertices as not visited
  std::unordered_map<llvm::BasicBlock *, bool> Visited;
  for (auto &BB : *Src->getParent()) {
    Visited[&BB] = false;
  }
  Dist = 0;
  // Create a queue for BFS
  std::deque<llvm::BasicBlock *> Queue;
  // Mark the current node as visited and enqueue it
  Visited[Src] = true;
  Queue.push_back(Src);
  while (!Queue.empty()) {
    ++Dist;
    // Dequeue a vertex from queue
    Src = Queue.front();
    Queue.pop_front();
    // Get all adjacent vertices of the dequeued vertex Src
    // If a adjacent has not been visited, then mark it visited
    // and enqueue it
    for (auto *Succ : llvm::successors(Src)) {
      // If this adjacent node is the destination node, then
      // return true
      if (Succ == Dst) {
        return true;
      }
      // Else, continue to do BFS
      if (!Visited[Succ]) {
        Visited[Succ] = true;
        Queue.push_back(Succ);
      }
    }
  }
  // If BFS is complete without visiting Dst
  return false;
}

std::unordered_set<llvm::BasicBlock *>
neckid::NeckAnalysis::getLoopExitBlocks(llvm::BasicBlock *BB) {
  auto *Loop = LI.getLoopFor(BB);
  if (Loop) {
    llvm::SmallVector<llvm::BasicBlock *, 5> Exits;
    Loop->getUniqueExitBlocks(Exits);
    std::unordered_set<llvm::BasicBlock *> Result;
    Result.insert(Exits.begin(), Exits.end());
    return Result;
  }
  return {};
}

llvm::BasicBlock *
neckid::NeckAnalysis::closestNeckCandidateReachableFromEntry() {
  size_t ShortestDist = std::numeric_limits<size_t>::max();
  llvm::BasicBlock *Closest = nullptr;
  for (auto *NeckCandidate : NeckCandidates) {
    size_t Dist = 0;
    if (isReachable(&F.getEntryBlock(), NeckCandidate, Dist)) {
      if (Dist < ShortestDist) {
        ShortestDist = Dist;
        Closest = NeckCandidate;
      }
    }
  }
  return Closest;
}

bool neckid::NeckAnalysis::isInLoopStructue(llvm::BasicBlock *BB) {
  auto *Loop = LI.getLoopFor(BB);
  return Loop != nullptr;
}

// SOURCE: https://llvm.org/doxygen/SanitizerCoverage_8cpp_source.html#l00516
// True if block has successors and it dominates all of them.
bool neckid::NeckAnalysis::isFullDominator(const llvm::BasicBlock *BB, const llvm::DominatorTree *DT) {
  if (succ_empty(BB)) {
    return false;
  }

  return llvm::all_of(successors(BB), [&](const llvm::BasicBlock *SUCC) {
    return DT->dominates(BB, SUCC);
  });
}

bool neckid::NeckAnalysis::isBackEdge(llvm::BasicBlock *From, llvm::BasicBlock *To,
                      const llvm::DominatorTree *DT) {
    // check if any successor of From dominates To
    // in case of basename, there is a backedge from From to To
    // essentially, DT->dominates(To, To) which will return True
    for (auto *Succ : llvm::successors(From)) { // NOLINT
      if (DT->dominates(Succ, To)) {
        return true;
      }
    }

  return false;
}

bool neckid::NeckAnalysis::dominatesSuccessors(llvm::BasicBlock *BB) {
  if (!BB->getTerminator()->getNumSuccessors()) {
    return false;
  }
  for (auto *BBSucc : llvm::successors(BB)) { // NOLINT
    if (!DT.dominates(BB, BBSucc)) {
      return false;
    }
    else {
      // if BB dominates BBSucc
      // make sure no edge from BBSucc to BB
      if(isBackEdge(BBSucc, BB, &DT)) {
        return false;
      }
    }
  }

  // or use this function directly.
  // return isFullDominator(BB, &DT);
  return true;
}

bool neckid::NeckAnalysis::succeedsLoop(llvm::BasicBlock *BB) {
  for (auto *Loop : LI) {
    auto Blocks = Loop->getBlocks();
    for (auto *Block : Blocks) {
      size_t Dist = 0;
      if (isReachable(Block, BB, Dist)) {
        return true;
      }
    }
  }
  return false;
}

/// Computes neck candidates and the definitive neck.
neckid::NeckAnalysis::NeckAnalysis(llvm::Function &F) : F(F), DT(F), LI(DT) {
  // initialize with potential neck candidates
  if (F.hasName() && F.getName() == "main") {
    for (auto &Arg : F.args()) {
      for (auto *User : Arg.users()) {
        if (auto *Inst = llvm::dyn_cast<llvm::Instruction>(User)) {
          NeckCandidates.insert(Inst->getParent());
        }
      }
    }
  }
  if (NeckCandidates.empty()) {
    return;
  }
  // collect all neck candidates that are part of a loop
  std::unordered_set<llvm::BasicBlock *> LoopBBs;
  for (auto *NeckCandidate : NeckCandidates) {
    if (isInLoopStructue(NeckCandidate)) {
      auto ExitBlocks = getLoopExitBlocks(NeckCandidate);
      LoopBBs.insert(ExitBlocks.begin(), ExitBlocks.end());
    }
  }
  // remove all basic blocks that are part of a loop (also removes loop exits)
  eraseIf(NeckCandidates, [this](auto *BB) { return isInLoopStructue(BB); });
  // add the loops' respective exit blocks
  NeckCandidates.insert(LoopBBs.begin(), LoopBBs.end());
  // remove all basic blocks that do not dominate their successors
  eraseIf(NeckCandidates,
          [this](auto *BB) { return !dominatesSuccessors(BB); });
  // remove all basic blocks that do not succeed a loop
  // eraseIf(NeckCandidates, [this](auto *BB) { return !succeedsLoop(BB); });

  // remove all basic blocks that are not loop exits (LoopBBs contain all loop exits; take AND of NeckCandidates and LoopBBs)
  eraseIf(NeckCandidates, [LoopBBs](auto *BB) { return !LoopBBs.count(BB); });

  // TODO: remove all basic blocks that are Loop latches which have a direct/indirect backedge to the loop header
 
  // remove all basic blocks that are not reachable from main
  eraseIf(NeckCandidates,
          [this](auto *BB) { return !isReachable(&this->F.front(), BB); });
  // compute the neck
  Neck = closestNeckCandidateReachableFromEntry();
}

/// Returns the analyzed function.
llvm::Function &neckid::NeckAnalysis::getFunction() { return F; }

/// Returns the set of neck candidate.
std::unordered_set<llvm::BasicBlock *>
neckid::NeckAnalysis::getNeckCandidates() {
  return NeckCandidates;
}

/// Returns the definite neck or nullptr, if no neck could be found.
llvm::BasicBlock *neckid::NeckAnalysis::getNeck() { return Neck; }

neckid::NeckAnalysisCFG::NeckAnalysisCFG(NeckAnalysis &NA)
    : F(NA.getFunction()), Neck(NA.getNeck()), NeckBBs(NA.getNeckCandidates()) {
}

void neckid::NeckAnalysisCFG::viewCFG() const {
  ViewGraph(this, "Neck-Analysis-CFG:" + F.getName());
}

} // namespace neckid
