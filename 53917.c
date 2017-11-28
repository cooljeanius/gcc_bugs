int a, b;
void fn1 ();
typedef enum
	{
		READ_WRITE
	} TAG_STATE;
TAG_STATE fn2 ();
void
fn3 ()
{
    int c;
    if (a)
        c = 0;
    else
        switch (fn2 ())
        case 0:
		c = 1;
    b = c;
    if (b)
        fn1 ();
}
