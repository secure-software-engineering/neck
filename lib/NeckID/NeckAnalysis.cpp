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
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/DOTGraphTraits.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "NeckID/NeckID/NeckAnalysis.h"
#include "NeckID/NeckID/TaintAnalysis.h"

namespace {

// let's define some handy helper functions
void print(std::unordered_set<llvm::BasicBlock *> &BBs) {
  unsigned Counter = 1;
  for (auto *BB : BBs) {
    std::string Msg =
        "BB " + std::to_string(Counter) + " in function '" +
        ((BB->getParent()->hasName()) ? BB->getParent()->getName().str()
                                      : "<unnamed function>") +
        "':\n";
    llvm::outs() << Msg;
    llvm::outs() << std::string(Msg.size() - 1, '=');
    llvm::outs() << *BB << '\n';
    ++Counter;
  }
}

} // anonymous namespace

namespace neckid {

llvm::DominatorTree &NeckAnalysis::getDominatorTree(llvm::Function *F) {
  auto Search = DTs.find(F);
  if (Search != DTs.end()) {
    return Search->second;
  }
  DTs[F] = llvm::DominatorTree(*F);
  return DTs[F];
}

llvm::LoopInfo &NeckAnalysis::getLoopInfo(llvm::Function *F) {
  auto Search = LIs.find(F);
  if (Search != LIs.end()) {
    return Search->second;
  }
  auto &DT = getDominatorTree(F);
  LIs[F] = llvm::LoopInfo(DT);
  return LIs[F];
}

/// Breadth-first search starting from a function's entry point.
bool NeckAnalysis::isReachableFromFunctionsEntry(llvm::BasicBlock *Dst,
                                                 llvm::StringRef FunName) {
  auto *Fun = M.getFunction(FunName);
  return isReachableFromFunctionsEntry(Dst, Fun);
}

/// Breadth-first search starting from a function's entry point.
bool NeckAnalysis::isReachableFromFunctionsEntry(llvm::BasicBlock *Dst,
                                                 llvm::Function *Fun) {
  assert(Fun && !Fun->isDeclaration() &&
         "Expected a valid function definition!");
  return isReachable(&Fun->front(), Dst,
                     true /* check inter-procedural reachability */);
}

/// Breadth-first search.
bool NeckAnalysis::isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                               bool InterProcSearch) {
  size_t Dummy = 0;
  return isReachable(Src, Dst, Dummy, InterProcSearch, nullptr);
}

/// Breadth-first search that computes distance.
/// Note: Dist captures only intra-procedural distances.
bool NeckAnalysis::isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                               size_t &Dist, bool InterProcSearch) {
  return isReachable(Src, Dst, Dist, InterProcSearch, nullptr);
}

/// Breadth-first search that computes distance.
/// Note: Dist captures only intra-procedural distances.
/// If Dst is inter-procedurally reachable from Src, the callsite within Src's
/// function for which reachability has been shown is written to the
/// CallSiteBB parameter.
bool NeckAnalysis::isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                               size_t &Dist,
                               [[maybe_unused]] bool InterProcSearch,
                               llvm::BasicBlock **CallSiteBB) {
  // Early exit if possible
  if (Src == Dst) {
    return true;
  }
  // Check if an intraprocedural reachability check is sufficient
  if (Src->getParent() == Dst->getParent()) {
    InterProcSearch = false;
  }
  // Intraprocedural search
  if (!InterProcSearch) {
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
  // Interprocedural search
  // Find all reachable call sites
  auto CallSites = getReachableCallSites(Src);
  // Keep track of callsites that we already visited
  std::unordered_set<const llvm::Instruction *> VisitedCallSites;
  // Use a worklist to find call chains that lead to Dst
  for (auto *CallSite : CallSites) {
    auto Callees = TA.getLLVMBasedICFG().getCalleesOfCallAt(CallSite);
    std::vector<const llvm::Function *> WorkList(Callees.begin(),
                                                 Callees.end());
    while (!WorkList.empty()) {
      auto *Callee = WorkList.back();
      WorkList.pop_back();
      if (Callee == Dst->getParent()) {
        if (CallSiteBB) {
          *CallSiteBB = CallSite->getParent();
        }
        return true;
      }
      auto Callers = TA.getLLVMBasedICFG().getCallsFromWithin(Callee);
      for (auto *Caller : Callers) {
        auto Callees = TA.getLLVMBasedICFG().getCalleesOfCallAt(Caller);
        // Only add to worklist if we did not analyze a callsite already
        if (VisitedCallSites.find(Caller) == VisitedCallSites.end()) {
          // WorkList.push_back(Caller);
          std::copy(Callees.begin(), Callees.end(),
                    std::back_inserter(WorkList));
        }
        VisitedCallSites.insert(Caller);
      }
    }
    VisitedCallSites.clear();
  }
  return false;
}

std::unordered_set<llvm::Instruction *>
NeckAnalysis::getReachableCallSites(llvm::BasicBlock *Src) {
  // Collect all basic blocks that call a function
  std::unordered_set<llvm::Instruction *> CallSiteBBs;
  for (auto &FunBB : *Src->getParent()) {
    for (auto &I : FunBB) {
      if (llvm::isa<llvm::CallBase>(&I)) {
        CallSiteBBs.insert(&I);
      }
    }
  }
  // Check which basic blocks are reachable from Src
  std::unordered_set<llvm::Instruction *> ReachableCallSiteBBs;
  for (auto *CallSiteBB : CallSiteBBs) {
    if (isReachable(Src, CallSiteBB->getParent(), false)) {
      ReachableCallSiteBBs.insert(CallSiteBB);
    }
  }
  return ReachableCallSiteBBs;
}

std::unordered_set<llvm::BasicBlock *>
neckid::NeckAnalysis::getLoopExitBlocks(llvm::BasicBlock *BB) {
  auto *Loop = getLoopInfo(BB).getLoopFor(BB);
  if (Loop) {
    llvm::SmallVector<llvm::BasicBlock *, 5> Exits;
    // Return all unique successor blocks of this loop.
    // These are the blocks outside of the current loop which are branched to.
    Loop->getUniqueExitBlocks(Exits);
    std::unordered_set<llvm::BasicBlock *> Result;
    Result.insert(Exits.begin(), Exits.end());
    return Result;
  }
  return {};
}

llvm::BasicBlock *
neckid::NeckAnalysis::closestNeckCandidateReachableFromEntry() { // NOLINT
  size_t ShortestDist = std::numeric_limits<size_t>::max();
  llvm::BasicBlock *Closest = nullptr;
  // FIXME (this is not particularly efficient)
  for (auto *NeckCandidate : NeckCandidates) {
    size_t Dist = 0;
    auto *Main = M.getFunction("main");
    assert(Main && !Main->isDeclaration() &&
           "Expected to find a 'main' function!");
    // FIXME update once we have an inter-procedural search
    if (isReachable(&Main->getEntryBlock(), NeckCandidate, Dist, false,
                    nullptr)) {
      if (Dist < ShortestDist) {
        ShortestDist = Dist;
        Closest = NeckCandidate;
      }
    }
  }
  return Closest;
}

bool neckid::NeckAnalysis::isInLoopStructue(llvm::BasicBlock *BB) {
  return getLoopInfo(BB).getLoopFor(BB) != nullptr;
}

// SOURCE: https://llvm.org/doxygen/SanitizerCoverage_8cpp_source.html#l00516
// True if block has successors and it dominates all of them.
bool neckid::NeckAnalysis::isFullDominator(const llvm::BasicBlock *BB,
                                           const llvm::DominatorTree *DT) {
  if (succ_empty(BB)) {
    return false;
  }
  return llvm::all_of(successors(BB), [&](const llvm::BasicBlock *SUCC) {
    return DT->dominates(BB, SUCC);
  });
}

bool neckid::NeckAnalysis::isBackEdge(llvm::BasicBlock *From,
                                      llvm::BasicBlock *To,
                                      const llvm::DominatorTree *DT) {
  // check if any successor of From dominates To
  // in case of basename, there is a backedge from From to To
  // thus, To will be a successor of From
  // which means, DT->dominates(To, To) which will return True
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
    if (!getDominatorTree(BB).dominates(BB, BBSucc)) {
      return false;
    }
    // if BB dominates BBSucc
    // make sure no edge from BBSucc to BB
    if (isBackEdge(BBSucc, BB, &getDominatorTree(BB))) {
      return false;
    }

    // TODO: check if there is an eventual cycle / closed path from succ to BB
    // isCyclic()
    // TODO: remove all basic blocks that are Loop latches which have a
    // direct/indirect backedge to the loop header
  }

  // or use this function directly.
  // return isFullDominator(BB, &DT);
  return true;
}

bool neckid::NeckAnalysis::hasSingleSuccessorThatDominatesSucessors(
    llvm::BasicBlock *BB) {
  if (BB->getTerminator()->getNumSuccessors() > 1) {
    return false;
  }
  // get the one successor
  for (auto *BBSucc : llvm::successors(BB)) { // NOLINT
    return dominatesSuccessors(BBSucc);
  }
  return false;
}

bool neckid::NeckAnalysis::succeedsLoop(llvm::BasicBlock *BB) {
  for (auto *Loop : getLoopInfo(BB)) {
    auto Blocks = Loop->getBlocks();
    for (auto *Block : Blocks) {
      size_t Dist = 0;
      // FIXME update once we have an inter-procedural search
      if (isReachable(Block, BB, Dist, false, nullptr)) {
        return true;
      }
    }
  }
  return false;
}

/// Computes neck candidates and the definitive neck.
neckid::NeckAnalysis::NeckAnalysis(llvm::Module &M,
                                   const std::string &TaintConfigPath,
                                   bool FunctionLocalPTAwoGlobals,
                                   bool UseSimplifiedDFA, bool Debug)
    : M(M), TA(M, TaintConfigPath, FunctionLocalPTAwoGlobals, UseSimplifiedDFA,
               Debug),
      Neck(nullptr), Debug(Debug) {
  // Helper sets for easy erase and insert
  std::unordered_set<llvm::BasicBlock *> ToErase;
  std::unordered_set<llvm::BasicBlock *> ToInsert;
  // Start with a list of potential neck candidates
  std::vector<llvm::Instruction *> InterestingInstructions =
      TA.getNeckCandidates();
  UserBranchAndCompInstructions = TA.getUserBranchAndCompInstructions();
  // Initialize with potential neck candidates
  for (auto *InterestingInstruction : InterestingInstructions) {
    NeckCandidates.insert(InterestingInstruction->getParent());
  }
  if (NeckCandidates.empty()) {
    llvm::outs() << "No neck candidates found.\n";
    return;
  }
  if (!NeckCandidates.empty() && Debug) {
    llvm::outs() << "Neck candidates identified by the data-flow analysis:\n";
    print(NeckCandidates);
  }
  // Remove all neck candidates that are inter-procedurally (transitively)
  // reachable from main and instead add their origin in main, i.e., the basic
  // block that kicks off the call chain that leads to a neck candidate.
  for (auto *NeckCandidate : NeckCandidates) {
    auto *Main = M.getFunction("main");
    assert(Main && "Expected to find 'main' function!");
    // Basic blocks within the program's entry point function are fine
    if (NeckCandidate->getParent() == Main) {
      continue;
    }
    // Replace inter-procedurally reachable neck candidates with their
    // respective call-site basic block in the program's entry point function
    llvm::BasicBlock *CallSiteBB = nullptr;
    size_t Dummy;
    if (isReachable(&Main->front(), NeckCandidate, Dummy, true, &CallSiteBB)) {
      ToErase.insert(NeckCandidate);
      ToInsert.insert(CallSiteBB);
    }
  }
  for (auto Erase : ToErase) {
    NeckCandidates.erase(Erase);
  }
  NeckCandidates.insert(ToInsert.begin(), ToInsert.end());
  ToErase.clear();
  ToInsert.clear();
  if (Debug) {
    llvm::outs()
        << "Neck candidates after intra-procedural 'main' reduction:\n";
    print(NeckCandidates);
  }
  // Collect all neck candidates that are part of a loop add Loop Exits to
  // LoopBBs
  std::unordered_set<llvm::BasicBlock *> LoopBBs;
  for (auto *NeckCandidate : NeckCandidates) {
    if (isInLoopStructue(NeckCandidate)) {
      auto ExitBlocks = getLoopExitBlocks(NeckCandidate);
      LoopBBs.insert(ExitBlocks.begin(), ExitBlocks.end());
    }
  }
  // Remove all basic blocks that are part of a loop (also removes loop exits)
  eraseIf(NeckCandidates, [this](auto *BB) { return isInLoopStructue(BB); });
  // Add the loops' respective exit blocks instead
  NeckCandidates.insert(LoopBBs.begin(), LoopBBs.end());
  if (Debug) {
    llvm::outs() << "Neck candidates after handling loops:\n";
    print(NeckCandidates);
  }
  // Now, all loop blocks that aren't loop exits are removed
  // Next, compensate for poor LLVM IR generation in case we have
  // single-instruction basic blocks that comprises an unconditional jump to the
  // next basic block.
  for (auto *NeckCandidate : NeckCandidates) {
    if (NeckCandidate->size() == 1) {
      for (auto &Inst : *NeckCandidate) {
        if (auto *Br = llvm::dyn_cast<llvm::BranchInst>(&Inst)) {
          if (!Br->isConditional()) {
            ToInsert.insert(Br->getSuccessor(0));
            ToErase.insert(NeckCandidate);
          }
        }
      }
    }
  }
  for (auto Erase : ToErase) {
    NeckCandidates.erase(Erase);
  }
  NeckCandidates.insert(ToInsert.begin(), ToInsert.end());
  ToErase.clear();
  ToInsert.clear();
  if (Debug) {
    llvm::outs() << "Neck candidates after IR cleanup:\n";
    print(NeckCandidates);
  }
  // Remove all basic blocks that do not dominate their successors
  // Due to some funny LLVM IR construct (cf. kill), we can have a case in which
  // a BB does not dominate its single successor, but its single success does.
  // In that case, we add this single success that dominates its successor to
  // the set of potential neck candidates.
  std::unordered_set<llvm::BasicBlock *> TransitiveDominators;
  for (auto *BB : NeckCandidates) {
    if (!dominatesSuccessors(BB) &&
        hasSingleSuccessorThatDominatesSucessors(BB)) {
      // add single successor
      for (auto *BBSucc : llvm::successors(BB)) {
        TransitiveDominators.insert(BBSucc);
      }
    }
  }
  eraseIf(NeckCandidates,
          [this](auto *BB) { return !dominatesSuccessors(BB); });
  NeckCandidates.insert(TransitiveDominators.begin(),
                        TransitiveDominators.end());
  if (Debug) {
    llvm::outs() << "Neck candidates after handling dominators:\n";
    print(NeckCandidates);
  }
  // Remove all basic blocks that do not succeed a loop
  eraseIf(NeckCandidates, [this](auto *BB) { return !succeedsLoop(BB); });
  if (Debug) {
    llvm::outs() << "Neck candidates after handling loop succession:\n";
    print(NeckCandidates);
  }
  // // Remove all basic blocks that are not loop exits (LoopBBs contains all
  // loop
  // // exits)
  // eraseIf(NeckCandidates, [LoopBBs](auto *BB) { return !LoopBBs.count(BB);
  // }); if (Debug) {
  //   llvm::outs() << "Neck candidates after handling no-loop exits:\n";
  //   print(NeckCandidates);
  // }
  // Remove all basic blocks that are not reachable from main
  eraseIf(NeckCandidates, [this](auto *BB) {
    return !isReachableFromFunctionsEntry(BB, "main");
  });
  if (Debug) {
    llvm::outs()
        << "Neck candidates after handling reachability from 'main':\n";
    print(NeckCandidates);
  }
  // Compute the neck candidate that is closed to the program's entry point
  Neck = closestNeckCandidateReachableFromEntry();
  if (Debug) {
    llvm::outs()
        << "Closest neck candidate from entry point of 'main'/the neck: ";
    if (!Neck) {
      llvm::outs() << "No neck candidate found!\n";
    } else {
      llvm::outs() << *Neck << '\n';
    }
  }
}

llvm::Module &neckid::NeckAnalysis::getModule() { return M; }

/// Returns the set of neck candidate.
std::unordered_set<llvm::BasicBlock *>
neckid::NeckAnalysis::getNeckCandidates() {
  return NeckCandidates;
}

std::unordered_set<llvm::BasicBlock *>
neckid::NeckAnalysis::getUserBranchAndCompInstructions() {
  return UserBranchAndCompInstructions;
}

/// Returns the definite neck or nullptr, if no neck could be found.
llvm::BasicBlock *neckid::NeckAnalysis::getNeck() { return Neck; }

void neckid::NeckAnalysis::markIdentifiedNeck(const std::string &FunName) {
  if (!Neck) {
    return;
  }
  // Create artificial marker function
  llvm::LLVMContext &CTX = M.getContext();
  llvm::FunctionType *MarkerFunTy =
      llvm::FunctionType::get(llvm::Type::getVoidTy(CTX), false);
  llvm::Function *MarkerFun = llvm::Function::Create(
      MarkerFunTy, llvm::Function::ExternalLinkage, FunName, M);
  llvm::BasicBlock *BB = llvm::BasicBlock::Create(CTX, "entry", MarkerFun);
  llvm::IRBuilder<> Builder(CTX);
  Builder.SetInsertPoint(BB);
  Builder.CreateRetVoid();
  // Add call to the artifical marker function in the basic block that has been
  // identified as neck
  Builder.SetInsertPoint(&Neck->front());
  Builder.CreateCall(MarkerFun);
}

void neckid::NeckAnalysis::dumpModule(llvm::raw_ostream &OS) { OS << M; }

} // namespace neckid
