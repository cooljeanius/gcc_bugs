class A
{
public:
  A();

private:
  A(const A&);   // private copy ctor
};

A makeA(void);
void foo(const A&);

void bar(void)
{
  foo(A());       // error, copy ctor is not accessible
  foo(makeA());   // error, copy ctor is not accessible

  A a1;
  foo(a1);        // OK, a1 is a lvalue
}
