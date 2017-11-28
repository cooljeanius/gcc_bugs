int f (int i)
{
	int x = i - i;
	
	enum { b = __builtin_constant_p (x) ? x : 0 };
	
	return b;
}

int g (int i)
{
	const int x = i - i;
	
	enum { b = __builtin_constant_p (x) ? x : 0 };
	
	return b;
}
