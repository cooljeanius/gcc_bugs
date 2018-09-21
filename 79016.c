void f (void*);

void fauto (void)
{
	char d[3];

	f (__builtin_memset (d, 0, 5));
}

void funnamed (void)
{
	f (__builtin_memset ((char[3]){ 0 }, 1, 5));
}

void falloca (void)
{
	char *d = __builtin_alloca (3);

	f (__builtin_memset (d, 0, 5));
}

void fmalloc (void)
{
	char *d = __builtin_malloc (3);

	f (__builtin_memset (d, 0, 5));
}

void fvla (unsigned n)
{
	if (n > 3)
		n = 3;

	char d [n];

	f (__builtin_memset (d, 0, 5));
}

#include <string.h>

int* __attribute__ ((alloc_size (1)))
f1 (int);

void* g (const void *s)
{
  void *p = f1 (8);
  __builtin_memcpy (p, s, 9);   // missing -Wstringop-overflow
  return p;
}

void* h (const void *s)
{
  void *p = f1 (8);
  memcpy (p, s, 9);   // -Wstringop-overflow with _FORTIFY_SOURCE
  return p;
}
