_Bool
xg_update_scrollbar_pos (int a, int b)
{
  _Bool hidden;
  if (a < b)
    hidden = 1;
  return !hidden;
}

