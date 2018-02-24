typedef unsigned int uint32_t;
void foo(char a, uint32_t b)
{
  b = (uint32_t)((b * 10) + (uint32_t)a); 
}
