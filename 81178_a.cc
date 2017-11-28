template<class>
concept bool C1 = true;

template<class T>
using alias = typename T::type;

template<class T>
requires C1<alias<T>>
void bar(T) {}

int main() { bar(42); }
