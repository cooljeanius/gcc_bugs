void f (void)
{
	typedef enum E { e } F;          // -Wunused-local-typedefs
	typedef struct A { int i; } B;   // ditto
}

void g (void)
{
	typedef enum { e } F;          // missing -Wunused-local-typedefs in C++
	typedef struct { int i; } B;   // ditto
}
