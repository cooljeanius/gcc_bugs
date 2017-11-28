#include <iostream>
using namespace std;

int Recursive(int num, const char *notUsed);

int main() {
	const char *notUsedLocal = "Not used";
	
	cout << "Test: " << Recursive(1, notUsedLocal) << endl;
	return 0;
}

int Recursive(int num, const char *notUsed) {
	if (num > 5)
		return num;
	else
		return Recursive(++num, notUsed);
}
