#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

extern int main(void);
extern void f2(void);
extern void f(void);

void __attribute__((noinline)) f2(void) {
    printf("In f2()\n");
    fflush(stdin);
    exit(0);
}

void __attribute__((noinline)) f(void) {
	int i;
	int cur;
	int *arr[1];
    printf("%d\n", (int)f2);
    i = 1;
    cur = 0;
    do {
    	scanf("%d", &cur);
		arr[++i] = (int *)cur;
    } while (cur != 10);
	assert(arr != NULL);
    printf("leaving f()...\n");
}

int main() {
    f();
   
    return 0;
}
