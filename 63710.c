unsigned long f1(unsigned long ul, char l) {
	unsigned long r1 = ul + l;
	unsigned long r2 = l + ul;
	return r1 + r2;
}

unsigned int f2(long l, char c) {
	return l ? l : c;
}
