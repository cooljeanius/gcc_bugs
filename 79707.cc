struct S {
	S (int, S * = 0);
};

S* f (S *p)
{
	// typo: 'return new S (1, p)' intended
	return new S (1), p;
}
