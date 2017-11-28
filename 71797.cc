static inline unsigned f(unsigned x) {
    return x;
}

const unsigned FOO_CONSTANT = f(4);

class Foo {
    Foo() { create_a_compile_error; };
};
