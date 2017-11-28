const char* f0 () {
    const char a[] = "abc";
    return a;
}

const char* f1 (int i) {
    const char a[] = "abc";
    const char *q = i ? a : "def";
    return q;
}

const char* f2 () {
    const char a[] = "abc";
    static const char *s = a;
    return s;
}

static const char *s;

void f3 () {
    const char a[] = "abc";
    s = a;
}
