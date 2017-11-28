#define A "arch=corei7"

void __attribute__ ((target ("default")))
foo (int) { }

void __attribute__ ((target (A)))
foo (int) { /* okay, different foo */ }


template <class T>
void bar (T);

template <>
void __attribute__ ((target ("default")))
bar<int>(int) { }

template <>
void __attribute__ ((target (A)))
bar<int>(int) { /* rejected (bug?) */ }


template <class T>
void __attribute__ ((target ("default")))
baz (T) { }

template <class T>
void __attribute__ ((target (A)))
baz (T) { /* rejected (bug?) */ }
