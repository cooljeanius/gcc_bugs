template<typename T, typename T::X *> void f() { } 
template<typename T, class T::X *> void f() { } 

struct A { typedef int X; }; 
struct B { void X(); class X { }; }; 

class B::X x1; 
int x2; 

int main() { f<A, &x2>(); f<B, &x1>(); }
