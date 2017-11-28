template <class T>
class C {
	void f();
	void g() { }
};

template<class T>
void C<T>::f() { }

namespace {
	struct X { };
}

template class C<X>;
