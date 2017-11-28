void foo(void) {
#pragma acc kernels
	{
#pragma acc loop independent
		for (int i=1; i <= 5; ++i)
		{
		}
	}
}
