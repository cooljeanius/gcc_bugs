// compile with -Wmissing-format-attribute
#include <stdio.h>
#include <stdarg.h>

__attribute__((format(printf, 1, 0) ))
void my_log(const char * fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    va_end(ap);
}

void not_a_log(const char *string __attribute__((unused)) )
{
    my_log("this should not be a warning\n");
}
