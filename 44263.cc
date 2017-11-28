struct S
{
	char a[4];
	int b;
};

extern void bar (char *, char *);

void
foo (void)
{
	char g[(char *) &((struct S *) 0)->b - (char *) 0];
	char h[(__SIZE_TYPE__) &((struct S *) 8)->b];
	bar (g, h);
}
