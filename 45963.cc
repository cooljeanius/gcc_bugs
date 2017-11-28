class foo {
public:
	foo(int i): i(i) {}
	foo() : i(0) {}
	int i;
};
class bar {
public:
	bar() : a(1) {}
	bar(bool) : b(1) {}
	bar(int) : b() {}
	int a[5];
	foo b[5];
};

int main() {
	return 0;
}
