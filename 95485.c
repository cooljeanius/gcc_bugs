typedef void* F (int);

void* f (F *p)
{
	void *q = p (32);              // allocate memory
	__builtin_memset (p, 0, 32);   // zero out -- whoops! -- writing to a function
	return q;                      // return "clear" memory
}
