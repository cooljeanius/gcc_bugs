struct S {
  int i;
  char c;
} s;

int main1(void) {
  return sizeof(*(&s));
}

int main2(void) {
  char a = 0;
  short int b = 0;
  return sizeof(b) == sizeof(a+b);
}

int main3(void) {
  char a = ' ' * 13;
  return a;
}

int main4(void) {
  int i = 16;
  return (((((i >= i) << i) >> i) <= i));
}

int main5(void) {
  int i = 0;
  return i++ + ++i;
}

