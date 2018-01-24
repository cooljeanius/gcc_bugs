
struct ThingWithDtor
{
  ~ThingWithDtor();
};

struct Aborter
{
  __attribute__((noreturn)) ~Aborter();
};

int foo(int x)
{
  ThingWithDtor t __attribute__((unused));
  if (x)
    return x;
  Aborter();
}
