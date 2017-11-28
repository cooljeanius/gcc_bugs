#include <assert.h>

#define A "arch=silvermont"

void __attribute__ ((target ("default")))
foo ()
{
	assert (!__builtin_cpu_is ("silvermont"));
}

void __attribute__ ((target (A)))
foo ()
{
	assert (__builtin_cpu_is ("silvermont"));
}
