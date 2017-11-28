/*  begin */
struct A { int b; };

int main(int argc, char **argv)
{
    struct A* a = 0;
    if (&a->b) return 1;
    return 0;
}
/* end */
