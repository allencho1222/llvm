#include "llvm/Pass.h"
#include "llvm/IR/Module.h"

using namespace llvm;

namespace exblockcount {
	class ExBlockCount : public ModulePass {
		public :
			static char ID;
		
			ExBlockCount() : ModulePass(ID) {}

			void getAnalysisUsage(AnalysisUsage &AU) const;
			bool runOnModule(Module &M);

			StringRef getPassName() const {
				return "Execution of Block Count";
			}
	};
}
