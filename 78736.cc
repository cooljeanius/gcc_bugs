#include <cstddef>
typedef enum
{
    a = -1
} a_t;

a_t f()
{
    return a;
}

int main()
{
    int b = f();
	unsigned int c = f();
    return (b + c);
}
