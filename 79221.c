#include <string.h>

char d[3];

void f (int i)
{
	const char *s = i < 0 ? "01234567" : "89abcd";
	strcat (d, s);
}


void gf (int i)
{
	const char *s = i < 0 ? "12345678" : "87654321";
	strcat (d, s);
}
