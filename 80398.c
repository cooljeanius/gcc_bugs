__attribute__ ((packed)) enum E0 { e0 };
enum __attribute__ ((packed)) E1 { e1 }; 
enum E2 { e2 } __attribute__ ((packed));

#if __cplusplus
#  define A(e) static_assert (e, #e)
#else
#  define A(e) _Static_assert (e, #e)
#endif

A (sizeof (enum E0) == 1);
A (sizeof (enum E1) == 1);
A (sizeof (enum E2) == 1);
