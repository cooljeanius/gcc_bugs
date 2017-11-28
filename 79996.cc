 [[noreturn]] void g ();

struct A
{
	int foo ();
};

int foo ()
{
	g ();
}

template <void f [[noreturn]]() = g>
struct B
{
int foo ();
};

template <void f ()>
int B<f>::foo ()
{
	f ();
}

int i = (B<>().foo (), 0);
