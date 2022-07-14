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
const std::string PathToDataset2 =
    neckid::NeckIDConfig::neckidDirectory() + "external/custom-Dataset2/";
const std::string PathToCmdToolConfigFile = "config/cmd-tool-config.json";
const std::string PathToDnsproxyCnfFileConfigFile =
    "config/dnsproxy-cnf-file-tool-config.json";
const std::string NeckIDFunctionName = "klee_dump_memory";
} // anonymous namespace

// ============== TEST FIXTURE ============== //
class Dataset2Test : public ::testing::Test {
protected:
  const std::string PathToLlFiles = PathToDataset2;
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M;

  void SetUp() override {}

  void TearDown() override {}

  llvm::BasicBlock *identifyNeck(const std::string &LlvmFilePath,
                                 const std::string &TaintAnalysisConfigPath,
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
    neckid::NeckAnalysis NA(*M, TaintAnalysisConfigPath, Debug,
                            true /* use function-local points-to info */);
    if (Debug) {
      auto *Main = M->getFunction("main");
      assert(Main && "Expected to find a 'main' function!");
      neckid::NeckAnalysisCFG G(NA, *Main);
      G.viewCFG();
    }
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
    llvm::outs() << "\n===> identified neck:\n"
                 << *IdentifiedNeck << "\n===> ground truth:\n"
                 << *GroundTruth << '\n';
    EXPECT_EQ(IdentifiedNeck, GroundTruth); // NOLINT
  }

}; // Test Fixture

TEST_F(Dataset2Test, HandleDnsproxyProgram) { // NOLINT
  // Setup and check results
  const std::string File = "dnsproxy.ll";
  auto *Neck = identifyNeck(File, PathToDnsproxyCnfFileConfigFile, true);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(Dataset2Test, HandleObjdumpProgram) { // NOLINT
  // Setup and check results
  const std::string File = "objdump.ll";
  auto *Neck = identifyNeck(File, PathToCmdToolConfigFile);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(Dataset2Test, HandleReadelfProgram) { // NOLINT
  // Setup and check results
  const std::string File = "readelf.ll";
  auto *Neck = identifyNeck(File, PathToCmdToolConfigFile);
  if (!Neck) {
    llvm::outs() << "Neck is null!\n";
  } else {
    Neck->print(llvm::outs());
  }
  checkResult(Neck);
}

TEST_F(Dataset2Test, HandleTcpdumpProgram) { // NOLINT
  // Setup and check results
  const std::string File = "tcpdump.ll";
  auto *Neck = identifyNeck(File, PathToCmdToolConfigFile);
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
