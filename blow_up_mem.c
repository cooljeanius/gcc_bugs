/* blow_up_mem.c -*- C -*- */

#include <errno.h> /* for errno */
#include <stdlib.h> /* for memory allocation functions */
#include <stdio.h> /* for printf() */
#include <string.h> /* for strerror() */
#include <unistd.h> /* for usleep() */

#define VARIANT 1

#if (VARIANT == 1)
# define ALLOC_FUNC(i) calloc(i, i)
#else
# if (VARIANT == 2)
#  define ALLOC_FUNC(i) malloc(i)
# else
#  if (VARIANT == 3)
#   define ALLOC_FUNC valloc(i)
#  else
#   error "Invalid value for VARIANT"
#  endif /* VARIANT == 3 */
# endif /* VARIANT == 2 */
#endif /* VARIANT == 1 */

int main(void)
{
  int i = 0;
  void *p = NULL;
#if 0
  while ((i = (i + __alignof__(void *))) > 0) {
    free((char *)NULL + i);
  }
  i = 0;
#endif /* 0 */
  while (++i) {
    printf("i = %d; p = %p\n", i, p);
    p = ALLOC_FUNC(i);
    if (p == NULL) {
      printf("Out of memory.\n");
      break;
    } else if (sizeof(p) == 4) {
      (void)usleep(1);
    }
  }
  free(p);
  if (errno != 0) {
    printf("Done (%s).\n", strerror(errno));
  } else {
    printf("Done.\n");
  }
  return -1;
}
