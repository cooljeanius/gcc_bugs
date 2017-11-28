#pragma pack(push, 1)
struct foo1 {
	char a;
	int b;
};
#pragma pack(pop)

struct foo2 {
	char a;
	int b;
} __attribute__((__packed__, aligned(1) ));

int main()
{
	foo1 f1;
	foo2 f2;
	
	int& i1 = f1.b; // (1) ok
	int& i2 = f2.b; // (2) cannot bind packed field 'f2.foo2::b' to 'int&'
	
	return 0;
}
