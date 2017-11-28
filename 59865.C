#include <assert.h>
#include <string.h>
#include <cstdio>
const char * __attribute__ ((target("default"))) foo(void)
{ return("default wins\n");}
const char* __attribute__ ((target("arch=corei7"))) foo(void)
{ return("corei7 wins\n");}
const char* __attribute__ ((target("popcnt"))) foo(void)
{ return("popcnt wins\n");}
int main ()
{
	const char *result = foo ();
	if (__builtin_cpu_is ("corei7")) puts("builtin cpu is corei7\n");
	if (__builtin_cpu_is ("corei7"))
		assert ( 0 == strcmp(result, "corei7 wins"));
	return 0;
}
