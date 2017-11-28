
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wc++-compat"

struct debug_type { int foo; };

typedef struct debug_type *debug_type;
debug_type dt0;

#pragma GCC diagnostic pop

debug_type dt1;
