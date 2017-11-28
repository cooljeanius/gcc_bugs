#include <cstdlib>
#include <cstdio>
#include <string>

// (A), (B) and (C) should give "warning: unsafe, may divide by zero"
// (D) is from a const, NB should not give a warning
void test_func(const size_t value, const std::string & mystr)
{
    const size_t i = 0;
    const size_t j = 1;
	
    printf("A %zu mystr\n", 5 / mystr.size());
	
    printf("B %zu\n", 10/i);
	
    printf("C %zu\n", i/value);
	
    printf("D %zu\n", 10/j);
}
