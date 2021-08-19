void f (const int&);
void g ()
{
  int *p = 0;
  f (*p);
}
