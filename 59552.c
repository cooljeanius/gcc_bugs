typedef struct Big {
	char a[32];
} Big;

int __attribute__ ((noclone, noinline))
f0 (Big x)   // suggest to declare f0 (const Big&) instead
{ return __builtin_strlen (x.a); }

int __attribute__ ((noclone, noinline))
g0 (const Big *x) { return __builtin_strlen (x->a); }

extern Big x;

int f1 (void)
{
	int n = f0 (x);
	return n + 1;
}

int g1 (void)
{
	int n = g0 (&x);
	return n + 1;
}
