struct __attribute__ ((unused)) A { int i; };

void f (void)
{
	struct A a;      // no warning, ok
}

void g (void)
{ 
	struct A a[1];   // warning, bug
}
