#include "corelab/Exercise2/ExBlockCount.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"

using namespace llvm;

namespace exblockcount {
	static RegisterPass<ExBlockCount> X("exblockcount", "count the number of execution of blocks on runtime", false, false);

	char ExBlockCount::ID = 0;

	void ExBlockCount::getAnalysisUsage(AnalysisUsage &AU) const {
		AU.setPreservesAll();
	}

	bool ExBlockCount::runOnModule(Module &M) {
		Type *intType = Type::getInt32Ty(M.getContext());
		Constant *zero = ConstantInt::get(intType, 0);
		Constant *one = ConstantInt::get(intType, 1);

		GlobalVariable *gVar = new GlobalVariable(M, intType, false, GlobalValue::InternalLinkage, zero, "count");

		for (Module::iterator ifn = M.begin(); ifn != M.end(); ++ifn) {
			for (Function::iterator ibb = ifn->begin(); ibb != ifn->end(); ++ibb) {
				IRBuilder<> builder(dyn_cast<Instruction>(ibb->begin()));
				LoadInst *loadCount = builder.CreateLoad(gVar);
				Value *addInst = builder.CreateAdd(loadCount, one);
				builder.CreateStore(addInst, gVar);
			}
		}

		return false;
	}
}
