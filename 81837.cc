template <class inT>
union Unit
{
  struct
  {
    inT a, b;
  } header;
  double align;
};



int
main (void)
{
  Unit <int> *chunk;

  chunk = new Unit <int> [10] {.align = 0};
  delete [] chunk;
  return 0;
}
