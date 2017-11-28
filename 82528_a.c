#include <stdbool.h>

typedef enum { a, b, c } result;

result
f (int flag)
{
	if (flag)
		return true;
	else
		return false;
}
