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

// ============== TEST FIXTURE ============== //
class CoreutilsTest : public ::testing::Test {
protected:
  const std::string PathToLlFiles = PathToCoreutils + "src/";
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
    if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
      llvm::errs() << "error: invalid module\n";
    }
    if (BrokenDbgInfo) {
      llvm::errs() << "caution: debug info is broken\n";
    }
    // Neck identification
    auto *F = M->getFunction("main");
    neckid::NeckAnalysis NA(*F);
    return NA.getNeck();
  }

  void checkResult(llvm::BasicBlock *IdentifiedNeck) {
    // Get ground truth and compare with the computed result
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

TEST_F(CoreutilsTest, HandleWcProgram) { // NOLINT
  // Setup and check results
  const std::string File = "wc.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleDateProgram) { // NOLINT
  // Setup and check results
  const std::string File = "date.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
