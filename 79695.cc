typedef int __attribute__ ((unused)) T;

static T x;

void f (void)
{
	static T y;
}

void g (void)
{
	T z;
}
