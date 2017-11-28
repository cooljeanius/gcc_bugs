#include <iostream>

int& foo() {}

int main(void)
{
    foo() = 1 + 1;
	
    std::cout << foo() << std::endl;
	
    return 0;
}
