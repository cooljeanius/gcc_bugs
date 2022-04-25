#include <stddef.h> /* for size_t */

#define SEARCH1(value, array, target)             \
do {                                              \
  __label__ found;                                \
  typeof (target) _SEARCH_target = (target);      \
  typeof (*(array)) *_SEARCH_array = (array);     \
  size_t i, j;                                    \
  int value = 0;                                      \
  for (i = 0; i < sizeof(array); i++)             \
    for (j = 0; j < sizeof(array); j++)           \
      if (_SEARCH_array[i][j] == _SEARCH_target)  \
        { (value) = i; goto found; }              \
  (value) = -1;                                   \
 found:;                                          \
} while (0)

#define SEARCH2(array, target)                    \
({                                                \
  __label__ found;                                \
  typeof (target) _SEARCH_target = (target);      \
  typeof (*(array)) *_SEARCH_array = (array);     \
  size_t i, j;                                    \
  int value;                                      \
  for (i = 0; i < sizeof(array); i++)             \
    for (j = 0; j < sizeof(array); j++)           \
      if (_SEARCH_array[i][j] == _SEARCH_target)  \
        { value = i; goto found; }                \
  value = -1;                                     \
 found:                                           \
  value;                                          \
})

int main(int argc, const char *argv[])
{
    if (argc != 1)
      {
        int *the_value = (int *)0;
        SEARCH1(*the_value, &argv, "foo");
        return *the_value;
      }
    else
      return SEARCH2(&argv, "foo");
}
