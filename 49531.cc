struct A {
	template<typename T> operator T();
};

void f() { &A::operator int; }
