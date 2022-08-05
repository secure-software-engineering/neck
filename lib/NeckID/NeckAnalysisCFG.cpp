/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <string>

#include "llvm/IR/Function.h"

#include "NeckID/NeckID/NeckAnalysis.h"
#include "NeckID/NeckID/NeckAnalysisCFG.h"

namespace neckid {

neckid::NeckAnalysisCFG::NeckAnalysisCFG(NeckAnalysis &NA, llvm::Function &F,
                                         std::string ProgramName)
    : DisplayFunction(F), Neck(NA.getNeck()), NeckBBs(NA.getNeckCandidates()),
      UserBranchAndCompInstructions(NA.getUserBranchAndCompInstructions()),
      ProgramName(std::move(ProgramName)) {}

void neckid::NeckAnalysisCFG::viewCFG() const {
  ViewGraph(this, "Neck-Analysis-CFG:" + DisplayFunction.getName());
}

} // namespace neckid
