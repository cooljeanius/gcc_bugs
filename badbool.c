#include <stdbool.h>

int foo(bool x)
{
	if ((x==1)+(x==2)==1)
	{
		return 2;
	}
	return 1;
}

int bar(int x)
{
        if ((x==1)+(x==2)==1)
        {
                return 4;
        }
        return 3;
}
