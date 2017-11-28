#define F(f, ff) \
void f (const char *s = ff) { \
__builtin_printf (#ff " = \"%s\"\n", s); \
}

F (f0, __func__);
F (f1, __FUNCTION__);
F (f2, __PRETTY_FUNCTION__);
F (f3, __builtin_FUNCTION());

int main () {
    f0 ();
    f1 ();
    f2 ();
    f3 ();
}
