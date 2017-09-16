#include "corelab/Exercise2/CalledFunctionName.h"
#include "llvm/IR/Instructions.h"
#include <iostream>


using namespace llvm;
using namespace std;

namespace calledfunctioname {
	static RegisterPass<CalledFunctionName> X("calledfunctionname", "get name of called function", false, false);

	char CalledFunctionName::ID = 0;

	void CalledFunctionName::getAnalysisUsage(AnalysisUsage &AU) const {
		AU.setPreservesAll();
	}
	bool CalledFunctionName::runOnModule(Module& M) {
		for (Module::iterator ifn = M.begin(); ifn != M.end(); ++ifn) {
			for (Function::iterator ibb = ifn->begin(); ibb != ifn->end(); ++ibb) {
				for (BasicBlock::iterator iinst = ibb->begin(); iinst != ibb->end(); ++iinst) {
					if (auto *op = dyn_cast<CallInst>(iinst)) {
						//op->dump();
						cout << "name" << endl;
						cout << ((op->getCalledFunction())->getName()).str() << endl;
					}
				}
			}
		}

		return false;
	}
}
