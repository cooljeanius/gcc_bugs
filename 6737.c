void foo(void) __attribute__((__target__("stackrealign")));

void foo(void)
{
  // ...
}

void __attribute__((force_align_arg_pointer)) bar(void *baz)
{
  // ...
}
