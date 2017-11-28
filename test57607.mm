#import <cstdlib>
#import <iostream>

#import <Foundation/NSString.h>

int main()
{
	[] () { std::cout << "Hello world!" << std::endl; }();
	
	std::cout << [@"Hello world!" UTF8String] << std::endl;
	
	return EXIT_SUCCESS;
}
