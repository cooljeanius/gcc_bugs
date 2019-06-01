#include <stdio.h>

int main(void)
{
  const char fmt1[] = "%s";
  const char *fmt2 = "%s";
  const char *const fmt3 = "%s";
  printf(fmt1, 123); // checked
  printf(fmt2, 456); // not checked
  printf(fmt3, 789);
}
