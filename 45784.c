//  derived from OpenMP test omp3c/c03_2_5_1_2c.c
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#define NT 4
#define INCREMENT 2
#define ARRAY_SIZE INCREMENT*NT

// VLAs are standard only in C99; might as well use a C99-specific data type
// (long long int) while we're testing C99-specific features
void vla_test(int num_threads) {
    long long int *ptr, vla[INCREMENT*num_threads];
    //long long int *ptr, vla[INCREMENT*40];
    int i;
	
    // variable-length array initialized to -1
    for (i = 0; i < sizeof(vla)/sizeof(vla[0]); i++) {
        vla[i] = -1;
    }
	
#pragma omp parallel shared(vla)
    {
#pragma omp for schedule(static, 1)
        for (ptr = vla; ptr < vla + sizeof(vla)/sizeof(vla[0]); 
             ptr = ptr + INCREMENT)
			*ptr = omp_get_thread_num();
    }
	
    for (i = 0; i < sizeof(vla)/sizeof(vla[0]); i++) {
        if (vla[i] != (i % INCREMENT == 0 ? (i/INCREMENT) % num_threads : -1)) {
            fprintf(stderr, "%s:%i: FAIL - vla[%i] == %lli != %i\n", 
                    __FILE__, __LINE__, i, vla[i], 
					(i % INCREMENT == 0 ? (i/INCREMENT) % num_threads : -1));
            exit(1);
        }
    }
}

int main(void) {
    omp_set_dynamic(0);
    omp_set_num_threads(NT);
	
    vla_test(NT);
	
    return 0;
}
