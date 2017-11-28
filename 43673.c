#define __STDC_WANT_DEC_FP__
#include <stdio.h>

int main (void)
{
	double d = 0.1;
	_Decimal64 e = 0.1dd;
	printf ("%.20f\n", d);
	printf ("%Da\n", e);
	printf ("%De\n", e);
	printf ("%Df\n", e);
	printf ("%Dg\n", e);
	return 0;
}
