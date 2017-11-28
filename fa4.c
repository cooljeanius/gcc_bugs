#include <stdio.h>

typedef struct s {
    int _;
    char str[];
} s;
s first = { 0, "abcdefgh" };

int main(int argc, const char **argv) {
    char v[] = "xxxxxxxx";
    s second = first;
    printf("%p %p %p\n", (void *) &first, (void *) &second, (void *) v);
    printf("<%s> <%s>\n", v, first.str);
}
