struct S {
	char a[3];
	void (*pf)(void);
};

void foo (struct S *s, int i)
{
	const char *str = i ? "1234578" : "87654321";
	__builtin_strcpy (s->a, str); // warning (good)
}

void bar (struct S *s, int i)
{
	const char *str = "1234578";
	__builtin_strcpy (s->a, str);   // missing -Wstringop-overflow
}
