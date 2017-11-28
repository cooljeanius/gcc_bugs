template<typename... SARGS>
struct A
{
	template<typename RES,typename... FARGS> static void
	a(RES(*func)(FARGS...,SARGS...),FARGS...)
	{
	}
};

int foo(int,int)
{
	return 0;
}

int main()
{
	A<int>::a(foo,0);
	A<int>::a<int,int>(foo,0);
	return 0;
}
