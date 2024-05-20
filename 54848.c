#include <stdio.h>

int main(void)
{
  unsigned short a = 0xeb64;
  unsigned short b = 0xf1e2;
  unsigned short c = a * b;
  return printf("%x\n", c);
}
