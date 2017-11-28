template<class CppType>
struct make_literal;

template<>
struct make_literal<int> {
	typedef int type;
};

template<class T>
struct make_expression {
	typedef typename make_literal<T>::type type;
};

struct column {
	template<class T>
	typename make_expression<T>::type operator= (const T& t) const {
		return typename make_expression<T>::type(t);
	}
};

struct expression : column
{
    expression() { }
    using column::operator =;
};

int main()
{
    expression ex;
    ex = 2;
	
    return 0;
}
