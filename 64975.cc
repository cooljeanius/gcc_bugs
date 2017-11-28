#include <iostream>

struct PP
{
	inline void m();
};

int main()
{
	PP pp;
	pp.m();
}

inline void PP::m()
{
	std::cout << "hola" << std::endl;
}
