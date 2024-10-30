struct s { int a, b; };
void f (int);
#define F(X) f(X)
void g (void)
{
  f ((struct s){0,1}.a); /* dg-warning "" */
  F ((struct s){0,1}.a); /* dg-error "passed 2 arguments, but takes just 1" */
  F (((struct s){0,1}.a)); /* dg-bogus "passed 2 arguments, but takes just 1" */
}
