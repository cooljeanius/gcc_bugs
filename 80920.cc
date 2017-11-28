#include <initializer_list>
struct A
{ char _a[256];
	std::initializer_list<int> _al;
	A( std::initializer_list<int> l )
    : _a({0}),
	_al(l)
	{}      
};
