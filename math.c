#include <stdio.h>
#include <stdlib.h>

int do_add(const int a, const int b)
{
	return (a + b);
}

int add_by_incrementing(int a, const int b)
{
	int c = abs(b);
	while (c-- > 0) {
		a++;
	}
	return a;
}

#if 0
int add_recursively(int a, int b)
{
	; /* TODO */
}
#endif /* 0 */

int main(void)
{
	const int i = 3;
	const int j = 6;
	printf("%d\n", (i + j));
	printf("%d\n", do_add(i, j));
	printf("%d\n", add_by_incrementing(i, j));
}
