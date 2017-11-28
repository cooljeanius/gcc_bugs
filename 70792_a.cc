#include <iostream>

struct MyType {
	MyType(int i, int j, int k, int l)
    : sum(i + j + k + l)
	{
		
	}
	
	int sum;
};

int main()
{
	int i = 0;
	std::cout << MyType{ ++i, ++i, ++i, ++i }.sum << '\n';
}
