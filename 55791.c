# include <stdlib.h>

extern void g(char *);

void f()
{
	char *p;
	
	// wrong type in sizeof in malloc
	p = (char *) malloc( 10 * sizeof( char *));
	
	g(p);
}
