struct some_struct { int foo; };
void copy_something(void *p, const void *s) {
    struct some_struct __attribute__((aligned(8))) *_d = p;
    struct some_struct __attribute__((aligned(8))) *_s = s;
    *_d = *_s;
}
