#include <assert.h>

// float fx(float x)
float fx(x) float x;
{
    return x + 1.0;
}

float inita() { return 3.0; }

int main()
{
    float a = inita();
    assert(fx(a) == 4.0);
}
