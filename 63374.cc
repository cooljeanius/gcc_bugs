class B {
public:
	B(int x) : z(x) {}
	int z;
};
class A {
public:
	B b1;
	int a1;
	B b2;
	int a2;
	B b3;
	int b4;
	B a4;
	
	A(int x) : b1(x), b2(x), b3(x), b4(x) {}
};
