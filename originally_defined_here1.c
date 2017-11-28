
struct debug_type { int foo; };

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wc++-compat"

typedef struct debug_type *debug_type;
debug_type dt0;

#pragma GCC diagnostic pop

debug_type dt1;
