#include <stdint.h>

uint16_t foo(uint8_t * x)
{
	return (uint16_t)(x[0] << 0) | (uint16_t)(x[1] << 8);
}
