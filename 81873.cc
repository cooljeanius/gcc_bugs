void f (void)
{
	int __attribute__ ((noreturn)) g ();
}

int h (void)
{
	int g ();
	
	g ();
}
