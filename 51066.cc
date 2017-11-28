struct A { };
struct B { B(A) {} };

A a;
B&& b = a;

void f(B&&);
A aa;
