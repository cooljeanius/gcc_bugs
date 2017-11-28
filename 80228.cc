struct A { int n, a[]; };

struct B
{
	int n = 3;
	int a1[] = { 2, 1, 0 };      // rejected (see pr72775)
} b;

struct C
{
	A a2 = { 3, { 2, 1, 0 } };   // accepted
} c;

struct D
{
	int n, a3[];
	
	D ():
    n (3),
    a3 {2, 1, 0} { }           // silently accepted
} d;

struct E
{
	A a4;
	
	E ():
    a4 {3, { 2, 1, 0 } } { }   // accepted
} e;
