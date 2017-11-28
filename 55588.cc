template <class T> struct A {
	void f(int);
	template <class U> void f(U);
};
template <class T> void f(T t) {
	A<T> a;
	a.template f<>(t); // OK: calls template
	a.template f(t);  // error: not a template-id
}

int main() {
	f(1);
}
