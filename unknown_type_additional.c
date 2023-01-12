int foo(void)
{
  struct coresecthead chead; /* intentionally unknown */
  /* (assume it gets set somehow) */
  switch (chead.cs_stype)
  {
  case 1: break;
  default: break;
  }
  return 0;
}
