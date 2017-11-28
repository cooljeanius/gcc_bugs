void f (const char*, ...) __attribute__ ((format (__gcc_diag__, 1, 2)));

void h (void)
{
	f ("%lu", 0);
}
