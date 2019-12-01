#include <queue>
#include <algorithm>

using namespace std;

struct sort_heap
{
	bool operator()(const int* lhs, const int* rhs) const
	{
		return *lhs < *rhs;
	}
};

void foo()
{
    std::priority_queue<int*, std::vector<int*>, sort_heap> tmp;
}
