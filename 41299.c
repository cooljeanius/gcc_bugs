struct s1;

struct s2
{
  int (*f3) (struct s1 *, void *, int, const char *);
};

struct s1
{
  struct s2 *x;
};

int f1 (struct s1 *, void *, unsigned long long, int, void *);

void
f2 (struct s1 *a, void *b)
{
  char buf[512];

  f1 (a, b, 0, 0, buf);
  (a->x->f3) (a, b, 0, buf);
}
