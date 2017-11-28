unsigned f (char *d)
{
	__builtin_memcpy (d, "abc", 3);
	__builtin_memcpy (d + 3, "def", 4);
	
	return __builtin_strlen (d);   // strlen call folded into a constant
}

unsigned g (char *d)
{
	__builtin_mempcpy (__builtin_mempcpy (d, "abc", 3), "def", 4);
	return __builtin_strlen (d);   // strlen call not folded
}
