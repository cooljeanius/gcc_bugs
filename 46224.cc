#include <iostream>
#include <new>
#include <cstdlib>

using namespace std;

#define MY_NEW new(__FILE__,__LINE__)

void* operator new(
				   std::size_t num_bytes,
				   const char*,
				   int) throw (std::bad_alloc)
{
    return malloc(num_bytes);
}

void operator delete(
					 void*,
					 const char*,
					 int)
{
    cout << "YES" << endl;
}

struct Foo
{
    Foo() { throw int(); }
};

int main()
{
    Foo* f;
    try {
		f = MY_NEW Foo();
    }
    catch (int&) {}
    return 0;
}
