#include<inttypes.h>
uint8_t f();
void foo()
{
  uint8_t t = 0;
  t |= f();       // one rvalue: no warning
  t |= f() & f(); // two rvalues: warn
  t &= f() & f(); // same with &=
  t = f() & f();  // no warning with assign

  uint8_t a = f(); // no warning
  t |= a & a;      // no warning with variables.
  t |= f() & a;    // warning with one rvalue
  t |= a & f();    // no matter position.
}
