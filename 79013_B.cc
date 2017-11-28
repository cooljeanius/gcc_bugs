struct B
{
	static auto const a = 5, foo(), bar();
};

auto const B::foo() { return 1; }
auto const B::bar() { return 2; }
