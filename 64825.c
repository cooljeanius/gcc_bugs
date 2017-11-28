struct foo {
	int bar[1];
};

void *baz(const struct foo *f)
{
	void *p = (void *)&f->bar;
	return p;
}
