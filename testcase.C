#include <assert.h>

struct A
{
  A * __attribute__ ((__noinline__)) get_this (void *a)
  {
    return this;
  }
};

int
main ()
{
  A a;
  int r = (A ().get_this (&a) == &a);
  assert (!r);
  return r;
}
