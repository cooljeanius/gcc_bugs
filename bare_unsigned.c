#include <limits.h>

unsigned var;

unsigned long foo(void)
{
	long variable = LONG_MAX;
	unsigned long uvariable = (unsigned)variable;
	return uvariable;
}
