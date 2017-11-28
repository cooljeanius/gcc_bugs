namespace NS
{
    typedef int X;
	
    template<typename T> void f(X f, T t) { }
}

template void f(X, int);     // (1)

template void f(int, char);  // (2)
