int p;
long *q;

void *
f1 (int x)
{
  return x ? p : q;
}

void *
f2 (int x)
{
  return x ? q : p;
}
