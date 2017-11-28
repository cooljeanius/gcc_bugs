#include <stdio.h>

int main()
{
    unsigned int a, b;
    a = 42;
	
    __asm__ ("movl %1, %0" : "=b" (b) : "a" (a));
	
    printf("Result: %d\n", b);
    return 0;
}
