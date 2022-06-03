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
const std::string PathToCustomScenarios =
    neckid::NeckIDConfig::neckidDirectory() +
    "build/test/llvm_test_code/neck-scenarios/";
const std::string PathToCmdToolConfigFile = "config/cmd-tool-config.json";
const std::string NeckIDFunctionName = "klee_dump_memory";
} // anonymous namespace

// ============== TEST FIXTURE ============== //
class CustomScenariosTest : public ::testing::Test {
protected:
  const std::string PathToLlFiles = PathToCustomScenarios;
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M;

  void SetUp() override {}

  void TearDown() override {}

  llvm::BasicBlock *identifyNeck(const std::string &LlvmFilePath,
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
    // Neck identification
    neckid::NeckAnalysis NA(*M, PathToCmdToolConfigFile,
                            true /* use function-local points-to info */);
    return NA.getNeck();
  }

  void checkResult(llvm::BasicBlock *IdentifiedNeck) {
    ASSERT_NE(IdentifiedNeck, nullptr);
    // Get ground truth and compare with the computed result
    auto *NeckID = M->getFunction(NeckIDFunctionName);
    assert(NeckID && "Expect to find neck identification function!");
    assert(NeckID->hasOneUse() &&
           "Expect one and only one use of the neck-id function!");
    llvm::CallBase *NeckIDCallSite = nullptr;
    for (auto *User : NeckID->users()) {
      // get the call to the special neck id function
      if ((NeckIDCallSite = llvm::dyn_cast<llvm::CallBase>(User))) {
        break;
      }
    }
    assert(NeckIDCallSite &&
           "Expected to find a call to the neck-id function!");
    // get the callsites respective basic block
    const llvm::BasicBlock *GroundTruth = NeckIDCallSite->getParent();
    // Unit test
    llvm::outs() << "identified neck:\n";
    IdentifiedNeck->print(llvm::outs());
    llvm::outs() << "\n------------------ ground truth:\n";
    GroundTruth->print(llvm::outs());
    EXPECT_EQ(IdentifiedNeck, GroundTruth); // NOLINT
  }

}; // Test Fixture

TEST_F(CustomScenariosTest, HandleNotInMainProgram) { // NOLINT
  // Setup and check results
  const std::string File = "not-in-main_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CustomScenariosTest, HandleCycleFromNecksSuccessorsProgram) { // NOLINT
  // Setup and check results
  const std::string File = "cycle-from-neck-succ_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CustomScenariosTest, HandleNestedLoopProgram) { // NOLINT
  // Setup and check results
  const std::string File = "nested-inner-loop_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CustomScenariosTest, HandleEarlyExitFromCaseProgram) { // NOLINT
  // Setup and check results
  const std::string File = "early-exit-from-case_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CustomScenariosTest, HandleIterativeCaseProgram) { // NOLINT
  // Setup and check results
  const std::string File = "iterative-func-before-neck_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CustomScenariosTest, HandleRecursiveCaseProgram) { // NOLINT
  // Setup and check results
  const std::string File = "recursive-func-before-neck_c.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}


// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
