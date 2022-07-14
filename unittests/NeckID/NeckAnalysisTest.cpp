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

#include "NeckID/NeckID/NeckAnalysis.h"
#include "NeckID/NeckID/NeckAnalysisCFG.h"

namespace {
const std::string PathToTestSubjects =
    neckid::NeckIDConfig::neckidDirectory() + "build/test/llvm_test_code/";
const std::string PathToCmdToolConfigFile = "config/cmd-tool-config.json";
const std::string NeckIDFunctionName = "_neck_identification_mark_as_neck_";
} // anonymous namespace

// ============== TEST FIXTURE ============== //
class NeckIDTest : public ::testing::Test {
protected:
  const std::string PathToLlFiles = PathToTestSubjects;
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M;
  std::unique_ptr<neckid::NeckAnalysis> NA;

  void SetUp() override {}

  void TearDown() override {}

  void parseFile(const std::string &LlvmFilePath,
                 [[maybe_unused]] bool Debug = false) {
    // Parsing
    bool BrokenDbgInfo = false;
    M = llvm::parseIRFile(PathToLlFiles + LlvmFilePath, Diag, CTX);
    assert(M && "Could not parse module!");
    if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
      llvm::errs() << "error: invalid module\n";
    }
    if (BrokenDbgInfo) {
      llvm::errs() << "caution: debug info is broken\n";
    }
    NA = std::make_unique<neckid::NeckAnalysis>(*M, PathToCmdToolConfigFile);
  }

  bool checkReachability(llvm::BasicBlock *Src, llvm::BasicBlock *Dst,
                         bool InterProcSearch) {
    EXPECT_TRUE(Src != nullptr);
    EXPECT_TRUE(Dst != nullptr);
    return NA->isReachable(Src, Dst, InterProcSearch);
  }

}; // Test Fixture

TEST_F(NeckIDTest, Call_01_Program) { // NOLINT
  // Setup and check results
  const std::string File = "calls/call_01_cpp_dbg.ll";
  parseFile(File);
  auto *Src = &M->getFunction("main")->front();
  auto *Dst = &M->getFunction("_Z3fooi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);
}

TEST_F(NeckIDTest, Call_02_Program) { // NOLINT
  // Setup and check results
  const std::string File = "calls/call_02_cpp_dbg.ll";
  parseFile(File);
  auto *Src = &M->getFunction("main")->front();
  auto *Dst = &M->getFunction("_Z3barii")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3barii")->front();
  Dst = &M->getFunction("_Z3fooi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), false);

  Src = &M->getFunction("_Z3barii")->front();
  Dst = &M->getFunction("main")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), false);
}

TEST_F(NeckIDTest, Call_03_Program) { // NOLINT
  // Setup and check results
  const std::string File = "calls/call_03_cpp_dbg.ll";
  parseFile(File);
  auto *Src = &M->getFunction("main")->front();
  auto *Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3fooi")->front();
  Dst = &M->getFunction("_Z3barii")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3barii")->front();
  Dst = &M->getFunction("_Z3fooi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), false);
}

TEST_F(NeckIDTest, Call_04_Program) { // NOLINT
  // Setup and check results
  const std::string File = "calls/call_04_cpp_dbg.ll";
  parseFile(File);
  auto *Src = &M->getFunction("main")->front();
  auto *Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("main")->front();
  Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3barii")->front();
  Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3fooi")->front();
  Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);
}

TEST_F(NeckIDTest, Call_05_Program) { // NOLINT
  // Setup and check results
  const std::string File = "calls/call_05_cpp_dbg.ll";
  parseFile(File);
  auto *Src = &M->getFunction("main")->front();
  auto *Dst = &M->getFunction("_Z3fooi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("main")->front();
  Dst = &M->getFunction("_Z3fooi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("main")->front();
  Dst = &M->getFunction("_Z9factoriali")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("main")->front();
  Dst = &M->getFunction("_Z3bazi")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), true);

  Src = &M->getFunction("_Z3bazi")->front();
  Dst = &M->getFunction("_Z3barii")->front();
  EXPECT_EQ(checkReachability(Src, Dst, /* InterProcSearch */ true), false);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
