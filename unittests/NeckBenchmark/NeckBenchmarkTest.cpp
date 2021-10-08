#include "gtest/gtest.h"

#include <cassert>
#include <string>

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"

#include "TestConfig.h"

#include "NeckID/NeckID/NeckID.h"

namespace {
const std::string NeckIDFunctionName = "_neck_identification_mark_as_neck_";
const std::string NeckIDFunctionNameMangled =
    "_ZL34_neck_identification_mark_as_neck_v";
const std::string PathToCmdToolConfigFile = "config/cmd-tool-config.json";
} // anonymous namespace

// ============== TEST FIXTURE ============== //
class NeckBenchmarkTest : public ::testing::Test {
protected:
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M;

  void SetUp() override {}

  void TearDown() override {}

  llvm::BasicBlock *identifyNeck(const std::string &LlvmFilePath,
                                 [[maybe_unused]] bool Debug = false) {
    // Parsing
    bool BrokenDbgInfo = false;
    M = llvm::parseIRFile(LlvmFilePath, Diag, CTX);
    if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
      llvm::errs() << "error: invalid module\n";
    }
    if (BrokenDbgInfo) {
      llvm::errs() << "caution: debug info is broken\n";
    }
    // Neck identification
    neckid::NeckAnalysis NA(*M, PathToCmdToolConfigFile);
    return NA.getNeck();
  }

  void checkResult(llvm::BasicBlock *IdentifiedNeck,
                   [[maybe_unused]] bool Debug = false) {
    // Get ground truth and compare with the computed result
    auto *NeckID = M->getFunction(NeckIDFunctionName);
    if (!NeckID) {
      NeckID = M->getFunction(NeckIDFunctionNameMangled);
    }
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
    if (Debug) {
      if (GroundTruth->hasName() && GroundTruth->getParent()->hasName()) {
        llvm::outs() << "Ground truth: basic block with label '"
                     << GroundTruth->getName() << "' in function '"
                     << GroundTruth->getParent()->getName() << "'\n";
      } else {
        llvm::outs() << "Ground truth:\n";
        GroundTruth->print(llvm::outs());
        llvm::outs() << '\n';
      }
    }
    // Unit test
    EXPECT_EQ(IdentifiedNeck, GroundTruth); // NOLINT
  }

}; // Test Fixture

// TEST_F(NeckBenchmarkTest, HandleBasic_01) {
//   // Setup and check results
//   const std::string File =
//       neckid::unittest::PathToLLTestFiles + "basic/example_01_cpp_dbg.ll";
//   auto *Neck = identifyNeck(File);
//   checkResult(Neck);
// }

TEST_F(NeckBenchmarkTest, HandleNeckSameLevel) {
  // Setup and check results
  const std::string File = neckid::unittest::PathToLLTestFiles +
                           "neck-level/neck-same-level_c_dbg.ll";
  auto *Neck = identifyNeck(File, true);
  checkResult(Neck, true);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
