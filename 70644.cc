struct Base { Base(int) { } };

int foo(Base*) { return 0; }

struct X : virtual Base {
	X() : Base(foo(this)) { }
};

int main() {
	X x;
}
