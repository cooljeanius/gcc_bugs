void* __attribute__((returns_nonnull)) f(void)
{
  return 0;   // missing -Wnonnull
}

void* __attribute__((returns_nonnull)) g(unsigned int n)
{
  return __builtin_malloc(n);   // missing -Wnonnull
}

void* __attribute__((returns_nonnull)) h(unsigned int n)
{
  static char buf[256];

  return ((n < sizeof(buf)) ? buf : __builtin_malloc(n));  // missing -Wnonnull
}
