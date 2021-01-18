
int test(int a, int b, int *buf) {
  if (a >= 0 && b >= 0) {
    a += b;
    // let's check that we are not reading outside the buffer
    if (a >= 0 && a < 8) return buf[a];
  }
  return -1;
}
