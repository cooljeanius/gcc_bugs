void sink (void*);

char a[N];

void farray (void)
{
	char a[N];
	sink (a);
}

void funnamed_array (void)
{
	sink ((char[N]){ 0 });
}

void fvla (void)
{
	int n = N;
	char a[n];
	sink (a);
}

void falloca (void)
{
	void *a = __builtin_alloca (N);
	sink (a);
}

void fmalloc (void)
{
	void *a = __builtin_malloc (N);
	sink (a);
}
