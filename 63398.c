void f2();
int f()
{
	return ({ _Cilk_spawn f2(); 0; });
} 
