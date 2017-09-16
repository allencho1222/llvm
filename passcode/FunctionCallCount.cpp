#include "corelab/Exercise2/FunctionCallCount.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/GlobalVariable.h"

using namespace llvm;

namespace functioncallcount {
	static RegisterPass<FunctionCallCount> X("functioncallcount", "count functioncalls on compile time", false, false);

	char FunctionCallCount::ID = 0;

	void FunctionCallCount::getAnalysisUsage(AnalysisUsage &AU) const {
		AU.setPreservesAll();
	}
	bool FunctionCallCount::runOnModule(Module& M) {
		Type *intType = Type::getInt32Ty(M.getContext());	//make Integer type
		Constant *zero = ConstantInt::get(intType, 0);			//make constant 0
		Constant *one = ConstantInt::get(intType, 1);

		GlobalVariable *gVar = new GlobalVariable(M, intType, false, GlobalValue::InternalLinkage, zero, "count");
		gVar->setAlignment(4);
		
		/*	If local variable in main function cannot be accessed by other scopes.
		Function *main = M.getFunction("main");
		BasicBlock *mainBlock = dyn_cast<BasicBlock>(main->begin());

		IRBuilder<> mainBuilder(dyn_cast<Instruction>(mainBlock->begin()));		//insert instruction before main function's first instruction

		AllocaInst *count = mainBuilder.CreateAlloca(intType, 0, "count");
		count->setAlignment(4);
		mainBuilder.CreateStore(zero, count);		
		*/
		for (Module::iterator ifn = M.begin(); ifn != M.end(); ++ifn) {
			for (Function::iterator ibb = ifn->begin(); ibb != ifn->end(); ++ibb) {
				for (BasicBlock::iterator iinst = ibb->begin() ; iinst != ibb->end(); ++iinst) {
					if(auto *op = dyn_cast<CallInst>(iinst)) {		// if instruction is call instruction	
						/* count++ */
						//op->dump();
						IRBuilder<> incBuilder(op);
						LoadInst *loadCount = incBuilder.CreateLoad(gVar);
						Value *addInst = incBuilder.CreateAdd(loadCount, one);
						incBuilder.CreateStore(addInst, gVar);
					}
				}
			}
		}
			 
		return false;
	}
}
