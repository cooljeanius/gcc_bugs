extern "C" void abort ();
struct S { ~S () { if (x) abort (); }; int x, y, z; };
void foo (S *p) { *p = S (); }
int main () { S s; s.x = 1; s.y = 2; s.z = 3; foo (&s); if (s.x != 0 || s.y != 0 || s.z != 0) abort (); }
