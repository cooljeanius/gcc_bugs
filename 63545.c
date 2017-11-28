struct DWstruct { int high, low; };

typedef union
	{
        struct DWstruct s;
        int ll;
	} DWunion;

int
__multi3(int u, int v)
{
	const DWunion uu = { .ll = u };
	return 0;
}
