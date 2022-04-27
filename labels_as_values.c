void unsafe(void *);

static inline int asdf(void)
{
bar:
    void *ptr0;
    static void *ptr1 = &&bar;
    /* ... */
foo:
    ptr0 = &&foo;
    goto *ptr0;
    goto *ptr1;
    unsafe(ptr0);
    unsafe(ptr1);
    return (sizeof(ptr0) + sizeof(ptr1));
}

static inline int zxcv(int i)
{
foo:
    static void *array[] = { &&foo, &&bar, &&hack };
bar:
    goto *array[i];
hack:
    return sizeof(array[i]);
}

int qwerty(int i)
{
foo:
    static const int array[] = { &&foo - &&foo, &&bar - &&foo,
                                 &&hack - &&foo };
bar:
    goto *(&&foo + array[i]);
hack:
    return (zxcv(array[i]) + asdf());
}
