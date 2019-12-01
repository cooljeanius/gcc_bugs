template<typename T>
T foo(T t, int n)
{
	while (n--)
		++t;
	return t;
}

int bar(int n) { return foo(1, n); }

int main()
{
	return bar(-1);
}
