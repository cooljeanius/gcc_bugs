typedef __SIZE_TYPE__ size_t;

void f (char *d, const char *s)
{
	size_t n0 = __builtin_strlen (s);
	
	__builtin_strcpy (d, s);
	
	size_t n1 = __builtin_strlen (s);   // call eliminated
	
	if (n0 != n1)
		__builtin_abort ();
}

void g (char *d, const char *s)
{
	size_t n0 = __builtin_strlen (s);
	
	__builtin_strcat (d, s);
	
	size_t n1 = __builtin_strlen (s);   // call not eliminated
	
	if (n0 != n1)
		__builtin_abort ();
}
