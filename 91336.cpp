static const char cvar[4] = { 0 };
static char var[4] = { 0 };

void func() {
	const char **p1 = (const char **)&cvar;
	const char **p2 = (const char **)&var;
	char **p3 = (char **)&var;
}
