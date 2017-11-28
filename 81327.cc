struct S { virtual ~S (); };

void f (struct S *s)
{
	__builtin_memset (s, 0, sizeof *s);
}

void g (struct S *s)
{
	__builtin_memset ((void*)s, 0, sizeof *s);
}

void h (struct S *s)
{
	__builtin_memset ((char*)s, 0, sizeof *s);
}
