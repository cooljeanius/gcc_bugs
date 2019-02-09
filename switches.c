#include <stdlib.h> /* for rand() */
int main(void)
{
  int swindex0 = rand();
  enum values {
    FIRST_ENUMERATOR,
    SECOND_ENUMERATOR,
    THIRD_ENUMERATOR
  } swindex1 = SECOND_ENUMERATOR; /* silence unitialized warnings */
  /* do the non-enumerator switch first: */
  switch (swindex0) {
    case 1:
      swindex1 = FIRST_ENUMERATOR;
      break;
    case 2:
      swindex1 = SECOND_ENUMERATOR;
      break;
    case 3:
      swindex1 = THIRD_ENUMERATOR;
      break;
    /* -Wswitch-default: usual warning about switch with no default */
  }
  if (swindex0 > 3) {
    swindex1 = THIRD_ENUMERATOR;
  } else if (swindex0 < 1) {
    swindex1 = FIRST_ENUMERATOR;
  }

  switch (swindex1) {
    case FIRST_ENUMERATOR:
      break;
    case SECOND_ENUMERATOR:
      break;
    case THIRD_ENUMERATOR:
      break;
    /* -Wcovered-switch-default: print a warning here like clang's,
     * but only if also used with -fstrict-enums: */
    default:
      break;
  }
  switch (swindex1) {
    case FIRST_ENUMERATOR:
      break;
    case SECOND_ENUMERATOR:
      break;
    case THIRD_ENUMERATOR:
      break;
    /* -Wswitch-default: still warns:
     * * if by itself, the usual message, as in the first switch.
     * * if with -Wcovered-switch-default, use a different message,
     *   like:
     *   "Warning: switch missing default case which would be covered if it had one"
     *   "Note: use -fstrict-enums to silence this warning"
     * * if with -fstrict-enums, do like mentioned in the previous,
     *   and print no warning. */
  }
  switch (swindex1) {
    case FIRST_ENUMERATOR:
      break;
    case SECOND_ENUMERATOR:
      break;
    case THIRD_ENUMERATOR:
      break;
    /* Ideally there should be no warning here whatsoever; clang still
     * warns about it though: */
    default: __builtin_unreachable(); /*NOTREACHED*/
  }
  switch (swindex1) {
    case FIRST_ENUMERATOR:
      break;
    case SECOND_ENUMERATOR:
      break;
    case THIRD_ENUMERATOR: /*FALLTHROUGH*/
    /* Ideally there should be no warning from -Wcovered-switch-default
     * here, because even though there are labels for all enum values,
     * the 3rd case still falls through to the default case: */
    default: /*REACHEDBYFALLTHROUGH*/
      break;
      /* (clang still warns here though) */
  }
}
