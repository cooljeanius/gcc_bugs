int f(int out, int in) {
    asm("foo %1,%0;" : "=&a" (out) : "b" (in));        // Okay
    asm("foo %1,%0;" : "=&b" (out) : "b" (in));        // Expected error
    asm("foo %1,%0;" : "=&a" (out) : "a" (in));        // Expected error
    asm("foo %1,%0;" : "=&a,&b" (out) : "b,b" (in));   // Okay
    asm("foo %1,%0;" : "=&a,&b" (out) : "a,a" (in));   // Unexpected error
    asm("foo %1,%0;" : "=&b,&a" (out) : "b,b" (in));   // Okay
    asm("foo %1,%0;" : "=&b,&a" (out) : "a,a" (in));   // Okay
    return out;
}
