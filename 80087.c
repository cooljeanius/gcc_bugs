void f (int);

void f1 (int n)
{
	if (n != n)   // warning, ok
		f (n);
	
	int i = n;
	if (i != n)   // missing warning
		f (i);
	
	for (int i = n; i != n; ++i)   // missing warning
		f (i);
}

struct S { int *a, *b; };

void f2 (struct S *s)
{
	for (int *p = s->a; p != s->a; ++p)   // missing warning
		f (*p);
}
