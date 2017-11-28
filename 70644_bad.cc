struct Base { Base(int) { } };

struct X;
int foo(X*);

struct X : virtual Base {
	X() : Base(foo(this)) { }
};

int foo(X* x) { Base* b = x; return 0; }

int main() {
	X x;
}
