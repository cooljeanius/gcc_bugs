struct A
{
	auto foo(), bar();
};

auto A::foo() { return 1; }
auto A::bar() { return 2; }
