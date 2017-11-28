namespace Foo {
	extern const char Name[];  // line 2
}

int main()
{
	using Foo::Name;  // trigger, line 7
	return 0;
}
