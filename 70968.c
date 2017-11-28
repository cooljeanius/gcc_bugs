void g(int);

void f1(int x)
{
	if (x) {
		g(x--);
	} while (x);
}

void f2(int x)
{
	if (x)
		g(x--);
	while (x);
}

void f3(int x)
{
	if (x) g(x--); while (x);
}
