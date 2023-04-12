#include <iostream>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include "llvm/Support/raw_ostream.h"

#include <string>
#include <vector>
#include <fstream>

#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

using namespace llvm;

int count_pointers(Module &M) {
  int pointerCount = 0;

  for (auto &GV : M.getGlobalList()) {
    if (GV.getType()->isPointerTy()) {
      pointerCount++;
    }
  }

  for (auto &F : M) {
    for (auto &arg : F.args()) {
      if (arg.getType()->isPointerTy()) {
        pointerCount++;
      }
    }
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (auto *pInst = dyn_cast<AllocaInst>(&I)) {
          if (pInst->getAllocatedType()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<GetElementPtrInst>(&I)) {
          if (pInst->getResultElementType()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<BitCastInst>(&I)) {
          if (pInst->getDestTy()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<StoreInst>(&I)) {
          if (pInst->getValueOperand()->getType()->isPointerTy() ||
              pInst->getPointerOperand()->getType()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<LoadInst>(&I)) {
          if (pInst->getType()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<GlobalVariable>(&I)) {
          if (pInst->getType()->isPointerTy()) {
            errs() << "Global Variable: " << *pInst << "\n";
            pointerCount++;
          }
        } else if (auto *pInst = dyn_cast<Argument>(&I)) {
          if (pInst->getType()->isPointerTy()) {
            pointerCount++;
          }
        } else if (auto *call = dyn_cast<CallInst>(&I)) {
        if (call->getType()->isPointerTy()) {
          pointerCount++;
        }
      } else if (auto *ret = dyn_cast<ReturnInst>(&I)) {
        if (ret->getReturnValue() && ret->getReturnValue()->getType()->isPointerTy()) {
          pointerCount++;
        }
      }
      }
    }
  }

  return pointerCount;
}

int count_allocations(Module &M) {
  int allocationCount = 0;

  for (auto &F : M) {
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (auto *pInst = dyn_cast<AllocaInst>(&I)) {
          allocationCount++;
        }
      }
    }
  }

  return allocationCount;
}

int main(int argc, char *argv[]) {
  std::ofstream outputFile("Count_Results.csv",std::ios::app);
  LLVMContext context;
  SMDiagnostic error;
  std::unique_ptr<Module> module = parseIRFile(argv[1], error, context);

  if (!module) {
    std::cerr << "Failed to parse the input file, quitting...\n";
    error.print(argv[0], errs());
    return EXIT_FAILURE;
  }

  int pointerCount = count_pointers(*module);
  int allocationCount = count_allocations(*module);

  std::cout << "Number of pointers: " << pointerCount << std::endl;
  std::cout << "Number of allocations: " << allocationCount << std::endl;

  outputFile << argv[1] << "," << pointerCount << "," << allocationCount << "\n";
  outputFile.close();

  return EXIT_SUCCESS;
}