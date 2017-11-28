struct A 
{ 
	int j;
	int i; 
};

void foo()
{
	char buf[sizeof(struct A)];
	
	// warns
	((struct A*)buf)->i = 1;
	
	// does not warn
	struct A* p = (struct A*) buf;
	p->i = 4;
}
