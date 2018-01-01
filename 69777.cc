namespace {
  struct AnonB {
    virtual bool foo() const = 0;
    virtual ~AnonB() {}
  };
}

struct RealB {
  virtual bool foo() const = 0;
  virtual ~RealB() {}
};

AnonB* create()
{
  struct D : RealB {
    virtual bool foo() const { return true; }
  };

  return reinterpret_cast<AnonB*>(new D);
}

int main() {
  return create()->foo(); // please ignore the memory leak here
}
