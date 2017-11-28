#include <stdio.h>
typedef struct {
    double minValue, maxValue;
} Range;

void getNewRange(Range*);

void sub() 
{
    Range v0, v1;
	
    for (int i=0; i < 2; i++) {
        getNewRange(&v1);
        if (i == 0) {
            v0.minValue = v1.minValue;
            v0.maxValue = v1.minValue;
        } else {
            if (v0.minValue > v1.minValue)
                v0.minValue = v1.minValue;
			
            if (v0.maxValue < v1.maxValue)
                v0.maxValue = v1.maxValue;
        }
    }
	
    printf("min=%f, max=%f\n", v0.minValue, v0.maxValue);   
}
