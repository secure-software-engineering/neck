/******************************************************************************
 * Copyright (c) 2021 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <memory>

#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

struct NeckAnalysisCFG {
  NeckAnalysisCFG(const llvm::Function &F,
                  llvm::SetVector<const llvm::BasicBlock *> BBs)
      : F(F), BBs(BBs) {}
  const llvm::Function &F;
  llvm::SetVector<const llvm::BasicBlock *> BBs;
  void viewCFG() const { ViewGraph(this, "Neck-Analysis-CFG:" + F.getName()); }
};

namespace llvm {

template <>
struct GraphTraits<const NeckAnalysisCFG *>
    : public GraphTraits<const BasicBlock *> {
  using NodeRef = GraphTraits<const BasicBlock *>::NodeRef;
  using ChildIteratorType = GraphTraits<const BasicBlock *>::ChildIteratorType;

  static NodeRef getEntryNode(const NeckAnalysisCFG *NACFG) {
    return &NACFG->F.getEntryBlock();
  }

  using nodes_iterator = pointer_iterator<Function::const_iterator>;

  static nodes_iterator nodes_begin(const NeckAnalysisCFG *NACFG) {
    return nodes_iterator(NACFG->F.begin());
  }

  static nodes_iterator nodes_end(const NeckAnalysisCFG *NACFG) {
    return nodes_iterator(NACFG->F.end());
  }

  static size_t size(const NeckAnalysisCFG *NACFG) { return NACFG->F.size(); }
};

template <>
struct DOTGraphTraits<const NeckAnalysisCFG *>
    : public DOTGraphTraits<const Function *> {
  DOTGraphTraits(bool IsSimple = false)
      : DOTGraphTraits<const Function *>(IsSimple) {}

  static std::string getGraphName(const NeckAnalysisCFG *NACFG) {
    return "Neck Analysis for '" + NACFG->F.getName().str() + "' Function";
  }

  std::string getNodeLabel(const BasicBlock *Node,
                           const NeckAnalysisCFG *NACFG) {
    return DOTGraphTraits<const Function *>::getNodeLabel(Node, &NACFG->F);
  }

  static std::string getNodeAttributes(const BasicBlock *Node,
                                       const NeckAnalysisCFG *NACFG) {
    if (NACFG->BBs.count(Node)) {
      return "style=filled, fillcolor=red";
    }
    return "";
  }

  std::string getEdgeAttributes(const BasicBlock *Node, succ_const_iterator I,
                                const NeckAnalysisCFG *NACFG) {
    return DOTGraphTraits<const Function *>::getEdgeAttributes(Node, I,
                                                               &NACFG->F);
  }
};

} // namespace llvm

llvm::SetVector<const llvm::BasicBlock *>
automatedNeckDetection(const llvm::Function &F) {
  assert(F.hasName() && F.getName() == "main");
  llvm::SetVector<const llvm::BasicBlock *> BBs;

  for (const auto &Arg : F.args()) {
    llvm::outs() << "\nanalyze: ";
    Arg.print(llvm::outs());
    llvm::outs() << "\nfound users:\n";
    for (const auto *User : Arg.users()) {
      if (const auto *Inst = llvm::dyn_cast<llvm::Instruction>(User)) {
        const auto *BBCandidate = Inst->getParent();
        llvm::DominatorTree DT(const_cast<llvm::Function &>(F));
        bool DominateAllSuccs = true;
        // for (const auto *BBSucc : BBCandidate->s)
        // if (DT.dominates())
        Inst->print(llvm::outs());
        llvm::outs() << '\n';
        BBs.insert(Inst->getParent());
      }
    }
  }

  return BBs;
}

int main(int argc, char **argv) {
  if (argc != 2) {
    llvm::errs()
        << "neck\n"
           "A small program that allows for automated neck detection.\n\n"
           "Usage: neck <LLVM IR file>\n";
    return 1;
  }
  // Parse an LLVM IR file.
  llvm::SMDiagnostic Diag;
  llvm::LLVMContext CTX;
  std::unique_ptr<llvm::Module> M = llvm::parseIRFile(argv[1], Diag, CTX);
  // Check if the module is valid.
  bool BrokenDbgInfo = false;
  if (llvm::verifyModule(*M, &llvm::errs(), &BrokenDbgInfo)) {
    llvm::errs() << "error: invalid module\n";
    return 1;
  }
  if (BrokenDbgInfo) {
    llvm::errs() << "caution: debug info is broken\n";
  }

  auto *Main = M->getFunction("main");
  if (!Main) {
    llvm::errs() << "error: could not retrieve 'main()'!\n";
  }
  auto BBs = automatedNeckDetection(*Main);
  NeckAnalysisCFG G(*Main, BBs);
  G.viewCFG();
  //   llvm::WriteGraph(llvm::outs(), G);
  return 0;
}
