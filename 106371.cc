#include <cstdint>

struct A {
  uint64_t x : 32;
};

struct B {
  uint32_t x;
};

int f() {
    auto a = A{.x = 1};
    auto b = B{.x = a.x};
    return b.x;
}
