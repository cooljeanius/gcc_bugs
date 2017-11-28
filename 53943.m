#include <objc/runtime.h>
#include <objc/Object.h>
@interface Interface: Object
+ (id) new;
@end
@implementation Interface
+ (id) new
{
	return class_createInstance(self, 0);
}
@end
int main()
{
	@throw [Interface new];
}
