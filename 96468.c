typedef int sig_atomic_t;
volatile sig_atomic_t signaled;
_Bool getX(int *);
void processX(int);
void f(void)
{
    {
        int x;
        if(getX(&x))
            processX(x);
    }
    while(!signaled);
    /* do some other stuff */
}
