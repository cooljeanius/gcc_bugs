template<typename ...> class g;

template<typename ...T>
class __attribute((visibility("default"))) g
{
    g() = default;
	
    static int f(int x)
    {
        return g<>::yyy::u(x); // g<> instantiated here
    }
	
	
    struct yyy
    {
        static int u(int x){
            return x+ sizeof...(T);
        }
    };
};

extern template class __attribute((visibility("default"))) g<>; 
template class  g<>;
