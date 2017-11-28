static void foo (int);

#ifdef D
void bar (void)
{
	foo (0);
}
#endif

static void foo (int x)
{
	x++;
}

void baz (void)
{
	foo (0);
}

static void g ();

void f()
{
	void g();
	g();
}

void g()
{
}

int main () {
	f ();
}
