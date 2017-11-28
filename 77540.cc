struct A { };

struct B : A
{
	B() : A(),  // N.B. erroneous comma here
	{
	}
	
	typedef int C;
	
	C c;
};
