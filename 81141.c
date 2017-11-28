struct S { char n, *s, a[0]; };

void h (void *d, const struct S *s)
{
	__builtin_memcpy (d, s->s, sizeof s->s / sizeof *s->s);   // warning (good)
	__builtin_memcpy (d, s->a, sizeof s->a / sizeof *s->a);   // missing warning
	
	extern char a[0];
	
	__builtin_memcpy (d, s->a, sizeof a / sizeof *a);         // missing warning
}

struct SS { char nn, aa[1]; };

void hh (struct SS *ss)
{
	__builtin_strncpy (ss->aa, "123", sizeof ss->aa);
}
