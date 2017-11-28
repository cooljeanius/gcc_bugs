#import <objc/Object.h>
#import <stdio.h>

void
foo2 (void)
{
	printf ("foo2\n");
}

int
main (void)
{
	id o = nil;
	
	@try {
		printf ("before throw\n");
		@throw o;
		printf ("after throw\n");
		
	} @catch (id ue) {
		if (ue != nil)
			foo2 ();
		else
			printf ("not foo2\n");
	}
	
	return 0;
}
