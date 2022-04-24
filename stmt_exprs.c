int foo(void);
extern int global_var;

int compound_stmt(void)
{
    global_var++;
    return ({ int y = foo(); int z;
        if (y > 0) z = y;
        else z = -y;
        z; });
}

#define max_bad(a,b) ((a) > (b) ? (a) : (b))
#define maxint(a,b) \
  ({int _a = (a), _b = (b); (_a > _b) ? _a : _b; })

int unsafe(void)
{
    /* side effects: */
    return max_bad(foo(), compound_stmt());
}

int shadowing1(void)
{
    int _a = 1, _b = 2, c;
    c = max_bad(_a, _b);
    return c;
}

int shadowing2(void)
{
    int _a = 1, _b = 2, c;
    c = maxint(_a, _b);
    return c;
}

#define maxint3(a, b, c) \
  ({int _a = (a), _b = (b), _c = (c); maxint(maxint(_a, _b), _c); })

int shadowing3(void)
{
    int _a = 1, _b = 2, _c = 3, d;
    d = maxint3(_a, _b, _c);
    return d;
}

void bar1(void);
int bar2(void);
int baz(void);

int jumping(void)
{
a:
    return foo(), (({ bar1(); goto a; 0; }) + bar2()), baz();
}
