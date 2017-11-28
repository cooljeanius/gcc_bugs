struct A1 { private: const int i; };    // warning, good

struct B1 { const int j; };             // no warning, good

struct C1: private B1 { };              // bug: missing warning


struct A2 { private: const int &i; };   // warning, good

struct B2 { const int &j; };            // no warning, good

struct C2: private B2 { };              // bug: missing warning
