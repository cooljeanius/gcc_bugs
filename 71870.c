char d[4];

void f (void)
{
	__builtin_sprintf (d, "%r");
	
	__builtin_sprintf (d, "%2$i%1$i", 1, 234);
}
