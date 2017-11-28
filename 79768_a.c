
#include <stdio.h>
#include <stdlib.h>

static int mk (int **a, int **b, int **c) {
	if (!(*a = malloc (sizeof (int)))) goto a_err;
	if (!(*b = malloc (sizeof (int)))) goto b_err;
	if (!(*c = malloc (sizeof (int)))) goto c_err;
	
	return 1; c_err:
	free (*b); b_err:
	free (*a); a_err:
	return 0;
}

static void fin (int *a, int *b, int *c) {
	free (c);
	free (b);
	free (a);
}

int main (void) {
	int *a, *b, *c, x, flag = mk (&a, &b, &c);
	while ((x = getchar ()) != -1) {
		if (flag) switch (x) {
			case 0:
				break;
			case 0xdeadbeef:
				goto retm;
			default:
				goto retn;
		} else if (x) goto retn;
	}
retn:
	if (flag) fin (a, b, c);
	return 0;
retm:
	if (flag) fin (a, b, c);
	return 0;
}
