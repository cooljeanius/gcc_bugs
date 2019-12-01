
int i = sizeof (__typeof (enum { e0 }));   // type defined in typeof

__typeof (sizeof (enum { e1 })) e;         // type defined in sizeof
