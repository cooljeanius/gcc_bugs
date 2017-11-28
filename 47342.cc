template<class T>
struct X : T
{
    void f();
};

template<class T>
inline void
X<T>::f()
{ }

template<typename T>
struct Y
{ };

#ifdef CORRECT
template<class T>
struct X< Y<T> > : Y<T>
{
    void f();
};
#endif

template<class T>
inline void
X< Y<T> >::f()    // xxx
{ }

