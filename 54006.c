/* { dg-do run } */
extern int *p;
int main(void)
{
	/* Testing a contradiction.  This should always be false.  */
	if (__atomic_always_lock_free (sizeof *p, p)
		&& __GCC_ATOMIC_INT_LOCK_FREE < 2)
		__builtin_abort ();
	
	__builtin_exit (0);
}

/* Let's hope GCC doesn't see through this...
 * Still true as of r189581.  */
int x = 0;
int *p = &x;
