
class Base
{
public:
    void foo() {}
protected:
    Base() {}
    ~Base() {}
};

class Derived : public Base
{
public:
    Derived() : Base() {}
};

int main()
{
    Derived().foo();
    return 0;
}
