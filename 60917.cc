typedef int callback ();

int f(char *);

const char *get_something ();

template<typename T, int (*F) (const T *)>
int wrapper ()
{
	return F (get_something ());
}

template<typename T1, typename T2, int (*F) (const T1 *, const T2 *)>
int wrapper ()
{
	return F (get_something ());
}

void add_callback (callback *);

void f ()
{
	add_callback (wrapper<char, f>);
}
