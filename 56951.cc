#include <vector>

using std::vector;
using std::iterator_traits;

template <typename> struct remove_pointer;
template <typename T> struct remove_pointer<T *> { typedef T type; };

template <typename It>
class iterator_ptr {
	typedef typename remove_pointer<
		typename iterator_traits<It>::value_type>::type value_type;
	value_type Get();
};

class Table;

class F {
	typedef iterator_ptr<vector<Table *>::iterator> iterator;
	iterator tables_begin() {}
};

class Table {
	virtual void Fn() = 0;
};
