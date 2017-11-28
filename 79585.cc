void f ()
{
	int i  __attribute__ ((unused)) = 0;
	int __attribute__ ((unused)) j = 0;
	
	int* p  __attribute__ ((unused)) = 0;
	int* __attribute__ ((unused)) q = 0;
}

#if __cplusplus

template <class T>
void g ()
{
	T a  __attribute__ ((unused)) = 0;
	T __attribute__ ((unused)) b = 0;
	
	T* p  __attribute__ ((unused)) = 0;
	T* __attribute__ ((unused)) q = 0;
	
}

template void g<int>();

#endif
