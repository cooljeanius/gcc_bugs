void
f (double d, char *target)
{
  float f = d;
  __builtin_memcpy (target, &f, sizeof (f));
}
