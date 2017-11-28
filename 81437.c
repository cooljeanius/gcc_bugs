void f (char *d, unsigned n)
{
	const char a[] = "123";
	if (n < 1) n = 1;
	__builtin_memcpy (d, a + 4, n);   // warning (ok)
}

void g (char *d, unsigned n)
{
	const char a[] = "123";
	n = 1;
	__builtin_memcpy (d, a + 4, n);   // missing warning
}

void h (char *d)
{
	const char a[] = "123";
	__builtin_strcpy (d, a + 4);   // missing warning
}
