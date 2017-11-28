#pragma GCC diagnostic error "-Wformat"
#pragma GCC diagnostic error "-Wformat-nonliteral"

@class NSString;

extern void NSLog(NSString *, ...) __attribute__((format(NSString, 1, 2)));

void foo ()
{
	NSLog(@"Hi!");
	NSLog(@"%@", @"Hi!");
}
