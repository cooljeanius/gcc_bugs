#include <stdio.h>

struct BGZF {
    unsigned errcode:16, is_write:2, is_be:2;
};

int main(void) {
	struct BGZF A = {0};
	
#pragma omp parallel
#pragma omp master
#pragma omp atomic update
	A.errcode |= 1;
	
	if (A.errcode != 1) {
		printf("failed\n");
		return 1;
	} else {
		printf("success\n");
		return 0;
	}
}
