#include <stdio.h>

void t () { return 1; } // does not error
int b () { return; }    // does

int main()
{
    t(); b();
	
    return 0;
}
