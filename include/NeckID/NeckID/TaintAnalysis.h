#ifndef NECKID_NECKID_TAINTANALYSIS_H
#define NECKID_NECKID_TAINTANALYSIS_H

/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <string>
#include <unordered_set>
#include <vector>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"

// #include "phasar/DB/ProjectIRDB.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/DB/LLVMProjectIRDB.h"
#include "phasar/PhasarLLVM/Pointer/LLVMAliasSet.h"
#include "phasar/PhasarLLVM/TaintConfig.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"

namespace neckid {

class TaintAnalysis {
public:
  TaintAnalysis(llvm::Module &M, const std::string &TaintConfigPath,
                bool FunctionLocalPTAwoGlobals = false,
                bool UseSimplifiedDFA = false, bool Debug = false);

  std::vector<llvm::Instruction *> getNeckCandidates();

  std::unordered_set<llvm::BasicBlock *> getUserBranchAndCompInstructions();

  std::unordered_set<const llvm::BasicBlock *>
  processBranchInst(const llvm::BranchInst *brInst);
  std::unordered_set<const llvm::BasicBlock *>
  processSwitchInst(const llvm::SwitchInst *swInst);
  bool valueDependsOnTaint(const llvm::Value *value,
                           const llvm::Value *taintedBase);
  bool isDependentOnTaint(const llvm::Value *value,
                          const llvm::Value *taintedBase);

  psr::LLVMBasedICFG &getLLVMBasedICFG();

private:
  psr::LLVMProjectIRDB IR;
  // psr::TaintConfigData Config;
  psr::LLVMTaintConfig Config;
  psr::LLVMTypeHierarchy T;
  psr::LLVMAliasSet P;
  // psr::LLVMAliasInfoRef PT{};
  psr::LLVMBasedICFG I;
  std::vector<llvm::Instruction *> NeckCandidates;
  std::unordered_set<llvm::BasicBlock *> UserBranchAndCompInstructions;
  std::unordered_set<const llvm::BasicBlock *>
      UserBranchAndCompInstructionsConst;
};

} // namespace neckid

#endif
