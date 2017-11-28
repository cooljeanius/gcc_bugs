#include <stdarg.h>

char a;
void set_message(const char *fmt, va_list ap)
__attribute__((format(printf, 1, 0)));
void set_message_by_errcode(va_list ap) { set_message(&a, ap); }
