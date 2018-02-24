int a[8];

int* f (unsigned i)
{
  return i < sizeof a ? a : 0;
}

int main (void)
{
  int *p = f (sizeof a);
  return *p;   // missing -Wnonnull
}
