#include <filesystem>
#include <iostream>
#include <set>

#include "llvm/IR/Instruction.h"

#include "phasar/DB/ProjectIRDB.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/IDEExtendedTaintAnalysis.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Solver/IDESolver.h"
#include "phasar/PhasarLLVM/Pointer/LLVMPointsToSet.h"
#include "phasar/PhasarLLVM/TaintConfig/TaintConfig.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"
#include "phasar/Utils/Logger.h"

int main(int argc, const char **argv) {
  if (argc < 2 || !std::filesystem::exists(argv[1]) ||
      std::filesystem::is_directory(argv[1])) {
    std::cout << "constantconv\n"
                 "A small test program used to assess the suitability of "
                 "taint analysis for constant conversion\n\n"
                 "Usage: constantconv <LLVM IR file>\nSources, sinks, etc. "
                 "are hard-coded ;-)\n";
    return 1;
  }
  psr::initializeLogger(false);
  psr::ProjectIRDB DB({argv[1]});
  const auto *Main = DB.getFunctionDefinition("main");
  if (!Main) {
    std::cout
        << "Constant conversion requires PhASAR's built-in support for global "
           "variable support. This feature is currently only implemented for "
           "programs that comprise a 'main' function.\nAbort!\n";
    return 1;
  }
  psr::LLVMTypeHierarchy T(DB);
  psr::LLVMPointsToSet P(DB);
  std::set<std::string> EntryPoints = {"main"};
  psr::LLVMBasedICFG I(DB, psr::CallGraphAnalysisType::OTF, EntryPoints, &T, &P,
                       psr::Soundness::Sound, true /* include globals */);
  const auto *Euid =
      DB.getWPAModule()->getGlobalVariable("euid", true /* allow internal */);
  if (!Euid) {
    std::cout << "Expected to find the 'euid' (global) variable within the "
                 "'id' program.\nAbort!\n";
    return 1;
  }
  // Retrieve start points
  std::set<const llvm::Instruction *> StartPoints;
  for (const auto &EntryPoint : EntryPoints) {
    const auto *EntryPointFun = DB.getFunctionDefinition(EntryPoint);
    if (EntryPointFun) {
      StartPoints.insert(&EntryPointFun->front().front());
    }
  }
  llvm::outs() << "start points:\n";
  for (const auto *StartPoint : StartPoints) {
    llvm::outs() << *StartPoint << '\n';
  }
  // Set up taint configuration to generate the global variable of interest at
  // each start point of the analysis
  psr::TaintConfig Config(DB);
  auto EuidSourceCB = [&StartPoints, Euid](const llvm::Instruction *I) {
    std::set<const llvm::Value *> SourceValues;
    if (StartPoints.find(I) != StartPoints.end()) {
      llvm::outs() << "insert start value " << *Euid << " at " << *I << '\n';
      SourceValues.insert(Euid);
    }
    return SourceValues;
  };
  Config.registerSourceCallBack(EuidSourceCB);
  std::cout << "Using the following taint configuration:\n";
  std::cout << Config << '\n';
  psr::IDEExtendedTaintAnalysis<2, false> TaintAnalysis(&DB, &T, &I, &P, Config,
                                                        EntryPoints);
  psr::IDESolver Solver(TaintAnalysis);
  Solver.solve();
  Solver.dumpResults();
  return 0;
}
