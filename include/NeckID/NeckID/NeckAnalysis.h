#ifndef NECKID_NECKID_NECKANALYSIS_H
#define NECKID_NECKID_NECKANALYSIS_H

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
#include "llvm/Support/raw_ostream.h"

#include "NeckID/NeckID/TaintAnalysis.h"

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
  llvm::Module &M;
  TaintAnalysis TA;
  // Dominator trees and loop infos are constructed lazily. Use
  // getDominatorTree() and getLoopInfo() to access them.
  std::unordered_map<llvm::Function *, llvm::DominatorTree> DTs;
  std::unordered_map<llvm::Function *, llvm::LoopInfo> LIs;
  std::unordered_set<llvm::BasicBlock *> NeckCandidates;
  std::unordered_set<llvm::BasicBlock *> UserBranchAndCompInstructions;
  llvm::BasicBlock *Neck;
  [[maybe_unused]] bool Debug;

public:
  /// Get cached dominator tree for the specified function.
  llvm::DominatorTree &getDominatorTree(llvm::Function *F);

  /// Get cached dominator tree for the specified basic block's function.
  inline llvm::DominatorTree &getDominatorTree(llvm::BasicBlock *BB) {
    return getDominatorTree(BB->getParent());
  }

  /// Get cached loop info for the specified function.
  llvm::LoopInfo &getLoopInfo(llvm::Function *F);

  /// Get cached loop info for the specified basic block's function.
  inline llvm::LoopInfo &getLoopInfo(llvm::BasicBlock *BB) {
    return getLoopInfo(BB->getParent());
  }

  /// Breadth-first search starting from main's entry point.
  bool isReachableFromFunctionsEntry(llvm::BasicBlock *Dst,
                                     llvm::StringRef FunName);

  /// Breadth-first search starting from main's entry point.
  bool isReachableFromFunctionsEntry(llvm::BasicBlock *Dst,
                                     llvm::Function *Fun);

  /// Breadth-first search.
  bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                   bool InterProcSearch);

  /// Breadth-first search that computes distance.
  bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst, size_t &Dist,
                   bool InterProcSearch);

  /// Breadth-first search that computes distance.
  bool isReachable(llvm::BasicBlock *Src, llvm::BasicBlock *Dst, size_t &Dist,
                   bool InterProcSearch,
                   llvm::BasicBlock **CallSiteBB = nullptr);

  // Retrieves all reachable callsites within a basic block.
  std::unordered_set<llvm::Instruction *>
  getReachableCallSites(llvm::BasicBlock *Src);

  std::unordered_set<llvm::BasicBlock *>
  getLoopExitBlocks(llvm::BasicBlock *BB);

  llvm::BasicBlock *closestNeckCandidateReachableFromEntry();

  bool isInLoopStructue(llvm::BasicBlock *BB);

  static bool isFullDominator(const llvm::BasicBlock *BB,
                              const llvm::DominatorTree *DT);

  static bool isBackEdge(llvm::BasicBlock *From, llvm::BasicBlock *To,
                         const llvm::DominatorTree *DT);

  bool dominatesSuccessors(llvm::BasicBlock *BB);

  bool hasSingleSuccessorThatDominatesSucessors(llvm::BasicBlock *BB);

  bool succeedsLoop(llvm::BasicBlock *BB);

  void applyFilteringRules(bool UseLateIntraProceduralMainReduction);

  /// Computes neck candidates and the definitive neck.
  NeckAnalysis(llvm::Module &M, const std::string &TaintConfigPath,
               bool FunctionLocalPTAwoGlobals = false,
               bool UseSimplifiedDFA = false, bool Debug = false);

  /// Returns the analyzed module.
  [[nodiscard]] llvm::Module &getModule();

  /// Returns the set of neck candidate.
  [[nodiscard]] std::unordered_set<llvm::BasicBlock *> getNeckCandidates();

  /// Returns a set of basic blocks that contain a comparison/branch instruction
  /// that is using a tainted value.
  [[nodiscard]] std::unordered_set<llvm::BasicBlock *>
  getUserBranchAndCompInstructions();

  /// Returns the definite neck or nullptr, if no neck could be found.
  [[nodiscard]] llvm::BasicBlock *getNeck();

  /// Inserts a special function call to '' to denote the basic block that has
  /// been identified as the neck.
  void markIdentifiedNeck(const std::string &FunName = "klee_dump_memory");

  /// Dumps the underlying module to the output stream.
  void dumpModule(llvm::raw_ostream &OS = llvm::outs());
};

} // namespace neckid

#endif
