void bar();
void
foo (int x)
{
  if (x) return

  bar ();
}

void
foo2 (int x)
{
  if (x)
    return

  bar ();
}
