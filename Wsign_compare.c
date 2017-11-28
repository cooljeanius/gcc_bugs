/* { dg-do compile } */

int foo(signed int a, unsigned int b)
{
	return (a < b);
}

int bar(unsigned int c, signed int d)
{
	return (c < d);
}
