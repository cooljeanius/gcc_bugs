/* Contributed by Nicola Pero <nicola.pero@meta-innovation.com>, May 2011.  */
#include <objc/objc.h>

@interface A
- (id) method:(id)arg0 :(id)arg1;
@end

id function (A *x)
{
	return [x method:x :x];
}
