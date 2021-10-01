/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <sstream>
#include <string>
#include <vector>

#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include "phasar/DB/ProjectIRDB.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/IDEExtendedTaintAnalysis.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Solver/IDESolver.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Solver/SolverResults.h"
#include "phasar/PhasarLLVM/Pointer/LLVMPointsToSet.h"
#include "phasar/PhasarLLVM/TaintConfig/TaintConfig.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"
#include "phasar/Utils/Logger.h"

#include "NeckID/NeckID/DataFlowAnalysis.h"

namespace neckid {

std::vector<llvm::Instruction *>
analyzeTaintFlows(llvm::Module &M, const std::string &TaintConfigPath) {
  // Set up and solve the data-flow analysis
  std::vector<llvm::Module *> Modules;
  Modules.push_back(&M);
  psr::initializeLogger(false);
  psr::ProjectIRDB IR(Modules, psr::IRDBOptions::WPA);
  psr::LLVMTypeHierarchy T(IR);
  psr::LLVMPointsToSet P(IR);
  psr::LLVMBasedICFG I(IR, psr::CallGraphAnalysisType::OTF, {"main"}, &T, &P);
  // Parse the taint configuration
  psr::TaintConfig Config([&]() {
    try {
      return psr::TaintConfig(IR, psr::parseTaintConfig(TaintConfigPath));
    } catch (std::ios_base::failure &IOFailure) {
      llvm::errs() << "Could not parse taint configuration '" << TaintConfigPath
                   << "'!\nContinuing by trying to parse the config from "
                      "the (hopefully) annotated LLVM IR.\n";
      return psr::TaintConfig(IR);
    }
  }());
  std::stringstream Tos;
  Tos << Config;
  llvm::outs() << Tos.str() << '\n';
  // Set up analysis and solver
  psr::IDEExtendedTaintAnalysis TaintAnalysis(&IR, &T, &I, &P, Config);
  psr::IDESolver Solver(TaintAnalysis);
  Solver.solve();
  Solver.dumpResults();
  // Retrieve all usages of data that is depending on the initial seeds. In case
  // of command-line tools, these are data-flow facts that are transitively
  // reachable from the argc and argv parameters of the main function.
  auto SolverRes = Solver.getSolverResults();
  auto AllResEntries = SolverRes.getAllResultEntries();
  // Container to store potential neck candidates that have been identified by
  // the taint analysis.
  std::vector<llvm::Instruction *> NeckCandidates;
  // Iterate all instructions and check if any of those
  // instructions uses a tainted value. These tainted instruction operands are
  // neck candidates.
  for (auto &Res : AllResEntries) {
    const llvm::Instruction *Inst = Res.getRowKey();
    auto ResAtInst = SolverRes.resultsAt(Inst);
    // Iterate all operands of an instruction an check if one of them is
    // tainted. If so, this instruction is a potential neck candidate.
    for ([[maybe_unused]] const auto &Op : Inst->operands()) {
      //   if (ResAtInst.find(Op) != ResAtInst.end()) {
      // NeckCandidates.push_back(
      // const_cast<llvm::Instruction *>(Inst)); // NOLINT ;-)
      //   }
    }
  }
  return NeckCandidates;
}

} // namespace neckid
