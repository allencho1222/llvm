#include <iostream>

using namespace std;

extern "C" void wow(void) {
	cout << "wow" << endl;
}

extern "C" void hi(void) {
	cout << "hi" << endl;
}

extern "C" void good(void) {
	cout << "good" <<endl;
}


int main(void) {
	wow();
	hi();
	good();

	return 0;
}
