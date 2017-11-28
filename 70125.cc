constexpr int foo (unsigned N)
{
	typedef int V __attribute__ ((vector_size (N)));
	V v = 0;
	return v;
}
