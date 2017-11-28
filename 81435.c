void f0 (void)
{
	char a[4] = "234";
	char b[5] = "1";
	
	__builtin_strcpy (b + 1, a);
	
	if (__builtin_strlen (b + 1) != 3)   // optimized into 3
		__builtin_abort ();
}

void f1 (void)
{
	char a[4] = "234";
	char b[5] = "";
	
	__builtin_strcpy (b + 1, a);
	
	if (__builtin_strlen (b + 1) != 3)   // optimized into 3
		__builtin_abort ();
}

void g0 (void)
{
	char a[4] = "234";
	char b[5] = "1";
	
	__builtin_strcat (b + 1, a);
	
	if (__builtin_strlen (b + 1) != 3)   // optimized into 3
		__builtin_abort ();
}

void g1 (void)
{
	char a[4] = "234";
	char b[5] = "";
	
	__builtin_strcat (b + 1, a);
	
	if (__builtin_strlen (b + 1) != 3)   // not optimized
		__builtin_abort ();
}
