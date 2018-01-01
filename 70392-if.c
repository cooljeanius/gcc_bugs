#include <stdbool.h>

int
main (void)
{
  int i, i2, i3, i4;
  bool b, b2, b3, b4;
  int data, data2;

  #pragma acc parallel if(i)
  ;

  #pragma acc parallel if(b)
  ;

  #pragma acc kernels if(i2)
  ;

  #pragma acc kernels if(b2)
  ;

  #pragma acc data if(i3)
  ;

  #pragma acc data if(b3)
  ;

  #pragma acc update if(i4) self(data)
  ;

  #pragma acc update if(b4) self(data2)
  ;

}
