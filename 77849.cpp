class C {
public:
  enum __attribute__((__deprecated__("Do not use"))) MyEnum
  {
    Foo,
    Bar
  };

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

  __attribute__((__deprecated__("Really, do not use"))) static const MyEnum mySpecialEnum = Foo;

#pragma GCC diagnostic pop

};

int main() {
  return C::Foo;
}
