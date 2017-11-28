struct S { int i; char c; };

typedef __attribute__ ((packed)) struct S S0;
typedef struct __attribute__ ((packed)) S S1;   // missing warning in C
typedef struct S __attribute__ ((packed)) S2;
typedef struct S S3 __attribute__ ((packed));

#if __cplusplus
#  define A(e) static_assert(e, #e)
#else
#  define A(e) _Static_assert(e, #e)
#endif

A (sizeof (S0) == 1);
A (sizeof (S1) == 1);
A (sizeof (S2) == 1);
A (sizeof (S3) == 1);
