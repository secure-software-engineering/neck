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
    assert(M && "Could not parse module!");
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

TEST_F(CoreutilsTest, HandleBasenameProgram) { // NOLINT
  // Setup and check results
  const std::string File = "basename.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleBasencProgram) { // NOLINT
  // Setup and check results
  const std::string File = "basenc.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleCommProgram) { // NOLINT
  // Setup and check results
  const std::string File = "comm.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleDateProgram) { // NOLINT
  // Setup and check results
  const std::string File = "date.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleDuProgram) { // NOLINT
  // Setup and check results
  const std::string File = "du.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleEchoProgram) { // NOLINT
  // Setup and check results
  const std::string File = "echo.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleFmtProgram) { // NOLINT
  // Setup and check results
  const std::string File = "fmt.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleHeadProgram) { // NOLINT
  // Setup and check results
  const std::string File = "head.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleFoldProgram) { // NOLINT
  // Setup and check results
  const std::string File = "fold.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleIdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "id.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleKillProgram) { // NOLINT
  // Setup and check results
  const std::string File = "kill.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleRealpathProgram) { // NOLINT
  // Setup and check results
  const std::string File = "realpath.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleSortProgram) { // NOLINT
  // Setup and check results
  const std::string File = "sort.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleUniqProgram) { // NOLINT
  // Setup and check results
  const std::string File = "uniq.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleWcProgram) { // NOLINT
  // Setup and check results
  const std::string File = "wc.ll";
  auto *Neck = identifyNeck(File);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleChownProgram) { // NOLINT
  // Setup and check results
  const std::string File = "chown.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

TEST_F(CoreutilsTest, HandleRmProgram) { // NOLINT
  // Setup and check results
  const std::string File = "rm.ll";
  auto *Neck = identifyNeck(File);
  checkResult(Neck);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
