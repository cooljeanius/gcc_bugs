int *h() {
	int z;
	return &z;
}

int (*apply (int (*f) (const void *, const void *), void *a))(const void *)
{
	int zozo(const void * b) { return f(a,b); };
	return &zozo;
}
