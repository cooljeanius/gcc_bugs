#if __cplusplus
extern "C" void* memcpy (...);
#else
void* memcpy ();
#endif

void f (char *d)
{
  memcpy (3, d, "123");
}
