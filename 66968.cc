template<typename T> struct thing { };

template<typename T, typename XXX>
bool operator==(const thing<T>&, const thing<XXX>&);

struct nested { typedef int name; };

template<typename A, typename B>
void func(typename A::name const&, const B) { }

template<typename A, typename B>
void func(typename A::name const&, const thing<B>) { }

int main()
{
	thing<int> ti;
	func<nested>(1, ti);
}
