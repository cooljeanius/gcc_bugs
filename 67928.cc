void print() {}

template<class T, class... types>
void print( const T& arg1, const types&... args );

template<class T, class... types, unsigned U = sizeof(&T::to_string)>
void print( const T& arg1, const types&... args ) {
print( args... );
}

template<class T, class... types>
void print( const T& arg1, const types&... args ) {
    print( args... );
}


struct test { void to_string() const {} };

int main() {
  	print( test{}, 1 );
}
