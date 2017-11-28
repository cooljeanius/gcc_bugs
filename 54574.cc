class C
	{
	public:
		C (int* Items[]);
	};

template<class T> class A : public C
	{
	public:
		A (int Items[])
		: C (Items) {        // C is called with wrong parameter type, expects int**
		};
	};

int i[5];
A<int> yyy(i);
