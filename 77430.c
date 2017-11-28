int foo(int a)
{
    a = 0;
    a = 0; /* missing warning */
    return a;
}
