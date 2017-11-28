#define Assert(e)  extern int Assert [1 - 2 * !(e)]

typedef int A __attribute__ ((aligned (1)));
extern A a;

void f1 (void) {
    __builtin_printf ("%zu, %zu\n", __alignof__ (A), __alignof__ (a));
}

typedef int A __attribute__ ((aligned (32)));
extern A a;

void f32 (void) {
    __builtin_printf ("%zu, %zu\n", __alignof__ (A), __alignof__ (a));
}

typedef int A __attribute__ ((aligned (2)));
extern A a;

void f2 (void) {
    __builtin_printf ("%zu, %zu\n", __alignof__ (A), __alignof__ (a));
}

int main (void)
{
    f1 ();
    f32 ();
    f2 ();
}

A a;
