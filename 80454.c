typedef union { char c; int i; } union_t;

struct { struct { int a; long b; } x; int y; } t = { { 0 }, 1 };

struct { struct { union_t a; long b; } x; int y; } u = { { 0 }, 1 };
