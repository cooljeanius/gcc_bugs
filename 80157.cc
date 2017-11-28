#include <cstdlib>
bool f(size_t const xy[2], int z) {
	return xy[0] + xy[1] < static_cast<size_t>(z);
}
