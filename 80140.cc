void f_ptr_unused (void * __attribute__((unused)));

void f_ptr_unused (void *p)   // -Wunused issued regardless of attribute
{
}

int f_ptr_noreturn (void (*)() __attribute__((noreturn)));

int f_ptr_noreturn (void (*fp)())
{
	fp ();   // -Wreturn-type regardless of attribute
}


int f_ref_noreturn (void (&)() __attribute__((noreturn)));   // warning (ok)

int f_ptr_noreturn (void (&fr)())
{
	fr ();   // -Wreturn-type (expected, warning on declaration)
}


template <void (*FP)() __attribute__((noreturn))>
int ftempl_ptr_noreturn ()
{
	FP ();   // -Wreturn-type regardless of attribute
}

void f ();

template int ftempl_ptr_noreturn<&f>();

template <void (&FR)() __attribute__((noreturn))>
int ftempl_ref_noreturn ()
{
	FR ();   // -Wreturn-type regardless of attribute
}

template int ftempl_ref_noreturn<f>();
