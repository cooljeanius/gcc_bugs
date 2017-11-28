template <class S> class A {
	template<class T, class U> static T pi;
};
template <> template <class T> double A<int>::pi<double, T> = 3.1415926535897932385;
extern template double A<int>::pi<double, int>;
template double A<int>::pi<double, int>;
