struct S {
  int i;
  char c;
} s;

int main(void) {
  return sizeof(*(&s));
}
