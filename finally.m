#import <objc/Object.h>
#import <stdio.h>

#if F == 1
int
main (void)
{
	id o = nil;
	
	@try {
		
		printf ("trying\n");
		
	} @catch (id ue) {
		
		printf ("catching id\n");
		
	} @finally {
		
		printf ("finalizing\n");
		
	}
	
	printf ("done\n");
	return 0;
}
#endif

#if F == 2
int
main (void)
{
	id o = nil;
	
	@try {
		
		printf ("trying\n");
		@throw o;
		
	} @catch (id ue) {
		
		printf ("catching id\n");
		
	} @finally {
		
		printf ("finalizing\n");
		
	}
	
	printf ("done\n");
	return 0;
}
#endif

#if F == 3
int
main (void)
{
	id o = nil;
	
	@try {
		
		printf ("trying\n");
		@throw o;
		
	} @catch (Object *ue) {
		
		printf ("catching id\n");
		
	} @finally {
		
		printf ("finalizing\n");
		
	}
	
	printf ("done\n");
	return 0;
}
#endif

#if F == 4
int
main (void)
{
	id o = nil;
	
	@try {
		
		printf ("trying\n");
		@throw o;
		
	} @catch (id ue) {
		
		printf ("catching id\n");
		@throw;
		
	} @finally {
		
		printf ("finalizing\n");
		
	}
	
	printf ("done\n");
	return 0;
}
#endif
