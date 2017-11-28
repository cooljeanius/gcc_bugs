template<typename X,typename Y> struct is_same { static bool const value=false; };
template<typename X> struct is_same<X,X> { static bool const value=true; };
template<typename... X> struct U {};
struct Q { typedef U<int x,int y> C; };
typedef char check[is_same<int,Q::C>::value ? 1 : -1];
