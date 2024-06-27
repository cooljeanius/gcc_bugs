#include <stdio.h>

int main(void) {
    enum { myEnumField0, myEnumField1 };
    int a = 0;
    int *b = &a;
    if (b == myEnumField0)
        return puts("hey");
    else if (b == myEnumField1)
	return puts("yeh");
    return a;
}
