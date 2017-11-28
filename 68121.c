enum {
    x = 2000000000,
    y = 2000000000,
    a = __builtin_constant_p (x + y) ? x : -1,
};
