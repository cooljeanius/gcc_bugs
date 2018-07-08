int f()
{
  unsigned long long cu32 = 1;
  asm("%0"::"a"(cu32));
}
