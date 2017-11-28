void failsyslog(int, const char *, ...) __attribute__((__format__ (__printf__, 2, 3))) __asm("_" "msyslog" "$DARWIN_EXTSN");
void okfmtsyslog(int, const char *, ...) __attribute__((__format__ (__printf__, 2, 3)));
void okasmsyslog(int, const char *, ...) __asm("_" "msyslog" "$DARWIN_EXTSN");
void okbothsyslog(int, const char *, ...) __asm("_" "msyslog" "$DARWIN_EXTSN") __attribute__((__format__ (__printf__, 2, 3)));
int main() {}
