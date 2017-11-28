void func1 (void) { for (;;); }
[[ noreturn ]] void func2 (void) { for (;;); }
__attribute__ ((__noreturn__)) void func3 (void) { for (;;); }

void (*fptr11) (void) = func1;
void (*fptr12) (void) = func2;
void (*fptr13) (void) = func3;

__attribute__ ((__noreturn__)) void (*fptr31) (void) = func1; /* expected: warning */
__attribute__ ((__noreturn__)) void (*fptr32) (void) = func2;
__attribute__ ((__noreturn__)) void (*fptr33) (void) = func3;
