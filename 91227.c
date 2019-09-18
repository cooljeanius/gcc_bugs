void f (char *p)
{
	char a[3];
	if (p == a || p == a + 1 || p == a + 2 || p == a + 3)
		__builtin_abort ();
}


void g (char *p)
{
	char a[3];
	if (p >= a || p <= a + 3)
		__builtin_abort ();
} 
