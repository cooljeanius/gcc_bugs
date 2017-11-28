void sink (void*);

void f (const char *s)
{
	char a[256];
	
	__builtin_strcpy (a, s);   // dead store
	__builtin_memset (a, 0, sizeof a); 
	
	sink (a);
}

void g (const char *s)
{
	char a[256];
	
	__builtin_strncpy (a, s, sizeof a);   // dead store
	__builtin_memset (a, 0, sizeof a);   
	
	sink (a);
}
