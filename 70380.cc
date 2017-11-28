int x;

struct A {
	constexpr A (bool b) : m (b ? 42 : x) { }
	constexpr int foo () const { return m; }
	int m;
};

struct B {
	constexpr B (bool b) : m (b ? x : 42) { }
	constexpr int bar () const { return m; }
	int m;
};

// constexpr int a0 = A (false).foo ();       // not constant, rejected
constexpr int a1 = A (true).foo ();        // valid, accepted
constexpr int b0 = B (false).bar ();       // valid, accepted
// constexpr int b1 = B (true).bar ();        // not constant, rejected

template <bool X>
int f (int (*)[A (X).foo ()] = 0) { return !X; }

template <bool X>
int f (int (*)[B (X).bar ()] = 0) { return X; }

constexpr int f0 = f<0>();            // valid, rejected
constexpr int f1 = f<1>();            // valid, rejected
