#define ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))

int foo(unsigned int argument);

int bar(void)
{
	return foo(ARRAY_SIZE);
}
