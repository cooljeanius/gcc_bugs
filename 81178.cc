template<class>
concept bool C1 = true;

template<class T>
using alias = typename T::type;

template<class T>
concept bool C2 = C1<alias<T>>;

void bar(C2) {}

int main() { bar(42); }
