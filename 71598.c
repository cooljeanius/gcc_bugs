extern void abort (void);

enum e1 { c1 };
enum e2 { c2 };

__attribute__((noinline,noclone))
int f(enum e1 *p, enum e2 *q)
{
	*p = 1;
	*q = 2;
	return *p;
}

int main()
{
	unsigned x;
	
	if (f(&x, &x) != 2)
		abort();
}
