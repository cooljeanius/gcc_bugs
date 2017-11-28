char d[1];

void f (void)
{
	int n = __builtin_sprintf (d, "%'d", 123456);
	if (n < 5)
		__builtin_abort ();
}
