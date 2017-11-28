struct A { virtual ~A(); };     // 4
struct B { virtual ~B(); };     // 4

struct X : virtual public A,
virtual public B {  // 8
};

struct Y : virtual public B { // 4
	virtual ~Y();
};

struct Z : virtual public X, public Y {   // 8
	Z();
};

Z::Z() {}
