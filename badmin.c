#define MIN(X,Y) (X<Y?X:Y)

extern int p, q;

int main(void)
{
  int x = MIN (p++, q++);
  return x;
}
