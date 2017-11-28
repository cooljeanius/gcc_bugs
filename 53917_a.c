void fn1 ();
typedef struct
	{
		int hdr[0];
	} foo;
typedef enum
	{
		READ_WRITE
	} bar;
typedef struct
	{
		struct
		{
			foo t1;
		} mp;
	} foobar;
bar fn2 ();
typedef struct
	{
		foobar tag_mem_config;
	} tag;
static int
fn3 (foobar * p1)
{
    int valid;
    if (p1->mp.t1.hdr[0])
        valid = 0;
    else
        switch (fn2 ())
        case 0:
		valid = 1;
    return valid;
}
void
fn4 ()
{
    tag p_t1_rw_fsm_data;
    if (fn3 (&p_t1_rw_fsm_data.tag_mem_config))
        fn1 ();
}
