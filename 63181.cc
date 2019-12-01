
struct Foo {
	Foo(short x): x_(x) { }
	const int& x_;
};

int main()
{
	Foo f(0);
	return f.x_;
}
