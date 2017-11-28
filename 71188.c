struct S { int i; };

int a[0];

int *p = __builtin_offsetof(struct S, i);
int *q = sizeof a;
int *r = (char*)&((struct S*)0)->i - (char*)((struct S*)0);

enum { e, f };
int *t = e;
int *u = f;
