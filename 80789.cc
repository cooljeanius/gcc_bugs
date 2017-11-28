void g(void (*)());

void f() {
    int x;
    g([x](){});
}
