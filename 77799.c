char d [2];

extern int sprintf (char*, const char*, ...);

void f (void)
{
	sprintf (d, "123");
}

void g (void)
{ 
	sprintf (d, "123", 0);
}
