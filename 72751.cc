void f ()
{
	union { union { int a, b; }; };
	a = 0;
}
