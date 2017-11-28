namespace a {
	template <typename b>
	void
	c (int, int, b d)
	{
		[d] { [d] {}; };
	}
}
void
e ()
{
	int f;
	a::c (f, 3, [] {});
}
