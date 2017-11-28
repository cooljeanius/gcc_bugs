#include <stdlib.h>
#include <string.h>

struct node { struct node *next; int value; };

void free_list (struct node *head)
{
	struct node *p;
	
	for (p = head; p != 0; p = p->next)
		free (p);
}

void foobar (void *p, unsigned n)
{
	memset (p, 0, n);
	free (p);
	free (p);
	memset (p, 0, n);
}
