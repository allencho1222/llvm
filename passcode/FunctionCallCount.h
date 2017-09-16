#include "llvm/Pass.h"
#include "llvm/IR/Module.h"

using namespace llvm;


namespace functioncallcount {
	class FunctionCallCount : public ModulePass {
		public :
			static char ID;

			FunctionCallCount() : ModulePass(ID) {}
	
			void getAnalysisUsage(AnalysisUsage &AU) const;
			bool runOnModule(Module &M);
			StringRef getPassName() const {
				return "Function_Call_Count";
			}
	};
}
