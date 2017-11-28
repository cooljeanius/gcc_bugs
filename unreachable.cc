__attribute__((__noreturn__))
void abort();


static
void
unreachable_1()
{
  return;
  (abort(), 0);
}

template <typename T>
static
void
unreachable_2(T)
{
  return;
  (abort(), 0);
}

int
main()
{
  unreachable_1();
  unreachable_2(2);
}
