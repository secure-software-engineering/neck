#ifndef NECKID_NECKID_NECKID_H
#define NECKID_NECKID_NECKID_H

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

namespace neckid {

class NeckAnalysis {
private:
  llvm::Function &F;
  llvm::DominatorTree DT;
  llvm::LoopInfo LI;
  std::unordered_set<llvm::BasicBlock *> NeckCandidates;
  llvm::BasicBlock *Neck;

  /// Breadth-first search.
  static bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst);

  /// Breadth-first search that computes distance.
  static bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                          size_t &Dist);

  std::unordered_set<llvm::BasicBlock *>
  getLoopExitBlocks(llvm::BasicBlock *BB);

  llvm::BasicBlock *closestNeckCandidateReachableFromEntry();

  bool isInLoopStructue(llvm::BasicBlock *BB);

  bool dominatesSuccessors(llvm::BasicBlock *BB);

  bool succeedsLoop(llvm::BasicBlock *BB);

public:
  /// Computes neck candidates and the definitive neck.
  NeckAnalysis(llvm::Function &F);

  /// Returns the analyzed function.
  [[nodiscard]] llvm::Function &getFunction();

  /// Returns the set of neck candidate.
  [[nodiscard]] std::unordered_set<llvm::BasicBlock *> getNeckCandidates();

  /// Returns the definite neck or nullptr, if no neck could be found.
  [[nodiscard]] llvm::BasicBlock *getNeck();
};

struct NeckAnalysisCFG {
  NeckAnalysisCFG(NeckAnalysis &NA);

  void viewCFG() const;

  llvm::Function &F;
  llvm::BasicBlock *Neck;
  std::unordered_set<llvm::BasicBlock *> NeckBBs;
};

} // namespace neckid

namespace llvm {

template <>
struct GraphTraits<const neckid::NeckAnalysisCFG *>
    : public GraphTraits<const BasicBlock *> {
  using NodeRef = GraphTraits<const BasicBlock *>::NodeRef;
  using ChildIteratorType = GraphTraits<const BasicBlock *>::ChildIteratorType;

  static NodeRef getEntryNode(const neckid::NeckAnalysisCFG *NACFG) {
    return &NACFG->F.getEntryBlock();
  }

  using nodes_iterator = pointer_iterator<Function::iterator>;

  static nodes_iterator
  nodes_begin(const neckid::NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->F.begin());
  }

  static nodes_iterator
  nodes_end(const neckid::NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->F.end());
  }

  static size_t size(const neckid::NeckAnalysisCFG *NACFG) {
    return NACFG->F.size();
  }
};

template <>
struct DOTGraphTraits<const neckid::NeckAnalysisCFG *> : DefaultDOTGraphTraits {
  DOTGraphTraits(bool IsSimple = false) : DefaultDOTGraphTraits(IsSimple) {}

  static std::string getGraphName(const neckid::NeckAnalysisCFG *NACFG) {
    llvm::outs() << "called getGraphName()!\n";
    return "Neck Analysis for '" + NACFG->F.getName().str() + "' Function";
  }

  std::string getNodeLabel(const BasicBlock *Node,
                           const neckid::NeckAnalysisCFG *NACFG) {
    FuncInfos.push_back(std::make_unique<DOTFuncInfo>(&NACFG->F));
    return DOTGraphTraits<DOTFuncInfo *>::getCompleteNodeLabel(
        Node, FuncInfos.back().get());
  }

  static std::string getNodeAttributes(const BasicBlock *Node,
                                       const neckid::NeckAnalysisCFG *NACFG) {
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
                                       const neckid::NeckAnalysisCFG *NACFG) {
    return DefaultDOTGraphTraits::getEdgeAttributes(Node, I, &NACFG->F);
  }

  std::vector<std::unique_ptr<DOTFuncInfo>> FuncInfos;
};

} // namespace llvm

#endif
