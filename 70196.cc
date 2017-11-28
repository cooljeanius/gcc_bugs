extern __attribute__ ((weak)) int i;

constexpr int *p = 0;
constexpr int *q = &i;

static_assert (p == q, "p == q");
static_assert (!(q < p), "!(a < p)");   // accepted and true
static_assert (p <= q, "p <= q");       // accepted and true

template <bool> struct S { };

S<!(&i < 0)> s0;   // accepted
S<&i == 0> s1;     // rejected
