int main()
{
	struct { int w; struct { int x, y; } ss; } s = { 1, .ss = 2, 3 };
	(void)s;
}

int a[3][1] = { { 0 }, { 1 }, 2 };
