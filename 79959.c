#include <stdlib.h>

int
main(int argc, char **argv)
{
	switch (argc)
	{
	  case 1:
		  do { if (__builtin_constant_p(20) && (20) >= 20) abort(); } while(0);
	  default:
		  return 0;
	}
}
