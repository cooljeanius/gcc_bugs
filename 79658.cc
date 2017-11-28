struct enum_flags { int value; };

static inline void set_flag (struct enum_flags *f, int e) { f->value = f->value | e; }
static inline int get_flag (struct enum_flags *f) { return f->value; }

enum flag { FLAG1 = 1, };

extern void bar ();

void
foo_0 (int param)
{
	struct enum_flags f0; // doesn't warn
	
	if (param)
		set_flag (&f0, FLAG1);
	
	if (get_flag (&f0) != 0) // doesn't warn
		bar ();
}

void
foo_1 (int param)
{
	struct enum_flags f1; // warns
	
	if (param)
		set_flag (&f1, FLAG1);
	
	if (get_flag (&f1) != FLAG1) // warns
		bar ();
}

void
foo_2 (int param)
{
	struct enum_flags f2; // doesn't warn
	
	if (param)
		set_flag (&f2, FLAG1);
	
	if (get_flag (&f2) != 1)
		bar ();
}

void
foo_3 (int param)
{
	struct enum_flags f3; // warns
	
	if (param)
		set_flag (&f3, FLAG1);
	
	if (get_flag (&f3) != 3)
		bar ();
}
