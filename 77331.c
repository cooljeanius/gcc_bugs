extern int printf (const char*, ...);

void f (const char *msg)
{
	printf ("hello " "%i", msg);
	
#define INT_FMT "%i"
	
	printf ("hello " INT_FMT " world", msg);
	
}
