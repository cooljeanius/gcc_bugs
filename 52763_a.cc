enum E { NONE = 0, ONE = 1, TWO = 2 };

bool f (E e)
{
	return e == 3;   // no warning here
}

bool g (E e)
{
	return e == 4;
}
