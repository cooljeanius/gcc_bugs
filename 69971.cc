void* foo (void)
{
    void *p = __builtin_return_address (1024);
    return p;
}
