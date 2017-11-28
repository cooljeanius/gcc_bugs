const char foo[] = "123";
const char bar[] = "123";

int f (const char *s)
{
	if (!__builtin_strcmp (s, foo))
		return 0;
	if (!__builtin_strcmp (s, bar))   // redundant, can be eliminated
		return 1;
	
	return -1;
}
