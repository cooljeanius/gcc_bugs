void f (const void*);

int g (void)
{
	int a, b;
	f (&a);
	
	int i = b;   // -Wuninitialized (good)
	
	return i;
}

int h (void)
{
	int a, b;
	f (&a);
	
	int i = b;   // missing -Wuninitialized (bug)
	
	f (&b);      // &b escapes here
	
	return i;
}
