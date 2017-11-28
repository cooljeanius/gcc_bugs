struct Base {
    virtual ~Base() {}
};

struct Derived : public Base {
    ~Derived() {} // -Wsuggest-override does not emit a warning but could.
};
