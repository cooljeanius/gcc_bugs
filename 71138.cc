template<typename T>
constexpr bool p(T) { return true; }
template<typename T>
concept bool C = requires(T t) {
requires p(t); // An error should be reported here.
};

static_assert(C<int>); // #1: error: ‘t’ is not a constant expression

template<C T>
int f(T) { return 1; }
auto x = f(1); // #2: (3x) error: ‘t’ is not a constant expression
