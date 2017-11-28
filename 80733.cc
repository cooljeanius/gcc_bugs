enum E { e0, e15 = 15 };
enum __attribute__ ((packed)) F { f0, f15 = 15 };

void foo (E e)
{
	if (e > 15) __builtin_abort ();   // not eliminated (bug)
}

void bar (E e)
{
	if (e > 255) __builtin_abort ();   // not eliminated (bug)
}

void foo (F f)
{
	if (f > 15) __builtin_abort ();   // not eliminated (bug), warning (bug)
}

void bar (F f)
{
	if (f > 255) __builtin_abort ();   // eliminated, warning (good)
}
