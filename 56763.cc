class __attribute__((visibility("default"))) X {
};

class Y {
    friend __attribute__((visibility("default"))) class X;
};

int main(int , char *[])
{
}
