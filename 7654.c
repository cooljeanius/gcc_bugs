void f (int i)
{
	enum e1 { e1a, e1b };
	enum e1 e1v;
	enum e2 { e2a, e2b };
	enum e2 e2v;
	
	e1v = 1;   // no warning
	e1v = 3;   // warning
	e1v = e1a; // ok
	e2v = e1v; // warning
	i = e1v;   // ok I guess
	e2v = i;   // warning
}
