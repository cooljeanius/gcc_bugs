class C {
	int f() = delete;
};

int f() {
	return C().f();
}
