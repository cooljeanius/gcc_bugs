struct A {
	static constexpr int foo () { return 1; }
};

struct B: A {
	static constexpr int bar () { return 2; }
	enum E { e = B::foo () };
	enum F { f = B::bar () };
};
