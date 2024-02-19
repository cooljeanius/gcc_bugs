int main(void) {
  char a = 0;
  short int b = 0;
  return sizeof(b) == sizeof(a+b);
}
