struct foo {
  int operator()() { return 42;}
  int x;
};

int main()
{
  int i = 23;
  auto x = [&i]() {return 25;};
  x();
  return 0;
}
