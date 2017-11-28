class A {
public:
    static void destroy() { }
};

class B : public A
	{
	};

const int tbl[1] = {
B::destroy == A::destroy ? 0 : 1
};
