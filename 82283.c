/*
 * gcc bug.c -Wextra -c
 */

struct A {
    int *a;
    int b;
};

union B {
    struct A a;
};

union B data1 = {
.a.a = & (int) { 0 },
.a.b = 0
};

union B data2 = {
.a.b = 0,
.a.a = & (int) { 0 }
};
