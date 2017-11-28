#include <Foundation/Foundation.h>
#include <iostream>

int main (void)
{
	try {
		throw 0;
	} catch (int & e) {
		std::cout << "caught" << std::endl;
	}
	
	NSString *name = @"GNUstep !";
	NSAutoreleasePool *pool;
	pool = [NSAutoreleasePool new];
	[pool drain];
}
