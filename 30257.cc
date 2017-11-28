class A {
    int a;
  public:
    A(int i) { a = i * i; }

    virtual void func(void);
  };

  const A a1(1);

  void func(void)
  {
  }
