#include <stdio.h>
#import <stdlib.h>
#import <objc/Object.h>

@interface TestObject : Object
{
	int internalInt;
}

- (int)add:(int)anInt;
- (int)subtract:(int)anInt;
- (int)value;

@end


@implementation TestObject

- (id)init
{
	if ((self = [super init]))
	{
		internalInt = 0;
	}
	
	return self;
}

- (int)add:(int)anInt
{
	internalInt += anInt;
	return internalInt;
}

- (int)subtract:(int)anInt
{
	internalInt -= anInt;
	return internalInt;
}

- (int)value
{
	return internalInt;
}

@end


int main(int argc, char** argv)
{
	TestObject *aTestObject = [[TestObject alloc] init];
	printf("Initial Value: %d\n", [aTestObject value]);
	printf("+45 Value: %d\n", [aTestObject add: 45]);
	printf("-63 Value: %d\n", [aTestObject subtract: 63]);
	
	[aTestObject add: 103];
	printf("+103 Value: %d\n", [aTestObject value]);
	
	return (EXIT_SUCCESS);
}
