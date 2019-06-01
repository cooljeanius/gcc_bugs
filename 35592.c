#ifndef _FILE_OFFSET_BITS
# define _FILE_OFFSET_BITS 64
#endif /* !_FILE_OFFSET_BITS */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

struct s {
  int len;
};

struct s *p;

int main(void)
{
  char *c = malloc(lseek(fileno(stdin), 0, SEEK_END));
  char *d = malloc(p->len + 1);
  if (c == d)
    return 1;
  else
    return 0;
}
