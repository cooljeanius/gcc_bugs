#include <utility>
#include <tuple>

template<typename T, T ...I>
auto ignore_n(std::integer_sequence<T, I...>) {
    return std::make_tuple((I, std::ignore)...);
}

template<typename... Ts>
auto function(Ts... ts)
-> decltype((std::tuple_cat(
							ignore_n(std::make_index_sequence<sizeof(char[int(sizeof...(Ts))-1])-1>   ()),
							std::tuple<double, bool>()) = std::forward_as_tuple(ts...)), void())
{
	
}

int main() {
	function(2);
	function(1, 2, 3);
}
