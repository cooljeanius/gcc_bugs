void sink (void*);

void f (const char *s, int n)
{
	char d[1];
	
	__builtin_strncat (d + 1, s, n);   // missing -Wstringop-overflow
	
	sink (d);
}
