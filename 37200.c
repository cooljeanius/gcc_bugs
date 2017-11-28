struct test {
	void *tst;
};
struct yy {
	void **z;
};
int foo(struct test *x)
{
	struct yy y[] ={
		{       (void**) &x->tst }
	};
	return 0;
}
