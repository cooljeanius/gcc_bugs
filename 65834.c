extern void foo(void);
#define TEST

int bar(void)
{
#if TEST
	foo();
#endif
	return 0;
}
