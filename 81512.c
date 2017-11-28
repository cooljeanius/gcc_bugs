#define alloca __builtin_alloca

void* f (void)
{
	return alloca (12345);
}
