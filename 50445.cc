extern int const values[] = { 1, 2, 3 }; 

template<int const *values> struct X { 
	static int const val0 = values[0]; 
}; 

int array[X<values>::val0];
