void f0 (void*);

void f1 (unsigned n)
{
	void *p;
	
	if (n < 32)
		n = 32;
	
	if (n < 123)
		p = __builtin_alloca (n);
	else
		p = __builtin_malloc (n);
	
	f0 (p);
}

void f2 (unsigned n)
{
	if (n < 32)
		n = 32;
	
	void *p = (123 < n ? __builtin_malloc: __builtin_alloca)(n);   // missing warning
	f0 (p);
}
