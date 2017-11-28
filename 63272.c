int foo(int i)
{
	int *p = 0;
	
	if (i)
	{
		int k = i;
		p = &k;
	} /* end of nested scope, k dies, p becomes a dangling pointer */
	
	return p ? *p : 0; /* the compiler should warn that p points to dead k */
}
