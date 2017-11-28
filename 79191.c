void f (unsigned long n)
{
	if (n > 3)
		__builtin_abort ();
}

void g (unsigned n)
{
	if (n < 3)
		f (n);
}

void h (unsigned long m)
{
	unsigned n = m;
	
	if (n < 3)
		f (n);
}
