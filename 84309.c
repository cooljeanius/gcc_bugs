typedef __SIZE_TYPE__ size_t;
double pow (double x, double y);
double log2 (double x);

int
main ()
{
  size_t a = 1024;
  size_t b = 16 * 1024;
  size_t c = pow (2, (log2 (a) + log2 (b)) / 2);
  if (c != 4 * 1024)
    __builtin_abort ();
  return 0;
}
