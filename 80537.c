char d[1];

void f (void)
{
	__builtin_sprintf (d + 1, "%lc foo", 'a');
}

void g (void)
{
	__builtin_sprintf (d + 1, "%C bar", 'a');
}
