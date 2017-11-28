#include <stdlib.h>

inline void nothing(int rtn_code)
{
    exit(rtn_code);
}

int x = 0;
int ch = 3;

int main() {
    switch (ch) {
		case 1:
			x=1;
			nothing(0);
		case 2:
			x=2;
			break;
		default:
			exit(1);
	}
}
