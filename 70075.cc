void __attribute__((noclone, noinline)) bar(int n)
{
	const int m = 2;
	char a[m][n] = { { 0, 1, 2 } };
	
	for (int i = 0; i < m; ++i)
		for (int j = 0; j < n; ++j)
			__builtin_printf("%hhi ", a[i][j]);
	__builtin_printf("\n");
	
	if (a[0][n - 1] != 0)
		__builtin_abort();
}

int main()
{
    bar(4);
}
