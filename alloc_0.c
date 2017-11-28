#include <alloca.h>
#include <stdlib.h>

void fn(void)
{
	char *ptr0 = (char *)malloc(0);
	void *ptr1 = alloca(0);
	*ptr0 = *(char *)ptr1;
}
