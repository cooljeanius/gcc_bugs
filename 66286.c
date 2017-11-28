int
main ()
{
	int a[10], i;
	a[0:10] = 10; a[0:2] *= 2; a[5:2] *= 3;
	for (i = 0; i < 10; i++)
		if (a[i] != (i < 2 ? 20 : (i - 5U <= 1U ? 30 : 10)))
			__builtin_abort ();
	return 0;
}
