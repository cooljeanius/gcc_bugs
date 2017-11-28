#define xassert(x) if (x) __builtin_abort();
typedef struct {
    unsigned int bepan : 8;
} apa;

apa minapa = {
.bepan = 1
};

typedef struct {
    unsigned int cepan : 7;
} capa;

capa mincpa = {
.cepan = 1
};

typedef struct {
    unsigned int depan : 9;
} dapa;

dapa mindpa = {
.depan = 1
};

int main(void)
{
	xassert((int)(mincpa.cepan) <  (1 << (31-14)));
	xassert((int)(minapa.bepan) <  (1 << (31-14)));      /* THIS FAILS */
	xassert((int)(mindpa.depan) <  (1 << (31-14)));
	return 0;
}
