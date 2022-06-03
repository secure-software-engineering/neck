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
const std::string PathToSlashDataset =
    neckid::NeckIDConfig::neckidDirectory() + "external/slash-dataset/";
const std::string PathToCmdToolConfigFile = "config/cmd-tool-config.json";
const std::string NeckIDFunctionName = "_neck_identification_mark_as_neck_";
const std::string KleeIDFunctionName = "klee_dump_memory";
} // anonymous namespace

// ============== TEST FIXTURE ============== //
class SlashTest : public ::testing::Test {
protected:
  const std::string PathToLlFiles = PathToSlashDataset;
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M;

  void SetUp() override {}

  void TearDown() override {}

  llvm::BasicBlock *identifyNeck(const std::string &LlvmFilePath,
                                 bool FunctionLocalPTAwoGlobals,
                                 bool UseSimplifiedDFA, bool Debug = false) {
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
                            FunctionLocalPTAwoGlobals, UseSimplifiedDFA, Debug);
    if (Debug) {
      auto *Main = M->getFunction("main");
      assert(Main && "Expected to find a 'main' function!");
      neckid::NeckAnalysisCFG G(NA, *Main);
      G.viewCFG();
    }
    return NA.getNeck();
  }

  const llvm::CallBase *retrieveIDFunctionCall(const std::string &FunName) {
    auto *NeckID = M->getFunction(FunName);
    if (!NeckID) {
      return nullptr;
    }
    EXPECT_TRUE(NeckID->hasOneUse())
        << "Expect one and only one use of the id marker function!";
    llvm::CallBase *NeckIDCallSite = nullptr;
    for (auto *User : NeckID->users()) {
      // get the call to the special neck id function
      if ((NeckIDCallSite = llvm::dyn_cast<llvm::CallBase>(User))) {
        return NeckIDCallSite;
      }
    }
    return nullptr;
  }

  void checkResult(llvm::BasicBlock *IdentifiedNeck) {
    ASSERT_NE(IdentifiedNeck, nullptr);
    // Get ground truth and compare with the computed result
    const llvm::CallBase *NeckIDCallSite = nullptr;
    NeckIDCallSite = retrieveIDFunctionCall(NeckIDFunctionName);
    if (!NeckIDCallSite) {
      NeckIDCallSite = retrieveIDFunctionCall(KleeIDFunctionName);
    }
    ASSERT_NE(NeckIDCallSite, nullptr)
        << "Expect to find id marker function call!";
    // Get the callsites respective basic block
    const llvm::BasicBlock *GroundTruth = NeckIDCallSite->getParent();
    // Unit test
    llvm::outs() << "\n===> identified neck:\n"
                 << *IdentifiedNeck << "\n===> ground truth:\n"
                 << *GroundTruth << '\n';
    EXPECT_EQ(IdentifiedNeck, GroundTruth); // NOLINT
  }

}; // Test Fixture

TEST_F(SlashTest, HandleCurlProgram) { // NOLINT
  // Setup and check results
  const std::string File = "curl.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleDateProgram) { // NOLINT
  // Setup and check results
  const std::string File = "date.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleDiffProgram) { // NOLINT
  // Setup and check results
  const std::string File = "diff.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleDnsproxyProgram) { // NOLINT
  // Setup and check results
  const std::string File = "dnsproxy.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  // FIXME: test fails due to exploded points-to set
  checkResult(Neck);
}

TEST_F(SlashTest, HandleDuProgram) { // NOLINT
  // Setup and check results
  const std::string File = "du.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleEchoProgram) { // NOLINT
  // Setup and check results
  const std::string File = "echo.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleGzipProgram) { // NOLINT
  // Setup and check results
  const std::string File = "gzip.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleHttpdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "httpd.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleIdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "id.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleKillProgram) { // NOLINT
  // Setup and check results
  const std::string File = "kill.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleKnockProgram) { // NOLINT
  // Setup and check results
  const std::string File = "knock.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleKnockdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "knockd.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleLighttpdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "lighttpd.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleMinihttpdProgram) { // NOLINT
  // Setup and check results
  const std::string File = "mini_httpd.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleNamedProgram) { // NOLINT
  // Setup and check results
  const std::string File = "named.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleNginxProgram) { // NOLINT
  // Setup and check results
  const std::string File = "nginx.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            true /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleObjdumpProgram) { // NOLINT
  // Setup and check results
  const std::string File = "objdump.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            true /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandlePsqlProgram) { // NOLINT
  // Setup and check results
  const std::string File = "psql.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleReadelfProgram) { // NOLINT
  // Setup and check results
  const std::string File = "readelf.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            true /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleSortProgram) { // NOLINT
  // Setup and check results
  const std::string File = "sort.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleTcpdumpProgram) { // NOLINT
  // Setup and check results
  const std::string File = "tcpdump.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            true /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleUniqProgram) { // NOLINT
  // Setup and check results
  const std::string File = "uniq.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleWcProgram) { // NOLINT
  // Setup and check results
  const std::string File = "wc.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            false /* simplified dfa */);
  checkResult(Neck);
}

TEST_F(SlashTest, HandleWgetProgram) { // NOLINT
  // Setup and check results
  const std::string File = "wget.ll";
  auto *Neck = identifyNeck(File, true /* function-local pts */,
                            true /* simplified dfa */);
  checkResult(Neck);
}

// main function for the test case
int main(int Argc, char **Argv) {
  ::testing::InitGoogleTest(&Argc, Argv);
  return RUN_ALL_TESTS();
}
