int g (int i, int j)
{
	char *p = i <= 0 ? (char*)0 : "123";
	char *q = 0 != i ? (char*)0 : "4567";
	char *r = i ? q : p;
	
	return __builtin_strlen (r);
}
