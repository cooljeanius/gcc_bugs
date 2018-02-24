int main (void)
{
  int *p = 0;
  return p[123];   // missing -Wnonnull
}
