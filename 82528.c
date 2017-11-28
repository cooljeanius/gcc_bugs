#define TRUE  ((_Bool) 1)
#define FALSE ((_Bool) 0)

typedef enum { a, b, c } result;

result
f (int flag)
{
	if (flag)
		return TRUE;
	else
		return FALSE;
}
