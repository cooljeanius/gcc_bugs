#include <stdio.h>
#include <stdlib.h>

int main();

void __attribute__ ((noinline)) f2() {
    printf("In f2()\n");
    fflush(stdin);
    exit(0);
}

void __attribute__ ((noinline)) f() {
    printf("%d\n", (int) f2);
    int i = 1;
    int cur = 0;
    int* arr[1];
    do {
    	scanf("%d", &cur);
	arr[++i] = cur;
    } while (cur != 10);
    printf("leaving...\n");
}

int main() {
    f();
   
    return 0;
}
