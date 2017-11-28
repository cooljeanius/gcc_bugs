template<typename T>
concept bool Never = requires(T t) {
{ t != 42 };
};

template<typename T> concept bool First = Never<T>;
template<Never T> concept bool Second = true;

int main()
{
    static_assert(!Never<void*>);
    static_assert(!First<void*>);
    static_assert(!Second<void*>);  // static assertion failed
}
