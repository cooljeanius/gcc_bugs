#include <assert.h>

int foo(int x) {
	assert (x == 5 || x == 5);
	return (x == 5 || x == 5) ? 1 : 0;
}
