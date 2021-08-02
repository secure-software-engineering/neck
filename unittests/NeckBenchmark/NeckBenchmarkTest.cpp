#include "gtest/gtest.h"

#include <string>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

#include "TestConfig.h"

#include "NeckID/NeckID/NeckID.h"

TEST(NeckIDTest, HandleBasic_01) {
  // Setup
  std::string File =
      neckid::unittest::PathToLLTestFiles + "basic/example_01_cpp_dbg.ll";
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
  // TODO specify
  const llvm::BasicBlock *GroundTruth = nullptr;
  // Unit test
  // TODO fixme
  EXPECT_EQ(Neck, GroundTruth);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
