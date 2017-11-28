template <typename T> struct Make_Instance { static T value; };

struct A {};

template <A& BASE> struct CRef {};

template <A& BASE> using TRef = CRef<BASE>;
template <typename T> using Ref = TRef<Make_Instance<T>::value>;
