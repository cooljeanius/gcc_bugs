typedef __SIZE_TYPE__ size_t;

size_t strlen (const char*);

char a[7];

void f (void)
{
	unsigned n = strlen (a);
	if (n >= sizeof a)      // can never hold
		__builtin_abort ();   // can be eliminated
}

struct S { char a[7]; int i; };

void g (const struct S *s)
{
	unsigned n = strlen (s->a);
	if (n >= sizeof s->a)   // can never hold
		__builtin_abort ();   // can be eliminated
}
