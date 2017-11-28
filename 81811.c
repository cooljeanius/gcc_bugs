void* f (const void *p, unsigned n)
{
	char a[8];
	return __builtin_memcpy (a, p, n);   // -Wreturn-local-addr (good)
}

char* g (const char *s)
{
	char a[8];
	return __builtin_strcpy (a, s);   // missing -Wreturn-local-addr
}

char* h (const char *s)
{
	char a[8];
	return __builtin_strncpy (a, s, sizeof a);   // missing -Wreturn-local-addr
}
