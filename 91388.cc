template<typename T> struct copyable;

template<typename T>
T func(const T& t)
{
	static_assert(copyable<T>::value);
	
#if 1
	if constexpr (copyable<T>::value)
		return t;
#elif 0
	return t;
#endif
}

struct NoCopy {
	NoCopy() { }
	NoCopy(const NoCopy&) = delete;
};

template<> struct copyable<NoCopy> { static constexpr bool value = false; };

int main()
{
	NoCopy nc;
	func(nc);
}
