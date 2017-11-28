static void f()
{ }

template<class T>
int g(T x)
{
	f();
	return 0;
}
