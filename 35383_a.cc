struct B {};

namespace N {
	void foo(){}  // If you comment this line, everything is well.
	
	template <class T>
	void bar(T& t) {
		foo(t);
	}
	
	void foo(::B&) {
	}
}

int main() {
	B tmp;
	N::bar(tmp);
	
	return 0;
}
