#define A(e) _Static_assert ((e), #e)

_Alignas (32) struct NotAligned;   // ignored with warning  (good)

struct NotAligned { long i; };

A (_Alignof (struct NotAligned) == _Alignof (long));   // passes


struct __attribute__ ((aligned (32)))   // silently ignored
Aligned32;

struct Aligned32 { long i; };

A (_Alignof (struct Aligned32) == 32);   // FAILS
