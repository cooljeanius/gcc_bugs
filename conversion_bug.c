
void _setbit(unsigned char *b, unsigned int i)
{
	b[i / 8] = (unsigned char)(b[i / 8] | (unsigned char)(1 << (i % 8)));
}

void _setbit_works(unsigned char *b, unsigned int i)
{
	unsigned char ii = (unsigned char)(1 << (i % 8));
	b[i / 8] |= ii;
}

void _mask_stupid(unsigned char *b, unsigned int i)
{
	b[i] = (unsigned char)(b[i] | (unsigned char)i);
}

void _mask_stupid_works(unsigned char *b, unsigned int i)
{
	unsigned char ii = (unsigned char)i;
	b[i] |= ii;
}
