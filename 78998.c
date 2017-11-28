int f (int i)
{
	char *s = 0;
	switch (i) case 0: s = "";
	if (!i) s = 0;
	
	return __builtin_strlen (s);
}
