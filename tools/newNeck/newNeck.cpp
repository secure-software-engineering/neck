// #include "phasar/PhasarLLVM/AnalysisStrategy/WholeProgramAnalysis.h"
#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedCFG.h"
#include "phasar/PhasarLLVM/DataFlow/IfdsIde/Problems/IDELinearConstantAnalysis.h"
// #include
// "phasar/PhasarLLVM/DataFlow/IfdsIde/Problems/IFDSLinearConstantAnalysis.h"
#include "phasar/DataFlow/IfdsIde/Solver/IDESolver.h"
#include "phasar/DataFlow/IfdsIde/Solver/IFDSSolver.h"
#include "phasar/PhasarLLVM/Pointer/LLVMAliasSet.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"

#include "NeckID/NeckID/TaintAnalysis.h"
#include "llvm/IRReader/IRReader.h"

#include <algorithm>
#include <fstream>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Dominators.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instructions.h>
#include <llvm/Support/SourceMgr.h>
#include <map>
#include <memory>
#include <set>
#include <stack>
#include <vector>

using namespace psr;
using namespace llvm;
using namespace neckid;

std::vector<llvm::Loop *> getAllLoopsInMain(llvm::Function *mainFunc,
                                            LoopInfo &LI) {
  std::vector<llvm::Loop *> loops;
  for (llvm::Loop *loop : LI) {
    loops.push_back(loop);
  }

  return loops;
}

// A simple function to compute loop density. This example just counts the
// number of dependent assignments.
double computeLoopDensity(Loop *L) {
  int numberOfBasicBlocks = 0;
  int numberOfEdges = 0;
  llvm::outs() << "HEADER IS: " << L->getHeader()->getName() << "\n";
  for (BasicBlock *BB : L->blocks()) {
    numberOfBasicBlocks++;

    for (succ_iterator SI = succ_begin(BB), E = succ_end(BB); SI != E; ++SI) {
      if (L->contains(*SI)) {
        numberOfEdges++;
      }
    }
  }

  if (numberOfBasicBlocks == 0) {
    return 0.0; // Avoid division by zero
  }
  llvm::outs() << "DENSITY: " << (double)numberOfEdges / numberOfBasicBlocks
               << "\n";
  return (double)numberOfEdges / numberOfBasicBlocks;
}

bool isPartOfIfBlock(const BasicBlock *BB) {
  return BB->getTerminator()->getNumSuccessors() == 2 &&
         pred_begin(BB) != pred_end(BB);
}

void dfsArticulation(const BasicBlock *u, LoopInfo &LI,
                     std::map<const BasicBlock *, bool> &visited,
                     std::map<const BasicBlock *, int> &disc,
                     std::map<const BasicBlock *, int> &low,
                     std::map<const BasicBlock *, const BasicBlock *> &parent,
                     std::set<const BasicBlock *> &articulationPoints,
                     int &time) {
  visited[u] = true;
  disc[u] = low[u] = time++;

  int children = 0;
  for (auto i = succ_begin(u), e = succ_end(u); i != e; ++i) {
    const BasicBlock *successor = *i;
    if (!visited[successor]) {
      children++;
      parent[successor] = u;
      dfsArticulation(successor, LI, visited, disc, low, parent,
                      articulationPoints, time);

      low[u] = std::min(low[u], low[successor]);

      // Check if u is an articulation point
      if (parent[u] && low[successor] >= disc[u] && !LI.getLoopFor(u) &&
          !isPartOfIfBlock(u)) {
        articulationPoints.insert(u);
      }
    } else if (parent[u] != successor) {
      low[u] = std::min(low[u], disc[successor]);
    }
  }

  // If u is the root of DFS and has two or more children, it's an articulation
  // point
  if (!parent[u] && children > 1 && !LI.getLoopFor(u) && !isPartOfIfBlock(u)) {
    articulationPoints.insert(u);
  }
}

std::set<const BasicBlock *> computeArticulationPoints(Function *F,
                                                       LoopInfo &LI) {
  // llvm::DominatorTree DT(*F);
  // llvm::LoopInfo LI(DT);

  std::map<const BasicBlock *, bool> visited;
  std::map<const BasicBlock *, int> disc;
  std::map<const BasicBlock *, int> low;
  std::map<const BasicBlock *, const BasicBlock *> parent;
  std::set<const BasicBlock *> articulationPoints;
  int time = 0;

  for (auto &BB : *F) {
    if (!visited[&BB]) {
      dfsArticulation(&BB, LI, visited, disc, low, parent, articulationPoints,
                      time);
    }
  }

  // Remove any articulation points that are inside loops or conditional blocks
  for (auto &loop : LI) {
    for (auto *BB : loop->blocks()) {
      articulationPoints.erase(BB);
    }
  }

  return articulationPoints;
}

llvm::BasicBlock *getSuccessorOutsideLoopAndIf(llvm::Loop *L,
                                               llvm::LoopInfo &LI,
                                               llvm::DominatorTree &DT) {
  llvm::SmallVector<llvm::BasicBlock *, 8> ExitBlocks;
  L->getExitBlocks(ExitBlocks);

  for (BasicBlock *ExitBB : ExitBlocks) {
    for (BasicBlock *SuccBB : successors(ExitBB)) {
      // Check if the successor is outside the current loop L
      if (LI.getLoopFor(SuccBB) != L) {
        return SuccBB; // This successor is the immediate successor after the
                       // loop exit
      }
    }
  }

  return nullptr; // No suitable successor found
}

std::vector<llvm::BasicBlock *> getLoopExits(llvm::Loop *L) {
  llvm::SmallVector<llvm::BasicBlock *, 8> ExitBlocks;
  L->getExitBlocks(ExitBlocks);
  return std::vector<llvm::BasicBlock *>(ExitBlocks.begin(), ExitBlocks.end());
}

llvm::BasicBlock *getImmediatePredecessorOrSuccessorInArtPoints(
    llvm::BasicBlock *BB, const std::set<const llvm::BasicBlock *> &artPoints) {
  // Check predecessors
  for (llvm::BasicBlock *Pred : llvm::predecessors(BB)) {
    if (artPoints.find(Pred) != artPoints.end()) {
      return Pred;
    }
  }

  // Check successors
  for (llvm::BasicBlock *Succ : llvm::successors(BB)) {
    if (artPoints.find(Succ) != artPoints.end()) {
      return Succ;
    }
  }

  return nullptr; // No immediate predecessor or successor found in artPoints
}

int main(int argc, const char **argv) {
  llvm::LoopInfo loopInfo;
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M = llvm::parseIRFile(argv[1], Diag, CTX);
  // Module *M;
  // Function *mainFunc = M->getFunction("main");
  LLVMProjectIRDB DB({argv[1]});
  llvm::Function *mainFunc = DB.getFunctionDefinition("main");
  llvm::DominatorTree DT(*mainFunc);
  llvm::LoopInfo LI(DT);
  if (auto F = DB.getFunctionDefinition("main")) {
    LLVMTypeHierarchy H(DB);
    LLVMAliasSet P(&DB, false);
    LLVMBasedICFG I(&DB, CallGraphAnalysisType::CHA, {"main"}, &H, &P,
                    Soundness::Soundy, /*IncludeGlobals*/ false);
    // std::ofstream outFile("icfg.dot");
    // I.printAsDot(outFile);
    // outFile.close();
    // auto Ret = I.exportICFGAsJson();
    // llvm::errs() << "Result: " << Ret.dump(4) << '\n';

    // auto JsonConfig = psr::parseTaintConfig(argv[2]);
    // JsonConfig
    neckid::TaintAnalysis TA = TaintAnalysis(*M, argv[2]);
    auto taint = TA.getLLVMBasedICFG().exportICFGAsJson();
    std::ofstream outFileTA("icfg_taint.dot");
    // TA.getLLVMBasedICFG().printAsDot(outFileTA);
    outFileTA.close();
    // llvm::errs() << "Result: " << taint.dump(4) << '\n';
    // std::cout << "Testing IDE:\n";
    // WholeProgramAnalysis<IDESolver_P<IDELinearConstantAnalysis>,
    //                      IDELinearConstantAnalysis>
    //     WPA(DB, {"main"}, &P, &I, &H);
    // WPA.solve();
    // WPA.dumpResults();

    // std::unordered_set<const BasicBlock *> articulationPoints =
    //     computeArticulationPoints_ICFG(mainFunc, I);

    /*
    std::set<const BasicBlock *> artPoints =
        computeArticulationPoints(mainFunc, LI);

    for (const llvm::BasicBlock *BB : artPoints) {
      if (BB->hasName()) {
        llvm::errs() << BB->getName() << "\n";
      } else {
        BB->printAsOperand(llvm::errs(), false);
        llvm::errs() << "\n";
      }
    }

    llvm::outs() << "****COMPUTED articulation points" << artPoints.size()
                 << "\n";

    // Find config parsing loops
    auto configParsingLoops = getAllLoopsInMain(mainFunc, LI);

    llvm::outs() << "Number of loops: " << configParsingLoops.size() << "\n";

    std::sort(configParsingLoops.begin(), configParsingLoops.end(),
              [](llvm::Loop *a, llvm::Loop *b) -> bool {
                return computeLoopDensity(a) > computeLoopDensity(b);
              });

    if (!configParsingLoops.empty()) {
      llvm::Loop *highestDensityLoop = configParsingLoops[0];
      if (highestDensityLoop) {
        llvm::BasicBlock *loopHeader = highestDensityLoop->getHeader();
        BasicBlock *succBB =
            getSuccessorOutsideLoopAndIf(highestDensityLoop, LI, DT);
        if (succBB) {
          // You now have access to the successor BasicBlock you're interested
          // in. Do whatever you want with it.
          // llvm::errs() << "Found successor BB: " << *succBB << "\n";
          llvm::BasicBlock *matchBB =
              getImmediatePredecessorOrSuccessorInArtPoints(matchBB, artPoints);
          if (matchBB) {
            // matchBB is the immediate predecessor or successor of BB that is
            // in artPoints
            llvm::errs() << "Found matching pre/secc BB: " << *matchBB << "\n";
          }
        } else {
          llvm::errs() << "No suitable successor found.\n";
        }
        // for (auto exit : getLoopExits(highestDensityLoop)) {
        //   llvm::outs() << *exit;
        // }
      }
    }*/
  }
  // else {
  //   std::cerr << "error: file does not contain a 'main' function!\n";
  // }

  return 0;
}
