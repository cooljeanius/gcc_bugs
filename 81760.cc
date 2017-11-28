#define A "arch=silvermont"

void __attribute__ ((target ("default")))
foo (const char* = "default");

void __attribute__ ((target (A)))
foo (const char * = A);   // accepted (bug)

int main ()
{
	foo ();
}

int __attribute__ ((target ("default")))
foo (const char *a)
{
	__builtin_printf ("foo (\"%s\") [default]\n", a);
	return 0;
}

int __attribute__ ((target (A)))
foo (const char *a)
{
	__builtin_printf ("foo (\"%s\") [%s]\n", a, A);
	return 0;
}
