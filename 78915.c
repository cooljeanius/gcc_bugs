int f0 (void)
{
	int i;
	
	++i;
	
	return i;
}

int f1 (unsigned n)
{
	int *p = (int*)__builtin_alloca (n);
	
	++*p;
	
	return *p;
}

int f2 (unsigned n)
{
	int *p = (int*)__builtin_malloc (n);
	if (!p)
		return -1;
	
	++*p;
	
	return *p;
}
