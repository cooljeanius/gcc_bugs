template <class T>
T f () { throw; }

template [[noreturn]] int f<int> ();


template <class T>
int g () { throw; }

template __attribute__ ((noreturn)) int g<int> ();


int f1 ()
{
	f<int>();   // not diagnosed (bug)
}

int g1 ()
{
	g<int>();   // accepted (okay)
}
