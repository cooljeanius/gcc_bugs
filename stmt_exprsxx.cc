class A
{
public:
    int Foo(void);
};

int decay(void)
{
    A a;
    return ({a;}).Foo();
}

#define X decay
#define macro(a)  ({__typeof__(a) b = (a); b + 3; })
template<typename T> T function(T a) { T b = a; return b + 3; }

void foobar()
{
  macro(X());
  function(X());
}
