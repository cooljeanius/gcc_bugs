#include <stdlib.h>

int main(void)
{
	void *p = malloc(5);
	p = realloc(p, 0);
	return ((p == NULL) ? 0 : 1);
}
