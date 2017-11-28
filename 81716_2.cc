#include <stdio.h>

class S {
	int m;
};
extern S *q[10];

void bar(S *t)
{
    printf("%p\n", q[0]);
}
