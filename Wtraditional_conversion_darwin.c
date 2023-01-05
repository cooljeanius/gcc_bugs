#include <architecture/byte_order.h>
#include <sys/types.h>
#include <inttypes.h>

uint32_t foo(float x)
{
	return OSSwapHostToLittleInt32(x);
}

int32_t bar(double x)
{
	return OSSwapHostToBigInt32(x);
}
