#include <string.h>

char d[3];

void f (void)
{
	memcpy (d, "0123456789", 8);
}

void g (const char *s)
{
	memcpy (d, s, 8);
}
