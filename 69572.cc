typedef struct A {
    alignas (4) int c:1;
    alignas (4) A () {
        register int i alignas (4);
        (void)i;
    }
    template <class T>
    void foo (alignas (T) int);
	
    alignas (4) int bar ();
    enum E { } alignas (4);
} A;
