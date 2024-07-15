#include <fstream>
#include <iostream>
#include <string>

#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/IR/DebugLoc.h>
#include <llvm/IR/Dominators.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>

int main(int argc, char **argv) {
  if (argc != 2) {
    std::cerr << "Usage: " << argv[0] << " <LLVM IR file>" << std::endl;
    return 1;
  }

  llvm::LLVMContext context;
  llvm::SMDiagnostic error;
  std::unique_ptr<llvm::Module> Mod =
      llvm::parseIRFile(argv[1], error, context);

  if (!Mod) {
    std::cerr << "Error reading IR file" << std::endl;
    return 1;
  }

  double maxDensity = 0.0;
  std::string densestFunctionName;
  std::string densestLoopHeader;
  unsigned lineNum = 0;
  std::string sourceFile;
  double densestLoopEdges = 0;
  double densestLoopNodes = 0;

  for (auto &func : *Mod) {
    // Skip function declarations and intrinsic functions
    if (func.isDeclaration() || func.isIntrinsic()) {
      continue;
    }

    // std::cout << "Processing function: " << func.getName().str() <<
    // std::endl;

    llvm::DominatorTree domTree(func);
    llvm::LoopInfo loopInfo(domTree);

    for (llvm::Loop *loop : loopInfo) {
      double numEdges = 0;
      double numNodes = 0;

      for (llvm::BasicBlock *BB : loop->blocks()) {
        numNodes++;

        if (llvm::BranchInst *BI =
                llvm::dyn_cast<llvm::BranchInst>(BB->getTerminator())) {
          if (BI->isConditional()) {
            numEdges += 2;
          } else {
            numEdges++;
          }
        } else if (llvm::isa<llvm::SwitchInst>(BB->getTerminator())) {
          llvm::SwitchInst *SI =
              llvm::dyn_cast<llvm::SwitchInst>(BB->getTerminator());
          numEdges += SI->getNumCases();
        }

        if (loopInfo.isLoopHeader(BB)) {
          numEdges++;
        }
      }

      double density = numEdges / numNodes;
      if (density > maxDensity) {
        maxDensity = density;
        densestFunctionName = func.getName().str();
        densestLoopEdges = numEdges;
        densestLoopNodes = numNodes;
        if (llvm::BasicBlock *header = loop->getHeader()) {
          densestLoopHeader = header->getName().str();
          if (llvm::DILocation *loc = header->getTerminator()->getDebugLoc()) {
            lineNum = loc->getLine();
            sourceFile = loc->getFilename().str();
          }
        }
      }
    }
  }

  std::ofstream csvOutput("output.csv", std::ios_base::app);
  csvOutput << argv[1] << "," << maxDensity << "," << densestFunctionName << ","
            << densestLoopHeader << "," << sourceFile << "," << lineNum << ","
            << densestLoopEdges << "," << densestLoopNodes << "\n";

  return 0;
}
