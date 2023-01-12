#include <sys/types.h>
#include <sys/stat.h>

int trad_con(int i)
{
  mode_t mask = (mode_t)i;
  return (int)umask((mode_t)mask);
}

int trad_con_2(int j, const char *path)
{
  mode_t mode = (mode_t)j;
  return chmod(path, (mode_t)mode);
}
