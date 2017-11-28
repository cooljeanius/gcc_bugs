template <class T>
int foo (T, int (*)[sizeof (T) - 5] = 0);

int i = foo (123);
