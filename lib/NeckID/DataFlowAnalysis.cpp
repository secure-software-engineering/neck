/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <llvm/IR/Instructions.h>
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
  llvm::outs() << "Building project IR database ...\n";
  psr::ProjectIRDB IR(Modules, psr::IRDBOptions::WPA);
  llvm::outs() << "Building type hierarchy ...\n";
  psr::LLVMTypeHierarchy T(IR);
  llvm::outs() << "Building points-to sets ...\n";
  psr::LLVMPointsToSet P(IR);
  llvm::outs() << "Building inter-procedural control-flow graph ...\n";
  psr::LLVMBasedICFG I(IR, psr::CallGraphAnalysisType::CHA, {"main"}, &T, &P);
  // Parse the taint configuration
  llvm::outs() << "Conducting data-flow analysis ...\n";
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
  std::stringstream Ss;
  Ss << Config;
  llvm::outs() << Ss.str() << '\n';
  // Set up analysis and solver
  llvm::outs() << "Setting up data-flow analysis ...\n";
  psr::IDEExtendedTaintAnalysis TaintAnalysis(&IR, &T, &I, &P, Config);
  psr::IDESolver Solver(TaintAnalysis);
  llvm::outs() << "Solving data-flow analysis ...\n";
  Solver.solve();
  llvm::outs() << "Data-flow analysis has been solved.\n";
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
      for (auto &[Fact, Value] : ResAtInst) {
        llvm::Value *PotentialGepPointerOp = nullptr;
        if (auto *Gep = llvm::dyn_cast<llvm::GetElementPtrInst>(Op)) {
          PotentialGepPointerOp = Gep->getPointerOperand();
        }
        if (Op == Fact->base() ||
            (PotentialGepPointerOp && PotentialGepPointerOp == Fact->base())) {
          NeckCandidates.push_back(
              const_cast<llvm::Instruction *>(Inst)); // NOLINT ;-)
        }
      }
    }
  }
  return NeckCandidates;
}

} // namespace neckid
