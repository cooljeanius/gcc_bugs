#include <cstdint>
#include <type_traits>

#pragma pack(push, 1)

struct A
{
private:
	uint16_t x;
	
	uint32_t y;
	
public:
	A () = default;
	A (uint16_t x_, uint32_t y_) : x(x_), y(y_) {}
};

#pragma pack(pop)

struct __attribute__((packed)) B
{
	A xx;
	
	uint32_t yy;
	
	A zz;
};

A a;
B b;

static_assert(std::is_pod<A>::value, "Expect A to be POD.");
static_assert(std::is_pod<B>::value, "Expect B to be POD.");
