struct B1 { void f(); };
struct B2 { void f(double); };

struct I1 : B1 { };
struct I2 : B1 { };

struct D: I1, I2, B2 {
	using B1::f;  using B2::f;
	void g() {
		f(); 
	}
};
