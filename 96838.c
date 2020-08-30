typedef __SIZE_TYPE__ size_t;

void* salloc (int) __attribute__ ((alloc_size (1)));
void* ualloc (unsigned) __attribute__ ((alloc_size (1)));

void* f (size_t n)
{
  if (n <= __INT_MAX__)
    n =  __INT_MAX__ + 1LU;

  void *p = salloc (n);          // missing warning: integer overflow
  __builtin_memset (p, 0, n);    // buffer overflow here
  return p;
}

void* g (size_t n)
{
  if (n <= __INT_MAX__)
    n =  __INT_MAX__ + 1LU;

  void *p = ualloc (n);          // missing warning: integer wraparound
  __builtin_memset (p, 0, n);    // buffer overflow here
  return p;
}

