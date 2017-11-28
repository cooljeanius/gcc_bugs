#include <stdio.h>

struct {
	unsigned char field1 :3;
	unsigned char field2 :5;
} teststruct;

int main ( void ) {
	
	unsigned char test;
	
	if (teststruct.field1 < 0) //issues no warning
		printf("Field1 was negative\n");
	
	if (test < 0) //issues warning
		printf("Test was negative\n");
	
	return 0;
}
