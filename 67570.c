/* 67570.c */

#include <stdio.h>

int main(void)
{ 
	int pos;
	int pos1;
	int pos2;
	long double A = 0.0L;
	
	union { 
		long double X; 
		char unsigned mask[sizeof(A)]; 
	} alfa;
	
	alfa.X = A;
	pos = 32;
	pos1 = (11 - ((pos - 1) / 8));
	pos2 = 8;
	
	alfa.mask[pos1] = (((char unsigned)1U << (sizeof(char unsigned) * 8 - pos2)) ^ alfa.mask[pos1]);
	
	printf("   [alfa.X]         = %LE \n", alfa.X); 
	printf("   [alfa.X == 0.0L] = %i  \n", (alfa.X == 0.0L)); 
	printf("   [alfa.X != 0.0L] = %i  \n", (alfa.X != 0.0L)); 
	printf("   [alfa.X <= 0.0L] = %i  \n", (alfa.X <= 0.0L));   
	printf("   [alfa.X >= 0.0L] = %i  \n", (alfa.X >= 0.0L));   
	printf("   [alfa.X < 0.0L]  = %i  \n", (alfa.X < 0.0L));   
	printf("   [alfa.X > 0.0L]  = %i  \n", (alfa.X > 0.0L));   
	
	return 0;
}

/*
 Results:
 [alfa.X]        = 0.000000E+000                                                                      
 [alfa.X == 0.L] = 0                                                                                  
 [alfa.X != 0.L] = 1                                                                                  
 [alfa.X <= 0.L] = 0                                                                                  
 [alfa.X >= 0.L] = 0                                                                                  
 [alfa.X <  0.L] = 0                                                                                  
 [alfa.X >  0.L] = 0 
 
 Note:
 Binary representation IEEE 754 of alfa.X is:
 0000000000000000 0 000000000000001 0000000000000000000000000000000000000000000000000000000000000000
 It seems that comparison rules fails in this case.
 
 Microsoft Windows XP Profesional version2002 Service Pack 3.
 Gcc 4.8.0 win32 mingw32 -std=C99 
 */
