#include "llvm/Pass.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace calledfunctioname {
	class CalledFunctionName : public ModulePass {
		public :
			static char ID;
			
			CalledFunctionName() : ModulePass(ID) {}

			void getAnalysisUsage(AnalysisUsage &AU) const;
			bool runOnModule(Module &M);
			StringRef getPassName() const {
				return "Called Function Name";
			}
	};
}
