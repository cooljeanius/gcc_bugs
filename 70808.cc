int main()
{
    int* no_warn = {};
    // main.cpp:5:33: warning: zero as null pointer constant [-Wzero-as-null-pointer-constant]
    decltype( nullptr ) warn = {};
}

 void f() { decltype(nullptr)(); }
