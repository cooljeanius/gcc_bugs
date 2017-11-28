struct Foo
{
	char* a;
	int b;
	float c;
	
	Foo() :
	a(0), // 1 should be here
	b(0),
	c(0) // 1
	{
	}
};

struct Bar
{
	void Fn(char* p = 0); // 2, OK
};

template<typename T>
struct TBar
{
	void Fn(char* p = 0); // 3 should be here
};

template<typename T>
struct TBaz : TBar<T>
{
	void Fn(char* p = 0); // 4 should be here
};

void foobar(TBar<int>* br, TBaz<int>* bz)
{
	br->Fn(); // 3
	bz->Fn(); // 4
}

int main()
{
}

