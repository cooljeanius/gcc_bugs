struct A {
	operator int*() { return 0; }
	operator int*() const { return 0; }
};

int main() {
	A a;
	int *p = a; // works
	delete a; // shouldn't work, but does!
}
