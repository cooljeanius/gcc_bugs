/*  derived from ISU's tests RTED_OpenMP/C/SECTION_B/c_B_7_3_e_D_s.c
 c_B_7_3_f_D_s.c, c_B_7_3_g_D_s.c   */
#include <omp.h>
#define N 17

void sub(double *shared_var,double result_var[],int thread_num){
    int i = 0;
	
#pragma omp for firstprivate(shared_var)
    for (i=0;i<N;i++){
        result_var[thread_num] = *shared_var;
    }
}
