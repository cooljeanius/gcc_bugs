// test
__attribute__ ((cdecl)) int foo(int);
__attribute__ ((stdcall)) int bar(int);

template <class T> 
int baz(T* func)
{
	return func(1);
}

int main()
{
	baz(foo);
	baz(bar);
	return 0;
}
