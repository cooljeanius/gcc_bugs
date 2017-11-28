template<typename T>
struct A {
	enum class B {
		X = T::value
	};
};

int main() {
	A<int> a;
}
