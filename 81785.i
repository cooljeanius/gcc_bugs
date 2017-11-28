# 1 "81785.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "81785.c"
# 1 "repro.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "repro.c"

void idxCopy(volatile int y[],volatile int x[])
{
 unsigned int k;
 unsigned int i;
 i = 0U;
 k = 2147483648U;
 while (k < 2147483658U) {
  y[i] = x[(int)k - (int)2147483611];
  k++;
  i++;
 }
}

int main()
{
 volatile int y[100];
 volatile int x[100];
 int i;
 x[0] = 1;
 y[0] = 0;
 for (i=1; i<100; i++) {
  x[i] = x[i-1] + i;
  y[i] = 0;
 }
 idxCopy(y,x);
 return 0;
}
