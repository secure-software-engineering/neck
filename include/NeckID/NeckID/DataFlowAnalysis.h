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

namespace neckid {

std::vector<llvm::Instruction *>
analyzeTaintFlows(llvm::Module &M, const std::string &TaintConfigPath);

} // namespace neckid

#endif
