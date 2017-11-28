struct A {  
	template<
    typename ...T, 
    template<typename std::enable_if<
	std::is_same<T, int>::value, int
	>::type ...
    > class...
	>
	A(T...); 
}; 

A a = {1, 2.0, 3};
