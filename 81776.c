void f (void*);

struct S { char *a, *b; };

void g1 (struct S *p, const char *s, unsigned n)
{
  p->a = __builtin_malloc (n + 1);
  p->a[0] = 123;

  p->b = __builtin_malloc (n + 1);

  __builtin_sprintf (p->b, "%s", s);

  if (p->a[0] != 123)     // can never be true
    __builtin_abort ();   // eliminated

  __builtin_sprintf (p->b, "%s", s);

  f (p);
}

void g2 (struct S *p, const char *s, unsigned n)
{
  p->a = __builtin_malloc (n + 1);
  p->a[0] = 123;

  p->b = __builtin_malloc (n + 1);

  __builtin_sprintf (p->b, "%-s", s);

  if (p->a[0] != 123)     // can never be true
    __builtin_abort ();   // not eliminated

  __builtin_sprintf (p->a, "%-s", s);

  f (p);
}
