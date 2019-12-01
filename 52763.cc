#ifdef __cplusplus
# include <cstdbool>
#else
# include <stdbool.h>
#endif /* __cplusplus */

typedef enum {
	NONE = 0, ONE = 1, TWO = 2
} tEnumType;

bool f(tEnumType e)
{
	return (e == 3);   // no warning here
}

bool g(tEnumType e)
{
	return (e == 4);
}

int main(void)
{
	tEnumType var1 = TWO;
	//Warn here, because we compare an enum to a non-enum type (1)
	//should be 'if (var1 == ONE)'
	if (var1 == 1)
		return f(NONE);
	else
		return g(ONE);
}
