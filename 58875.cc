#include <algorithm>
#include <iostream>
#include <cmath>

int main() {
	float x[3] = {0.5, 0.5, 0.5};
	std::cout << std::inner_product(x, x + 3, x, 0) << std::endl;
	int y = 0;
	y += x[1];
	return 0;
}
