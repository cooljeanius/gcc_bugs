void g(unsigned long *);
void h(void) __attribute__((const));

void f(void)
{
  unsigned long i;
  
  h();
  i++;
  g(&i);
}
