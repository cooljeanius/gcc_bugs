void zero0 (void *p, unsigned n)
{
	if (p == 0)
		__builtin_memset (p, 0, n);   // warning, good
}

void zero1 (void *p, unsigned n)
{
	if (p == 0)
		__builtin_bzero (p, n);   // missing warning
}

void copy0 (void *p, const void *q, unsigned n)
{
	if (p == 0)
		__builtin_memcpy (p, q, n);   // warning, good
}

void copy1 (void *p, const void *q, unsigned n)
{
	if (q == 0)
		__builtin_memcpy (p, q, n);   // warning, good
}

void copy2 (void *p, const void *q, unsigned n)
{
	if (p == 0)
		__builtin_bcopy (q, p, n);   // missing warning
}

void copy3 (void *p, const void *q, unsigned n)
{
	if (q == 0)
		__builtin_bcopy (q, p, n);   // missing warning
}

int cmp0 (const void *p, const void *q, unsigned n)
{
	if (p == 0)
		return __builtin_memcmp (p, q, n);   // warning, good
	return 0;
}

int cmp1 (const void *p, const void *q, unsigned n)
{
	if (q == 0)
		return __builtin_memcmp (p, q, n);   // warning, good
	return 0;
}

int cmp2 (const void *p, const void *q, unsigned n)
{
	if (p == 0)
		return  __builtin_bcmp (p, q, n);   // missing warning
	return 0;
}

int cmp3 (const void *p, const void *q, unsigned n)
{
	if (q == 0)
		return  __builtin_bcmp (p, q, n);   // missing warning
	return 0;
}
