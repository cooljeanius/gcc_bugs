char *foo(char *);

int bar(void) {
	char *baz = foo(UNDECLARED_MACRO(""));
}
