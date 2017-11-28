int main ()
{
	char d[10];
	
	int n = __builtin_sprintf (d, "%1$*1$i", 12);
	
	__builtin_printf ("%i: \"%s\"\n", n, d);
}
