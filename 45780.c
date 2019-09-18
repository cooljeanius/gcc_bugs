#include <stdbool.h>
#include <stddef.h>

static bool f1(int i)
{
  return i;
}

static bool f2(int i)
{
  i = !!i;
  return i;
}

int main(int argc, char **argv)
{
  bool a = true;
  bool b = a++;
  bool c = ++b;
  bool d = argc;
  bool e = a & argc;
  bool f = b | argc;
  bool g = c ^ argc;
  f &= argc;
  g |= argc;
  e ^= argc;
  if (f1(argc))
    e--;
  else
    --e;
  if (!!argc)
    return ((argv != NULL) ? d : ((f > g) ? e : (f << g)));
  else
    return f2(argc);
}
