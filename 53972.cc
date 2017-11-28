template <unsigned I>
struct Constify {
	enum { value = I };
};

template <unsigned N>
constexpr char
sub1(const char (&array)[N], unsigned I)
{
	return Constify<array[I]>::value;
}

template <unsigned N>
constexpr char
sub2(const char (&array)[N], unsigned I)
{
	return array[I];
}

int
main()
{
	sub1("foo", 2);
	enum {
		value = sub2("foo", 2)
	};
	Constify<value>::value;
}
