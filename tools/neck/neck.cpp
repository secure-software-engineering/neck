#include <filesystem>
#include <memory>
#include <sstream>

#include "llvm/IR/Function.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "boost/program_options.hpp"

#include "NeckID/NeckID/NeckID.h"

namespace {

void validateParamModule(const std::string &Module) {
  if (Module.empty()) {
    throw boost::program_options::error_with_option_name(
        "At least one LLVM target module is required!");
  }
  std::filesystem::path ModulePath(Module);
  if (!(std::filesystem::exists(ModulePath) &&
        !std::filesystem::is_directory(ModulePath) &&
        (ModulePath.extension() == ".ll" || ModulePath.extension() == ".bc"))) {
    throw boost::program_options::error_with_option_name(
        "LLVM module '" + Module + "' does not exist!");
  }
}

} // anonymous namespace

int main(int Argc, char **Argv) {
  // Declare a group of options that will be allowed only on command line
  boost::program_options::options_description Generic("Command-line options");
  Generic.add_options()("help,h", "Print help message");
  // Declare a group of options that will be allowed both on command line
  // and in config file
  boost::program_options::options_description Config(
      "Configuration file options");
  // clang-format off
  Config.add_options()
    ("module,m", boost::program_options::value<std::string>()->multitoken()->zero_tokens()->composing()->notifier(&validateParamModule), "Path to the module under analysis")
    ("verbose,v", "Print output to the command line (=default is false)");
  // clang-format on
  boost::program_options::options_description CmdlineOptions;
  CmdlineOptions.add(Generic).add(Config);
  boost::program_options::options_description Visible("Allowed options");
  Visible.add(Generic).add(Config);
  boost::program_options::variables_map Vars;
  try {
    boost::program_options::store(
        boost::program_options::command_line_parser(Argc, Argv)
            .options(CmdlineOptions)
            .run(),
        Vars);
    boost::program_options::notify(Vars);
  } catch (boost::program_options::error &Err) {
    llvm::errs() << "Could not parse command-line arguments!\n"
                 << "Error: " << Err.what() << '\n';
    return 1;
  }
  // Perform some simple sanity checks on the parsed command-line arguments.
  if (Vars.empty() || Vars.count("help")) {
    std::stringstream StrStr;
    StrStr << Visible;
    llvm::outs() << StrStr.str() << '\n';
    return 0;
  }
  if (!Vars.count("module")) {
    llvm::outs() << "Need to specify an LLVM (.ll/.bc) module for analysis.\n";
    return 0;
  }
  // Parse an LLVM IR file.
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M =
      llvm::parseIRFile(Vars["module"].as<std::string>(), Diag, CTX); // NOLINT
  // Check if the module is valid.
  bool BrokenDbgInfo = false;
  if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
    llvm::errs() << "error: invalid module!\n";
    return 1;
  }
  if (BrokenDbgInfo) {
    llvm::errs() << "caution: debug info is broken!\n";
  }

  auto *Main = M->getFunction("main");
  if (!Main) {
    llvm::errs() << "error: could not retrieve 'main()'!\n";
    return 1;
  }
  neckid::NeckAnalysis NA(*Main);
  neckid::NeckAnalysisCFG G(NA);
  G.viewCFG();
  return 0;
}