#ifndef NECKID_NECKID_DATAFLOWANALYSIS_H
#define NECKID_NECKID_DATAFLOWANALYSIS_H

/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <string>
#include <vector>

#include "llvm/IR/Module.h"

#include "phasar/DB/ProjectIRDB.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/Pointer/LLVMPointsToSet.h"
#include "phasar/PhasarLLVM/TaintConfig/TaintConfig.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"

namespace neckid {

class TaintAnalysis {
public:
  TaintAnalysis(llvm::Module &M, const std::string &TaintConfigPath);

  std::vector<llvm::Instruction *> getNeckCandidates();

  psr::LLVMBasedICFG &getLLVMBasedICFG();

private:
  psr::ProjectIRDB IR;
  psr::TaintConfig Config;
  psr::LLVMTypeHierarchy T;
  psr::LLVMPointsToSet P;
  psr::LLVMBasedICFG I;
  std::vector<llvm::Instruction *> NeckCandidates;
};

} // namespace neckid

#endif
