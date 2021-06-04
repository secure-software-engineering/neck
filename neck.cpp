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

template <typename MapT, typename Predicate>
std::size_t eraseIf(MapT &C, Predicate Pred) {
  auto OldSize = C.size();
  for (auto It = C.begin(), Last = C.end(); It != Last;) {
    if (Pred(*It)) {
      It = C.erase(It);
    } else {
      ++It;
    }
  }
  return OldSize - C.size();
}

class NeckAnalysis {
private:
  llvm::Function &F;
  llvm::DominatorTree DT;
  llvm::LoopInfo LI;
  std::unordered_set<llvm::BasicBlock *> NeckCandidates;
  llvm::BasicBlock *Neck;

  /// Breadth-first search.
  static bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst) {
    size_t Dummy = 0;
    return isReachable(Src, Dst, Dummy);
  }

  /// Breadth-first search that computes distance.
  static bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                          size_t &Dist) {
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
  getLoopExitBlocks(llvm::BasicBlock *BB) {
    auto *Loop = LI.getLoopFor(BB);
    if (Loop) {
      llvm::SmallVector<llvm::BasicBlock *, 5> Exits;
      Loop->getExitBlocks(Exits);
      std::unordered_set<llvm::BasicBlock *> Result;
      Result.insert(Exits.begin(), Exits.end());
      return Result;
    }
    return {};
  }

  llvm::BasicBlock *closestNeckCandidateReachableFromEntry() {
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

  bool isInLoopStructue(llvm::BasicBlock *BB) {
    auto *Loop = LI.getLoopFor(BB);
    return Loop != nullptr;
  }

  bool dominatesSuccessors(llvm::BasicBlock *BB) {
    if (!BB->getTerminator()->getNumSuccessors()) {
      return false;
    }
    for (const auto *BBSucc : llvm::successors(BB)) { // NOLINT
      if (!DT.dominates(BB, BBSucc)) {
        return false;
      }
    }
    return true;
  }

  bool succeedsLoop(llvm::BasicBlock *BB) {
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

public:
  /// Computes neck candidates and the definitive neck.
  NeckAnalysis(llvm::Function &F) : F(F), DT(F), LI(DT) {
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
    // remove all basic blocks that are part of a loop
    eraseIf(NeckCandidates, [this](auto *BB) { return isInLoopStructue(BB); });
    // add the loops' respective exit blocks
    NeckCandidates.insert(LoopBBs.begin(), LoopBBs.end());
    // remove all basic blocks that do not dominate their successors
    eraseIf(NeckCandidates,
            [this](auto *BB) { return !dominatesSuccessors(BB); });
    // remove all basic blocks that do not succeed a loop
    eraseIf(NeckCandidates, [this](auto *BB) { return !succeedsLoop(BB); });
    // remove all basic blocks that are not reachable from main
    eraseIf(NeckCandidates,
            [this](auto *BB) { return !isReachable(&this->F.front(), BB); });
    // compute the neck
    Neck = closestNeckCandidateReachableFromEntry();
  }

  /// Returns the analyzed function.
  [[nodiscard]] llvm::Function &getFunction() { return F; }

  /// Returns the set of neck candidate.
  [[nodiscard]] std::unordered_set<llvm::BasicBlock *> getNeckCandidates() {
    return NeckCandidates;
  }

  /// Returns the definite neck or nullptr, if no neck could be found.
  [[nodiscard]] llvm::BasicBlock *getNeck() { return Neck; }
};

struct NeckAnalysisCFG {
  NeckAnalysisCFG(NeckAnalysis &NA)
      : F(NA.getFunction()), Neck(NA.getNeck()),
        NeckBBs(NA.getNeckCandidates()) {}

  void viewCFG() const { ViewGraph(this, "Neck-Analysis-CFG:" + F.getName()); }

  llvm::Function &F;
  llvm::BasicBlock *Neck;
  std::unordered_set<llvm::BasicBlock *> NeckBBs;
};

namespace llvm {

template <>
struct GraphTraits<const NeckAnalysisCFG *>
    : public GraphTraits<const BasicBlock *> {
  using NodeRef = GraphTraits<const BasicBlock *>::NodeRef;
  using ChildIteratorType = GraphTraits<const BasicBlock *>::ChildIteratorType;

  static NodeRef getEntryNode(const NeckAnalysisCFG *NACFG) {
    return &NACFG->F.getEntryBlock();
  }

  using nodes_iterator = pointer_iterator<Function::iterator>;

  static nodes_iterator nodes_begin(const NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->F.begin());
  }

  static nodes_iterator nodes_end(const NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->F.end());
  }

  static size_t size(const NeckAnalysisCFG *NACFG) { return NACFG->F.size(); }
};

template <>
struct DOTGraphTraits<const NeckAnalysisCFG *> : DefaultDOTGraphTraits {
  DOTGraphTraits(bool IsSimple = false) : DefaultDOTGraphTraits(IsSimple) {}

  static std::string getGraphName(const NeckAnalysisCFG *NACFG) {
    llvm::outs() << "called getGraphName()!\n";
    return "Neck Analysis for '" + NACFG->F.getName().str() + "' Function";
  }

  std::string getNodeLabel(const BasicBlock *Node,
                           const NeckAnalysisCFG *NACFG) {
    FuncInfos.push_back(std::make_unique<DOTFuncInfo>(&NACFG->F));
    return DOTGraphTraits<DOTFuncInfo *>::getCompleteNodeLabel(
        Node, FuncInfos.back().get());
  }

  static std::string getNodeAttributes(const BasicBlock *Node,
                                       const NeckAnalysisCFG *NACFG) {
    if (Node == NACFG->Neck) {
      return "style=filled, fillcolor=red";
    }
    if (std::find(NACFG->NeckBBs.begin(), NACFG->NeckBBs.end(), Node) !=
        NACFG->NeckBBs.end()) {
      return "style=filled, fillcolor=orange";
    }
    return "";
  }

  static std::string getEdgeAttributes(const BasicBlock *Node,
                                       const_succ_iterator I,
                                       const NeckAnalysisCFG *NACFG) {
    return DefaultDOTGraphTraits::getEdgeAttributes(Node, I, &NACFG->F);
  }

  std::vector<std::unique_ptr<DOTFuncInfo>> FuncInfos;
};

} // namespace llvm

int main(int argc, char **argv) {
  if (argc != 2) {
    llvm::errs()
        << "neck\n"
           "A small program that allows for automated neck detection.\n\n"
           "Usage: neck <LLVM IR file>\n";
    return 1;
  }
  // Parse an LLVM IR file.
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M =
      llvm::parseIRFile(argv[1], Diag, CTX); // NOLINT
  // Check if the module is valid.
  bool BrokenDbgInfo = false;
  if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
    llvm::errs() << "error: invalid module\n";
    return 1;
  }
  if (BrokenDbgInfo) {
    llvm::errs() << "caution: debug info is broken\n";
  }

  auto *Main = M->getFunction("main");
  if (!Main) {
    llvm::errs() << "error: could not retrieve 'main()'!\n";
    return 1;
  }
  NeckAnalysis NA(*Main);
  NeckAnalysisCFG G(NA);
  G.viewCFG();
  return 0;
}
