#include <stdio.h>
int main(int argc, char* argv[])
{
    int color = argc;
    ++color = (color > 3) ? 0 : color;
    printf("argc = %d, color = %d\n", argc, color);
    return 0;
}
