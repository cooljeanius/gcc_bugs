/* Compile with: gcc 57428.m -fobjc-exceptions -o test -lobjc */

#include <stdio.h>
#include <stdlib.h>

#import <objc/runtime.h>

@interface Object {
	Class isa;
}
+ (id) alloc;
- (id) init;
- (void) free;
@end

@implementation Object
+ (id) alloc
{
	return class_createInstance(self, 0);
}
- (id) init
{
	return self;
}
- (void) free
{
	object_dispose(self);
}
@end

@interface Frob: Object
@end

@implementation Frob: Object
@end

int proc() {
	@throw [[Frob alloc] init];
}

int foo()
{
	@try {
		return proc();
	}
	@catch (Frob *) {
		printf("Catch(Frob *)\n");
		return 0;
	}
	@catch (Object *) {
		printf("Catch(Object *)\n");
		return 0;
	}
	@catch (id) {
		printf("Catch(id)\n");
		return 0;
	}
}

int main(void)
{
	foo();
	return 0;
}