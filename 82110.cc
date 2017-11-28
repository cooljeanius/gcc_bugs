struct X {
    X() = delete;
};

template <class T>
concept bool C = requires(T t) {
new T;
};

template <class T>
concept bool D = requires(T t) {
new T[1];
};

int main() {
    static_assert(!C<X>); // ok
    static_assert(!D<X>); // error
}
