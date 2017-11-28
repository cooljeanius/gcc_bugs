void foo(int *xp, float *yp, double *zp)
{
}

int x;
float y;
double z;
short k;

void f2(void)
{
	foo(&y, &z);    /* forgot x */
	foo(&x, &z);    /* forgot y */
	foo(&x, &z);    /* forgot z */
	foo(&x);        /* forgot y and z */
	foo(&z);        /* forgot x and y*/
	
	foo(&x, &y, &z, &x);    /* x too many at end */
	foo(&x, &x, &y, &z);    /* x too man at start */
	foo(&x, &y, &y, &z);    /* y too much in the middle */
	foo(&x, &y, &k, &z);    /* different y in middle */
	foo(&k, &x, &y, &z);    /* different x at start */
	foo(&x, &y, &z, &k);    /* different x at end */
}
