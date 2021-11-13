#include <limits.h>

unsigned var; /* debatable */

unsigned long foo(void)
{
	long variable = LONG_MAX;
	unsigned long uvariable = (unsigned)variable; /* warn here */
	return uvariable;
}
