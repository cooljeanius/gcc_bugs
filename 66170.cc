#include <iostream>
#include <vector>
#include <cstring>

int nonmain()
{   
    int length = 0;
    size_t n;
    
    n = static_cast<size_t>(length);                     // Line 8
    n = static_cast<size_t>(length) * sizeof(int);
    n = sizeof(int) * static_cast<long unsigned int>(length);   
    n = sizeof(int) * static_cast<unsigned int>(length); // Line 11
    
    n = sizeof(int) * static_cast<size_t>(length);       // Line 13
	
	return (int)n;
}

void foo(const std::vector<int> vec, const int idx) {
	if (idx < 0 || vec.size() <= static_cast<size_t>(idx))
	{
		std::cout << "No such index\n";
		return;
	}
	std::cout << "Valid index\n";
}

int main() {
    foo({1, 2, 3, 4, 5}, 6);
    return 0;
}
