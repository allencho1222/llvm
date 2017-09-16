#include <iostream>

using namespace std;

void countMe(void) {
	cout << "hi" << endl;
}

int main(void) {
	int i = 0;
	int n = 0;
	
	cin >> n;

	for (i = 0; i < n; i++) {
		countMe();
	}

	return 0;
}


