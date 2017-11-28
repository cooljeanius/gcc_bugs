template<typename T> struct S { enum E : int; };
template<typename T> enum S<T>::E : T { e };
S<char>::E x = S<char>::e;
