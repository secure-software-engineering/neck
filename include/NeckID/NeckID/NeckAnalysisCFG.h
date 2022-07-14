#ifndef NECKID_NECKID_NECKANALYSISCFG_H
#define NECKID_NECKID_NECKANALYSISCFG_H

/******************************************************************************
 * Copyright (c) 2022 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <string>
#include <unordered_set>

#include "llvm/ADT/GraphTraits.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/DOTGraphTraits.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/raw_ostream.h"

#include "NeckID/NeckID/NeckAnalysis.h"

namespace neckid {

struct NeckAnalysisCFG {
  // Displays the basic blocks for the specified function. Neck candidates and
  // the identified neck a highlighted (if they are located in the chosen
  // function).
  NeckAnalysisCFG(NeckAnalysis &NA, llvm::Function &F,
                  const std::string &ProgramName = "");

  void viewCFG() const;

  llvm::Function &DisplayFunction;
  llvm::BasicBlock *Neck;
  std::unordered_set<llvm::BasicBlock *> NeckBBs;
  std::unordered_set<llvm::BasicBlock *> UserBranchAndCompInstructions;
  std::string ProgramName;
};

} // namespace neckid

namespace llvm {

template <>
struct GraphTraits<const neckid::NeckAnalysisCFG *>
    : public GraphTraits<const BasicBlock *> {
  using NodeRef = GraphTraits<const BasicBlock *>::NodeRef;
  using ChildIteratorType = GraphTraits<const BasicBlock *>::ChildIteratorType;

  static NodeRef getEntryNode(const neckid::NeckAnalysisCFG *NACFG) {
    return &NACFG->DisplayFunction.getEntryBlock();
  }

  using nodes_iterator = pointer_iterator<Function::iterator>;

  static nodes_iterator
  nodes_begin(const neckid::NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->DisplayFunction.begin());
  }

  static nodes_iterator
  nodes_end(const neckid::NeckAnalysisCFG *NACFG) { // NOLINT
    return nodes_iterator(NACFG->DisplayFunction.end());
  }

  static size_t size(const neckid::NeckAnalysisCFG *NACFG) {
    return NACFG->DisplayFunction.size();
  }
};

template <>
struct DOTGraphTraits<const neckid::NeckAnalysisCFG *> : DefaultDOTGraphTraits {
  DOTGraphTraits(bool IsSimple = false) : DefaultDOTGraphTraits(IsSimple) {}

  static std::string getGraphName(const neckid::NeckAnalysisCFG *NACFG) {
    llvm::outs() << "called getGraphName()!\n";
    return !(NACFG->ProgramName.empty())
               ? "Neck Analysis for '" +
                     NACFG->DisplayFunction.getName().str() +
                     "' Function in '" + NACFG->ProgramName + "'"
               : "Neck Analysis for '" +
                     NACFG->DisplayFunction.getName().str() + "'";
  }

  std::string getNodeLabel(const BasicBlock *Node,
                           const neckid::NeckAnalysisCFG *NACFG) {
    FuncInfos.push_back(std::make_unique<DOTFuncInfo>(&NACFG->DisplayFunction));
    return DOTGraphTraits<DOTFuncInfo *>::getCompleteNodeLabel(
        Node, FuncInfos.back().get());
  }

  static std::string getNodeAttributes(const BasicBlock *Node,
                                       const neckid::NeckAnalysisCFG *NACFG) {
    bool IsNeck = false;
    if (Node == NACFG->Neck) {
      IsNeck = true;
    }
    bool IsNeckCandidate = false;
    if (std::find(NACFG->NeckBBs.begin(), NACFG->NeckBBs.end(), Node) !=
        NACFG->NeckBBs.end()) {
      IsNeckCandidate = true;
    }
    bool IsUsedInComparisonOrBranchInstruction = false;
    if (NACFG->UserBranchAndCompInstructions.find(
            const_cast<llvm::BasicBlock *>(Node)) !=
        NACFG->UserBranchAndCompInstructions.end()) {
      IsUsedInComparisonOrBranchInstruction = true;
    }
    if (IsNeck && !IsUsedInComparisonOrBranchInstruction) {
      return "style=filled, fillcolor=red";
    }
    if (IsNeck && IsUsedInComparisonOrBranchInstruction) {
      return "style=filled, fillcolor=violett";
    }
    if (IsNeckCandidate && !IsUsedInComparisonOrBranchInstruction) {
      return "style=filled, fillcolor=orange";
    }
    if (!IsNeckCandidate && IsUsedInComparisonOrBranchInstruction) {
      return "style=filled, fillcolor=blue";
    }
    if (IsNeckCandidate && IsUsedInComparisonOrBranchInstruction) {
      return "style=filled, fillcolor=green";
    }
    return "";
  }

  static std::string getEdgeAttributes(const BasicBlock *Node,
                                       const_succ_iterator I,
                                       const neckid::NeckAnalysisCFG *NACFG) {
    return DefaultDOTGraphTraits::getEdgeAttributes(Node, I,
                                                    &NACFG->DisplayFunction);
  }

  std::vector<std::unique_ptr<DOTFuncInfo>> FuncInfos;
};

} // namespace llvm

#endif
