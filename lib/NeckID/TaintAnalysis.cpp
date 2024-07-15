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
#include <unordered_set>
#include <vector>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/ADT/StringRef.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DebugLoc.h"

#include "phasar/DataFlow/IfdsIde/IFDSIDESolverConfig.h"
#include "phasar/DataFlow/IfdsIde/Solver/IDESolver.h"
#include "phasar/DataFlow/IfdsIde/Solver/IFDSSolver.h"
#include "phasar/DataFlow/IfdsIde/SolverResults.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/DB/LLVMProjectIRDB.h"
#include "phasar/PhasarLLVM/DataFlow/IfdsIde/Problems/IDEExtendedTaintAnalysis.h"
#include "phasar/PhasarLLVM/DataFlow/IfdsIde/Problems/IFDSTaintAnalysis.h"
#include "phasar/PhasarLLVM/Pointer/LLVMAliasSet.h"
#include "phasar/PhasarLLVM/TaintConfig.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"
#include "phasar/Utils/Logger.h"

#include "NeckID/NeckID/TaintAnalysis.h"

namespace neckid {

TaintAnalysis::TaintAnalysis(llvm::Module &M,
                             const std::string &TaintConfigPath,
                             bool FunctionLocalPTAwoGlobals,
                             bool UseSimplifiedDFA, bool Debug)
    : IR([&]() {
        psr::initializeLogger(false);
        llvm::outs() << "Built project IR database ...\n";
        return psr::LLVMProjectIRDB(&M);
      }()),
      Config([&]() {
        try {
          return psr::LLVMTaintConfig(IR,
                                      psr::parseTaintConfig(TaintConfigPath));
        } catch (std::ios_base::failure &IOFailure) {
          llvm::errs() << "Could not parse taint configuration '"
                       << TaintConfigPath
                       << "'!\nContinuing by trying to parse the config from "
                          "the (hopefully) annotated LLVM IR.\n";
          return psr::LLVMTaintConfig(IR);
        }
      }()),
      T([&]() {
        llvm::outs() << "Built type hierarchy ...\n";
        return psr::LLVMTypeHierarchy(IR);
      }()),
      P([&]() {
        llvm::outs() << "Built points-to sets ...\n";
        return psr::LLVMAliasSet(
            &IR, true,
            psr::AliasAnalysisType::CFLAnders); // FunctionLocalPTAwoGlobals
      }()),
      I([&]() {
        llvm::outs() << "Built inter-procedural control-flow graph ...\n";
        return psr::LLVMBasedICFG(&IR, psr::CallGraphAnalysisType::CHA,
                                  {"main"}, &T, &P);
      }()) {

  // Set up analysis and solver
  llvm::outs() << "Setting up data-flow analysis ...\n";
  psr::IFDSIDESolverConfig SolverConfig(
      psr::SolverConfigOptions::ComputeValues |
      psr::SolverConfigOptions::FollowReturnsPastSeeds);
  if (!UseSimplifiedDFA) {
    psr::IDEExtendedTaintAnalysis<1, false> TaintAnalysis(&IR, &I, &P, Config,
                                                          {"main"});
    TaintAnalysis.setIFDSIDESolverConfig(SolverConfig);

    psr::IDESolver Solver(TaintAnalysis, &I);
    llvm::outs() << "Solving data-flow analysis ...\n";
    Solver.solve();
    llvm::outs() << "Data-flow analysis has been solved.\n";
    // if (Debug) {
    Solver.dumpResults();
    // }
    // Retrieve all usages of data that is depending on the initial seeds. In
    // case of command-line tools, these are data-flow facts that are
    // transitively reachable from the argc and argv parameters of the main
    // function.
    auto SolverRes = Solver.getSolverResults();
    auto AllResEntries = SolverRes.getAllResultEntries();

    // Container to store potential neck candidates that have been identified
    // by the taint analysis. Iterate all instructions and check if any of
    // those instructions uses a tainted value. These tainted instruction
    // operands are neck candidates.
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
          if (Op == Fact->base() || (PotentialGepPointerOp &&
                                     PotentialGepPointerOp == Fact->base())) {
            NeckCandidates.push_back(
                const_cast<llvm::Instruction *>(Inst)); // NOLINT ;-)
          }
        }
      }
    }
    std::set<llvm::Instruction *> NeckCandidatesSet(NeckCandidates.begin(),
                                                    NeckCandidates.end());
    for (auto I : NeckCandidatesSet) {
      llvm::outs() << *I << "\n";
      auto Loc = I->getDebugLoc(); // Corrected: using auto without pointer
      if (Loc) {
        unsigned Line = Loc.getLine();
        llvm::outs() << "\tLine: " << Line << "\n";
        llvm::outs() << "\tFunc: " << I->getFunction()->getName() << "\n";
      }
    }
  } else {
    // TODO avoid redundancy
    // psr::IFDSTaintAnalysis TaintAnalysis(&IR, &T, &I, &P, Config, {});
    psr::IFDSTaintAnalysis TaintAnalysis(&IR, &P, &Config, {"main"});
    TaintAnalysis.setIFDSIDESolverConfig(SolverConfig);

    psr::IFDSSolver Solver(TaintAnalysis, &I);
    llvm::outs() << "Solving simplified data-flow analysis ...\n";
    Solver.solve();
    llvm::outs() << "Data-flow analysis has been solved.\n";
    // if (Debug) {
    Solver.dumpResults();
    // }
    // Retrieve all usages of data that is depending on the initial seeds.
    // In case of command-line tools, these are data-flow facts that are
    // transitively reachable from the argc and argv parameters of the main
    // function.
    auto SolverRes = Solver.getSolverResults();
    auto AllResEntries = SolverRes.getAllResultEntries();
    // Container to store potential neck candidates that have been
    // identified by the taint analysis. Iterate all instructions and check
    // if any of those instructions uses a tainted value. These tainted
    // instruction operands are neck candidates.
    for (auto &Res : AllResEntries) {
      const llvm::Instruction *Inst = Res.getRowKey();
      auto ResAtInst = SolverRes.resultsAt(Inst);
      // Iterate all operands of an instruction an check if one of them is
      // tainted. If so, this instruction is a potential neck candidate.
      for ([[maybe_unused]] const auto &Op : Inst->operands()) {
        for (auto &[Fact, Value] : ResAtInst) {
          if (Op == Fact) {
            NeckCandidates.push_back(
                const_cast<llvm::Instruction *>(Inst)); // NOLINT ;-)
            if (llvm::isa<llvm::CmpInst>(Inst) ||
                llvm::isa<llvm::BranchInst>(Inst) ||
                llvm::isa<llvm::PHINode>(Inst)) {

              UserBranchAndCompInstructions.insert(
                  const_cast<llvm::BasicBlock *>(Inst->getParent())); // NOLINT
            }
          }
        }
      }
      std::set<llvm::Instruction *> NeckCandidatesSet(NeckCandidates.begin(),
                                                      NeckCandidates.end());
      for (auto I : NeckCandidatesSet) {
        llvm::outs() << *I << "\n";
        auto Loc = I->getDebugLoc(); // Corrected: using auto without pointer
        if (Loc) {
          unsigned Line = Loc.getLine();
          llvm::outs() << "\tLine: " << Line << "\n";
          llvm::outs() << "\tFunc: " << I->getFunction()->getName() << "\n";
        }
      }
    }
  }
}

std::vector<llvm::Instruction *> TaintAnalysis::getNeckCandidates() {
  return NeckCandidates;
}

std::unordered_set<llvm::BasicBlock *>
TaintAnalysis::getUserBranchAndCompInstructions() {
  return UserBranchAndCompInstructions;
}

psr::LLVMBasedICFG &TaintAnalysis::getLLVMBasedICFG() { return I; }

} // namespace neckid
