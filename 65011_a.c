__attribute__((target("default","avx2")))
void foo(double *__restrict r, const double *__restrict a, const double *__restrict b, double f)
{
	for (unsigned i = 0; i < 128; ++i)
		r[i] = a[i] * f + b[i];
}
