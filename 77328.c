void f (void)
{
	char d [8];
	
#define P(d, f, a, b) __builtin_sprintf (d, f, a, b)
	
	__builtin_sprintf (d, "%i %i", 1, 2.0);
	
	P (d, "%i %i", 1, 2.0);
}
