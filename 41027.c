struct f
{
	const int a;
};

void g(struct f*);

void h ()
{
	struct f h;
	g(&h);
}
