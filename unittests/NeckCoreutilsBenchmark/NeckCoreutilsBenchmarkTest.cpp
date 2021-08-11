#include "gtest/gtest.h"

#include <cassert>
#include <string>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

#include "TestConfig.h"

#include "NeckID/NeckID/NeckID.h"

namespace {
const std::string PathToCoreutils =
    neckid::NeckIDConfig::neckidDirectory() + "external/custom-coreutils/";
const std::string NeckIDFunctionName = "_neck_identification_mark_as_neck_";
} // anonymous namespace

// wc program
TEST(CoreutilsTest, HandleWcProgram) {
  // Setup
  std::string File = PathToCoreutils + "src/wc.ll";
  llvm::outs() << "File: '" << File << "'\n";
  // Parsing
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M = llvm::parseIRFile(File, Diag, CTX);
  bool BrokenDbgInfo = false;
  if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
    llvm::errs() << "error: invalid module\n";
  }
  if (BrokenDbgInfo) {
    llvm::errs() << "caution: debug info is broken\n";
  }
  auto *F = M->getFunction("main");
  neckid::NeckAnalysis NA(*F);
  const llvm::BasicBlock *Neck = NA.getNeck();
  // Ground truth
  auto *NeckID = M->getFunction(NeckIDFunctionName);
  assert(NeckID->hasOneUse() &&
         "Expect one and only one use of the neck-id function!");
  llvm::CallBase *NeckIDCallSite = nullptr;
  for (auto *User : NeckID->users()) {
    // get the call to the special neck id function
    if ((NeckIDCallSite = llvm::dyn_cast<llvm::CallBase>(User))) {
      break;
    }
  }
  assert(NeckIDCallSite && "Expected to find a call to the neck-id function!");
  // get the callsites respective basic block
  const llvm::BasicBlock *GroundTruth = NeckIDCallSite->getParent();
  // Unit test
  EXPECT_EQ(Neck, GroundTruth);
}

// TODO for RITHIK, please add tests for the other coreutils programs

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
