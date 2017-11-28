#include <string>

int foo(int eighty)
{
	std::string foo = std::string(80, '=');
	std::string bar = std::string('=', 80);
	std::string baz = std::string(int('='), eighty);
	(void)foo;
	(void)bar;
	(void)baz;
	if (eighty == 0) {
		eighty = '=';
		return eighty;
	}
	return 80;
}
