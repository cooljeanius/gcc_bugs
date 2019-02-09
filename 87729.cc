class Foo
{
public:
  virtual void f(int);
};

class Bar : public Foo
{
public:
  virtual void f(short);
};
