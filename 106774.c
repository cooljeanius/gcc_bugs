#include <stdbool.h>

void t (bool a, int i, float e, double f)
{
  // Boolean literal comparisons
  if (a == true)  // better: if (a)
    return;
  if (a == false)  // better: if (!a)
    return;
  if (a != true)  // better: if (!a)
    return;
  if (a != false)  // better: if (a)
    return;
  // also reversed to be sure
  if (true == a)  // better: if (a)
    return;
  if (false != a)  // better: if (a)
    return;

  // Integer comparisons to Boolean literals
  if (i == true)  // better: if (i == 1)
    return;
  if (i == false)  // better: if (i == 0) or: if (!i)
    return;
  if (i != true)  // better: if (i != 1)
    return;
  if (i != false)  // better: if (i != 0) or: if (i)
    return;

  // Floating-point comparisons to Boolean literals
  if (e == true)  // very strange at all, if meant so, then better: if (e == 1.0f)
    return;
  if (f == false)  // very strange at all, if meant so, then better: if (f == 0.0)
    return;
}
