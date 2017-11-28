#include <cstddef>
#include <new>

void* operator new( std::size_t num_bytes, const char* ) throw (std::bad_alloc);

struct Foo
{
    Foo() { throw int(); }
};

void f()
{
    Foo* p = new(__FILE__) Foo();
}
