unsigned long long foo1 (void)
{
  return (0);
}

double foo (void)
{
  unsigned long long cnt = foo1 ();
  return ((double) cnt);
}
