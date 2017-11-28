struct X
{
	const char* p;
	int i;
};

X x[] = {
{ "hello", 0 },
{ 0, 0 }, // !
{ 0, 0 }, // !
{ 0, 0 }  // !
}; // all 3 errors marked here
