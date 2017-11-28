typedef char *cptr;

char *a;

__attribute__ ((vector_size(16))) cptr t;

int f0(void)
{
	__attribute__ ((vector_size(16))) int t1 =
	(__attribute__ ((vector_size(16))) int )t;
}

int f1(void)
{
	__attribute__ ((vector_size(16))) int t1 =
	(__attribute__ ((vector_size(16))) int )*t;
}

typedef char cptr0[2];
__attribute__ ((vector_size(16))) cptr0 t0;

typedef char cptr_arr[1];
typedef cptr_arr *cptr1;

extern __attribute__ ((vector_size(16))) cptr1 tee;
