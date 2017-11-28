typedef int foo;
namespace Foo {
	int f();
	foo g();
}

int ::Foo::f() { return 0; }
foo ::Foo::g() { return 1; }
