char pot_etags_version[] = "@(#) pot revision number is 17.38.1.4";
typedef
       _Bool
            bool_bf;
extern char *emacs_getenv_TZ (void);
extern int emacs_setenv_TZ (char const *);
typedef long unsigned int size_t;
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
typedef struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
} *__locale_t;
typedef __locale_t locale_t;
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strfry (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
extern void *__rawmemchr (const void *__s, int __c);
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c1 (const char *__s, int __reject);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c1 (const char *__s, int __reject)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c2 (const char *__s, int __reject1,
         int __reject2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c2 (const char *__s, int __reject1, int __reject2)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c3 (const char *__s, int __reject1,
         int __reject2, int __reject3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c3 (const char *__s, int __reject1, int __reject2,
       int __reject3)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2 && __s[__result] != __reject3)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c1 (const char *__s, int __accept);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c1 (const char *__s, int __accept)
{
  size_t __result = 0;
  while (__s[__result] == __accept)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c2 (const char *__s, int __accept1, int __accept2)
{
  size_t __result = 0;
  while (__s[__result] == __accept1 || __s[__result] == __accept2)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{
  size_t __result = 0;
  while (__s[__result] == __accept1 || __s[__result] == __accept2
  || __s[__result] == __accept3)
    ++__result;
  return __result;
}
extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c2 (const char *__s, int __accept1, int __accept2)
{
  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{
  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2
  && *__s != __accept3)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
extern __inline __attribute__ ((__gnu_inline__)) char *__strtok_r_1c (char *__s, char __sep, char **__nextp);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strtok_r_1c (char *__s, char __sep, char **__nextp)
{
  char *__result;
  if (__s == ((void *)0))
    __s = *__nextp;
  while (*__s == __sep)
    ++__s;
  __result = ((void *)0);
  if (*__s != '\0')
    {
      __result = __s++;
      while (*__s != '\0')
 if (*__s++ == __sep)
   {
     __s[-1] = '\0';
     break;
   }
    }
  *__nextp = __s;
  return __result;
}
extern char *__strsep_g (char **__stringp, const char *__delim);
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_1c (char **__s, char __reject);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_1c (char **__s, char __reject)
{
  char *__retval = *__s;
  if (__retval != ((void *)0) && (*__s = (__extension__ (__builtin_constant_p (__reject) && !__builtin_constant_p (__retval) && (__reject) == '\0' ? (char *) __rawmemchr (__retval, __reject) : __builtin_strchr (__retval, __reject)))) != ((void *)0))
    *(*__s)++ = '\0';
  return __retval;
}
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_2c (char **__s, char __reject1, char __reject2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_2c (char **__s, char __reject1, char __reject2)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_3c (char **__s, char __reject1, char __reject2,
       char __reject3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_3c (char **__s, char __reject1, char __reject2, char __reject3)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2 || *__cp == __reject3)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));
extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__));
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)
{
  return __builtin___memcpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memmove (void *__dest, const void *__src, size_t __len)
{
  return __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) mempcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)
{
  return __builtin___mempcpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset (void *__dest, int __ch, size_t __len)
{
  return __builtin___memset_chk (__dest, __ch, __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bcopy (const void *__src, void *__dest, size_t __len)
{
  (void) __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bzero (void *__dest, size_t __len)
{
  (void) __builtin___memset_chk (__dest, '\0', __len, __builtin_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcpy (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcpy_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpcpy (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___stpcpy_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncpy (char *__restrict __dest, const char *__restrict __src, size_t __len)
{
  return __builtin___strncpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}
extern char *__stpncpy_chk (char *__dest, const char *__src, size_t __n,
       size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern char *__stpncpy_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "stpncpy") __attribute__ ((__nothrow__ , __leaf__))
                                 ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpncpy (char *__dest, const char *__src, size_t __n)
{
  if (__builtin_object_size (__dest, 2 > 1) != (size_t) -1
      && (!__builtin_constant_p (__n) || __n <= __builtin_object_size (__dest, 2 > 1)))
    return __stpncpy_chk (__dest, __src, __n, __builtin_object_size (__dest, 2 > 1));
  return __stpncpy_alias (__dest, __src, __n);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcat (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcat_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncat (char *__restrict __dest, const char *__restrict __src, size_t __len)
{
  return __builtin___strncat_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}
typedef long int ptrdiff_t;
typedef int wchar_t;
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
                                                                  ;
                                                                     ;
union wait
  {
    int w_status;
    struct
      {
 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;
      } __wait_terminated;
    struct
      {
 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;
      } __wait_stopped;
  };
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __ino64_t ino64_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __off64_t off64_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));
typedef int register_t __attribute__ ((__mode__ (__word__)));
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
typedef __sigset_t sigset_t;
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
extern long int __fdelt_chk (long int __d);
extern long int __fdelt_warn (long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));
                                                                              ;
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned long long int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;
typedef unsigned long int pthread_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    unsigned int __nusers;
    int __kind;
    short __spins;
    short __elision;
    __pthread_list_t __list;
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;
    unsigned char __pad1[7];
    unsigned long int __pad2;
    unsigned int __flags;
  } __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));
extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) __attribute__ ((__warn_unused_result__));
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int system (const char *__command) __attribute__ ((__warn_unused_result__));
extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
typedef int (*__compar_fn_t) (const void *, const void *);
typedef __compar_fn_t comparison_fn_t;
typedef int (*__compar_d_fn_t) (const void *, const void *, void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;
  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 return (void *) __p;
    }
  return ((void *)0);
}
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
extern void setkey (const char *__key) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int posix_openpt (int __oflag) __attribute__ ((__warn_unused_result__));
extern int grantpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int unlockpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern char *ptsname (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int getpt (void);
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
extern char *__realpath_chk (const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__))
                                                 __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__))
                                                __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")))
                                      ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (const char *__restrict __name, char *__restrict __resolved)
{
  if (__builtin_object_size (__resolved, 2 > 1) != (size_t) -1)
    {
      return __realpath_chk (__name, __resolved, __builtin_object_size (__resolved, 2 > 1));
    }
  return __realpath_alias (__name, __resolved);
}
extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")))
                   ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ptsname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ptsname_r_alias (__fd, __buf, __buflen);
}
extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__))
              __attribute__ ((__warn_unused_result__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char *__s, wchar_t __wchar)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1 && 16 > __builtin_object_size (__s, 2 > 1))
    return __wctomb_chk (__s, __wchar, __builtin_object_size (__s, 2 > 1));
  return __wctomb_alias (__s, __wchar);
}
extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))
                                  ;
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")))
                        ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len)
{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __mbstowcs_chk (__dst, __src, __len,
          __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));
      if (__len > __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t))
 return __mbstowcs_chk_warn (__dst, __src, __len,
         __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));
    }
  return __mbstowcs_alias (__dst, __src, __len);
}
extern size_t __wcstombs_chk (char *__restrict __dst,
         const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __wcstombs_alias (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))
                                  ;
extern size_t __wcstombs_chk_warn (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len)
{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __wcstombs_chk (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
      if (__len > __builtin_object_size (__dst, 2 > 1))
 return __wcstombs_chk_warn (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
    }
  return __wcstombs_alias (__dst, __src, __len);
}
typedef __intptr_t intptr_t;
typedef __socklen_t socklen_t;
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int euidaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int eaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ , __leaf__));
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) __attribute__ ((__warn_unused_result__));
extern ssize_t write (int __fd, const void *__buf, size_t __n) __attribute__ ((__warn_unused_result__));
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) __attribute__ ((__warn_unused_result__));
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) __attribute__ ((__warn_unused_result__));
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) __attribute__ ((__warn_unused_result__));
extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) __attribute__ ((__warn_unused_result__));
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int pipe2 (int __pipedes[2], int __flags) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *get_current_dir_name (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__));
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
extern int dup3 (int __fd, int __fd2, int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern char **__environ;
extern char **environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void _exit (int __status) __attribute__ ((__noreturn__));
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__ , __leaf__));
extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) __attribute__ ((__warn_unused_result__));
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));
extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern int syncfs (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int lockf (int __fd, int __cmd, __off_t __len) __attribute__ ((__warn_unused_result__));
extern int lockf64 (int __fd, int __cmd, __off64_t __len) __attribute__ ((__warn_unused_result__));
extern int fdatasync (int __fildes);
extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void encrypt (char *__glibc_block, int __edflag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern ssize_t __read_chk (int __fd, void *__buf, size_t __nbytes,
      size_t __buflen) __attribute__ ((__warn_unused_result__));
extern ssize_t __read_alias (int __fd, void *__buf, size_t __nbytes) __asm__ ("" "read")
                               __attribute__ ((__warn_unused_result__));
extern ssize_t __read_chk_warn (int __fd, void *__buf, size_t __nbytes, size_t __buflen) __asm__ ("" "__read_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("read called with bigger length than size of " "the destination buffer")))
                                  ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
read (int __fd, void *__buf, size_t __nbytes)
{
  if (__builtin_object_size (__buf, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
 return __read_chk (__fd, __buf, __nbytes, __builtin_object_size (__buf, 0));
      if (__nbytes > __builtin_object_size (__buf, 0))
 return __read_chk_warn (__fd, __buf, __nbytes, __builtin_object_size (__buf, 0));
    }
  return __read_alias (__fd, __buf, __nbytes);
}
extern ssize_t __pread_chk (int __fd, void *__buf, size_t __nbytes,
       __off_t __offset, size_t __bufsize) __attribute__ ((__warn_unused_result__));
extern ssize_t __pread64_chk (int __fd, void *__buf, size_t __nbytes,
         __off64_t __offset, size_t __bufsize) __attribute__ ((__warn_unused_result__));
extern ssize_t __pread_alias (int __fd, void *__buf, size_t __nbytes, __off_t __offset) __asm__ ("" "pread")
                                 __attribute__ ((__warn_unused_result__));
extern ssize_t __pread64_alias (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64")
                                     __attribute__ ((__warn_unused_result__));
extern ssize_t __pread_chk_warn (int __fd, void *__buf, size_t __nbytes, __off_t __offset, size_t __bufsize) __asm__ ("" "__pread_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("pread called with bigger length than size of " "the destination buffer")))
                                  ;
extern ssize_t __pread64_chk_warn (int __fd, void *__buf, size_t __nbytes, __off64_t __offset, size_t __bufsize) __asm__ ("" "__pread64_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("pread64 called with bigger length than size of " "the destination buffer")))
                                  ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
pread (int __fd, void *__buf, size_t __nbytes, __off_t __offset)
{
  if (__builtin_object_size (__buf, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
 return __pread_chk (__fd, __buf, __nbytes, __offset, __builtin_object_size (__buf, 0));
      if ( __nbytes > __builtin_object_size (__buf, 0))
 return __pread_chk_warn (__fd, __buf, __nbytes, __offset,
     __builtin_object_size (__buf, 0));
    }
  return __pread_alias (__fd, __buf, __nbytes, __offset);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
pread64 (int __fd, void *__buf, size_t __nbytes, __off64_t __offset)
{
  if (__builtin_object_size (__buf, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
 return __pread64_chk (__fd, __buf, __nbytes, __offset, __builtin_object_size (__buf, 0));
      if ( __nbytes > __builtin_object_size (__buf, 0))
 return __pread64_chk_warn (__fd, __buf, __nbytes, __offset,
       __builtin_object_size (__buf, 0));
    }
  return __pread64_alias (__fd, __buf, __nbytes, __offset);
}
extern ssize_t __readlink_chk (const char *__restrict __path,
          char *__restrict __buf, size_t __len,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlink_alias (const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlink") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlink_chk_warn (const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlink_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlink called with bigger length " "than size of destination buffer")))
                                         ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlink (const char *__restrict __path, char *__restrict __buf, size_t __len)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __readlink_chk (__path, __buf, __len, __builtin_object_size (__buf, 2 > 1));
      if ( __len > __builtin_object_size (__buf, 2 > 1))
 return __readlink_chk_warn (__path, __buf, __len, __builtin_object_size (__buf, 2 > 1));
    }
  return __readlink_alias (__path, __buf, __len);
}
extern ssize_t __readlinkat_chk (int __fd, const char *__restrict __path,
     char *__restrict __buf, size_t __len,
     size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlinkat_alias (int __fd, const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlinkat") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t __readlinkat_chk_warn (int __fd, const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlinkat_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlinkat called with bigger " "length than size of destination " "buffer")))
                ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlinkat (int __fd, const char *__restrict __path, char *__restrict __buf, size_t __len)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __readlinkat_chk (__fd, __path, __buf, __len, __builtin_object_size (__buf, 2 > 1));
      if (__len > __builtin_object_size (__buf, 2 > 1))
 return __readlinkat_chk_warn (__fd, __path, __buf, __len,
          __builtin_object_size (__buf, 2 > 1));
    }
  return __readlinkat_alias (__fd, __path, __buf, __len);
}
extern char *__getcwd_chk (char *__buf, size_t __size, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__getcwd_alias (char *__buf, size_t __size) __asm__ ("" "getcwd") __attribute__ ((__nothrow__ , __leaf__))
                                              __attribute__ ((__warn_unused_result__));
extern char *__getcwd_chk_warn (char *__buf, size_t __size, size_t __buflen) __asm__ ("" "__getcwd_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getcwd caller with bigger length than size of " "destination buffer")))
                              ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getcwd (char *__buf, size_t __size)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size))
 return __getcwd_chk (__buf, __size, __builtin_object_size (__buf, 2 > 1));
      if (__size > __builtin_object_size (__buf, 2 > 1))
 return __getcwd_chk_warn (__buf, __size, __builtin_object_size (__buf, 2 > 1));
    }
  return __getcwd_alias (__buf, __size);
}
extern char *__getwd_chk (char *__buf, size_t buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *__getwd_warn (char *__buf) __asm__ ("" "getwd") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("please use getcwd instead, as getwd " "doesn't specify buffer size")))
                                         ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getwd (char *__buf)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    return __getwd_chk (__buf, __builtin_object_size (__buf, 2 > 1));
  return __getwd_warn (__buf);
}
extern size_t __confstr_chk (int __name, char *__buf, size_t __len,
        size_t __buflen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __confstr_alias (int __name, char *__buf, size_t __len) __asm__ ("" "confstr") __attribute__ ((__nothrow__ , __leaf__))
                             ;
extern size_t __confstr_chk_warn (int __name, char *__buf, size_t __len, size_t __buflen) __asm__ ("" "__confstr_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("confstr called with bigger length than size of destination " "buffer")))
            ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) confstr (int __name, char *__buf, size_t __len)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __confstr_chk (__name, __buf, __len, __builtin_object_size (__buf, 2 > 1));
      if (__builtin_object_size (__buf, 2 > 1) < __len)
 return __confstr_chk_warn (__name, __buf, __len, __builtin_object_size (__buf, 2 > 1));
    }
  return __confstr_alias (__name, __buf, __len);
}
extern int __getgroups_chk (int __size, __gid_t __list[], size_t __listlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __getgroups_alias (int __size, __gid_t __list[]) __asm__ ("" "getgroups") __attribute__ ((__nothrow__ , __leaf__))
                 __attribute__ ((__warn_unused_result__));
extern int __getgroups_chk_warn (int __size, __gid_t __list[], size_t __listlen) __asm__ ("" "__getgroups_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getgroups called with bigger group count than what " "can fit into destination buffer")))
                                           ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getgroups (int __size, __gid_t __list[])
{
  if (__builtin_object_size (__list, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size) || __size < 0)
 return __getgroups_chk (__size, __list, __builtin_object_size (__list, 2 > 1));
      if (__size * sizeof (__gid_t) > __builtin_object_size (__list, 2 > 1))
 return __getgroups_chk_warn (__size, __list, __builtin_object_size (__list, 2 > 1));
    }
  return __getgroups_alias (__size, __list);
}
extern int __ttyname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ttyname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ttyname_r") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2)));
extern int __ttyname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ttyname_r_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ttyname_r called with bigger buflen than " "size of destination buffer")))
                                  ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ttyname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ttyname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ttyname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ttyname_r_alias (__fd, __buf, __buflen);
}
extern int __getlogin_r_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nonnull__ (1)));
extern int __getlogin_r_alias (char *__buf, size_t __buflen) __asm__ ("" "getlogin_r")
                     __attribute__ ((__nonnull__ (1)));
extern int __getlogin_r_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getlogin_r_chk")
     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("getlogin_r called with bigger buflen than " "size of destination buffer")))
                                  ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
getlogin_r (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __getlogin_r_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __getlogin_r_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __getlogin_r_alias (__buf, __buflen);
}
extern int __gethostname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int __gethostname_alias (char *__buf, size_t __buflen) __asm__ ("" "gethostname") __attribute__ ((__nothrow__ , __leaf__))
                   __attribute__ ((__nonnull__ (1)));
extern int __gethostname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__gethostname_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("gethostname called with bigger buflen than " "size of destination buffer")))
                                  ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) gethostname (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __gethostname_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __gethostname_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __gethostname_alias (__buf, __buflen);
}
extern int __getdomainname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int __getdomainname_alias (char *__buf, size_t __buflen) __asm__ ("" "getdomainname") __attribute__ ((__nothrow__ , __leaf__))
                     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int __getdomainname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getdomainname_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getdomainname called with bigger " "buflen than size of destination " "buffer")))
                    ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getdomainname (char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __getdomainname_chk (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __getdomainname_chk_warn (__buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __getdomainname_alias (__buf, __buflen);
}
                                                                 ;
extern int rpl_pipe2 (int fd[2], int flags) __attribute__ ((__nonnull__ (1)));
                                                                ;
                                                                    ;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
struct flock
  {
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };
struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;
  unsigned char f_handle[0];
};
extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ , __leaf__));
extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);
extern ssize_t vmsplice (int __fdout, const struct iovec *__iov,
    size_t __count, unsigned int __flags);
extern ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
         __off64_t *__offout, size_t __len,
         unsigned int __flags);
extern ssize_t tee (int __fdin, int __fdout, size_t __len,
      unsigned int __flags);
extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);
extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);
struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
struct stat64
  {
    __dev_t st_dev;
    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int fcntl (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
extern int __open_2 (const char *__path, int __oflag) __attribute__ ((__nonnull__ (1)));
extern int __open_alias (const char *__path, int __oflag, ...) __asm__ ("" "open")
               __attribute__ ((__nonnull__ (1)));
extern void __open_too_many_args (void) __attribute__((__error__ ("open can be called either with 2 or 3 arguments, not more")))
                                                                  ;
extern void __open_missing_mode (void) __attribute__((__error__ ("open with O_CREAT or O_TMPFILE in second argument needs 3 arguments")))
                                                                            ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
open (const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __open_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __open_missing_mode ();
   return __open_2 (__path, __oflag);
 }
      return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __open_2 (__path, __oflag);
  return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
}
extern int __open64_2 (const char *__path, int __oflag) __attribute__ ((__nonnull__ (1)));
extern int __open64_alias (const char *__path, int __oflag, ...) __asm__ ("" "open64")
                   __attribute__ ((__nonnull__ (1)));
extern void __open64_too_many_args (void) __attribute__((__error__ ("open64 can be called either with 2 or 3 arguments, not more")))
                                                                    ;
extern void __open64_missing_mode (void) __attribute__((__error__ ("open64 with O_CREAT or O_TMPFILE in second argument needs 3 arguments")))
                                                                              ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
open64 (const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __open64_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __open64_missing_mode ();
   return __open64_2 (__path, __oflag);
 }
      return __open64_alias (__path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __open64_2 (__path, __oflag);
  return __open64_alias (__path, __oflag, __builtin_va_arg_pack ());
}
extern int __openat_2 (int __fd, const char *__path, int __oflag)
     __attribute__ ((__nonnull__ (2)));
extern int __openat_alias (int __fd, const char *__path, int __oflag, ...) __asm__ ("" "openat")
     __attribute__ ((__nonnull__ (2)));
extern void __openat_too_many_args (void) __attribute__((__error__ ("openat can be called either with 3 or 4 arguments, not more")))
                                                                    ;
extern void __openat_missing_mode (void) __attribute__((__error__ ("openat with O_CREAT or O_TMPFILE in third argument needs 4 arguments")))
                                                                             ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
openat (int __fd, const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __openat_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __openat_missing_mode ();
   return __openat_2 (__fd, __path, __oflag);
 }
      return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __openat_2 (__fd, __path, __oflag);
  return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
}
extern int __openat64_2 (int __fd, const char *__path, int __oflag)
     __attribute__ ((__nonnull__ (2)));
extern int __openat64_alias (int __fd, const char *__path, int __oflag, ...) __asm__ ("" "openat64")
     __attribute__ ((__nonnull__ (2)));
extern void __openat64_too_many_args (void) __attribute__((__error__ ("openat64 can be called either with 3 or 4 arguments, not more")))
                                                                      ;
extern void __openat64_missing_mode (void) __attribute__((__error__ ("openat64 with O_CREAT or O_TMPFILE in third argument needs 4 arguments")))
                                                                               ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
openat64 (int __fd, const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __openat64_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __openat64_missing_mode ();
   return __openat64_2 (__fd, __path, __oflag);
 }
      return __openat64_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __openat64_2 (__fd, __path, __oflag);
  return __openat64_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
}
extern int rpl_fcntl (int fd, int action, ...);
struct _IO_FILE;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE {
  int _flags;
  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;
typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;
struct _IO_cookie_file;
extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_peekc_locked (_IO_FILE *__fp);
extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);
extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
typedef _G_fpos_t fpos_t;
typedef _G_fpos64_t fpos64_t;
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern FILE *tmpfile (void) __attribute__ ((__warn_unused_result__));
extern FILE *tmpfile64 (void) __attribute__ ((__warn_unused_result__));
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern int fcloseall (void);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) __attribute__ ((__warn_unused_result__));
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) __attribute__ ((__warn_unused_result__));
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));
extern int scanf (const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__));
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__));
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__));
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) __attribute__ ((__warn_unused_result__));
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void perror (const char *__s);
extern int sys_nerr;
extern const char *const sys_errlist[];
extern int _sys_nerr;
extern const char *const _sys_errlist[];
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern FILE *popen (const char *__command, const char *__modes) __attribute__ ((__warn_unused_result__));
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
extern char *cuserid (char *__s);
struct obstack;
extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return _IO_getc (stdin);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) __ssize_t
getline (char **__lineptr, size_t *__n, FILE *__stream)
{
  return __getdelim (__lineptr, __n, '\n', __stream);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x10) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x20) != 0);
}
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 2 - 1,
      __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char *__restrict __s, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __builtin___vsprintf_chk (__s, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}
extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)
{
  return __builtin___snprintf_chk (__s, __n, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __builtin___vsnprintf_chk (__s, __n, 2 - 1,
        __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}
extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     const char *__restrict __format, ...);
extern int __printf_chk (int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      const char *__restrict __format, __gnuc_va_list __ap);
extern int __vprintf_chk (int __flag, const char *__restrict __format,
     __gnuc_va_list __ap);
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (2 - 1, __fmt, __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (stdout, 2 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vfprintf (FILE *__restrict __stream,
   const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 2 - 1, __fmt, __ap);
}
extern int __dprintf_chk (int __fd, int __flag, const char *__restrict __fmt,
     ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __vdprintf_chk (int __fd, int __flag,
      const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
dprintf (int __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vdprintf (int __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, 2 - 1, __fmt, __ap);
}
extern int __asprintf_chk (char **__restrict __ptr, int __flag,
      const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 4))) __attribute__ ((__warn_unused_result__));
extern int __vasprintf_chk (char **__restrict __ptr, int __flag,
       const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 0))) __attribute__ ((__warn_unused_result__));
extern int __obstack_printf_chk (struct obstack *__restrict __obstack,
     int __flag, const char *__restrict __format,
     ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __obstack_vprintf_chk (struct obstack *__restrict __obstack,
      int __flag,
      const char *__restrict __format,
      __gnuc_va_list __args)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) asprintf (char **__restrict __ptr, const char *__restrict __fmt, ...)
{
  return __asprintf_chk (__ptr, 2 - 1, __fmt,
    __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) __asprintf (char **__restrict __ptr, const char *__restrict __fmt, ...)
{
  return __asprintf_chk (__ptr, 2 - 1, __fmt,
    __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) obstack_printf (struct obstack *__restrict __obstack, const char *__restrict __fmt, ...)
{
  return __obstack_printf_chk (__obstack, 2 - 1, __fmt,
          __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vasprintf (char **__restrict __ptr, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vasprintf_chk (__ptr, 2 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) obstack_vprintf (struct obstack *__restrict __obstack, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __obstack_vprintf_chk (__obstack, 2 - 1, __fmt,
    __ap);
}
extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")
                                        __attribute__ ((__warn_unused_result__));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")))
                                 ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
 return __fgets_chk (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
      if ((size_t) __n > __builtin_object_size (__s, 2 > 1))
 return __fgets_chk_warn (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
}
extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread")
            __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")))
                                 ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);
      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
}
extern char *__fgets_unlocked_chk (char *__restrict __s, size_t __size,
       int __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern char *__fgets_unlocked_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets_unlocked")
                                                 __attribute__ ((__warn_unused_result__));
extern char *__fgets_unlocked_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_unlocked_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets_unlocked called with bigger size than length " "of destination buffer")))
                                 ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
fgets_unlocked (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
 return __fgets_unlocked_chk (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
      if ((size_t) __n > __builtin_object_size (__s, 2 > 1))
 return __fgets_unlocked_chk_warn (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
    }
  return __fgets_unlocked_alias (__s, __n, __stream);
}
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked")
                     __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")))
                                        ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
  FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_unlocked_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
         __stream);
      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_unlocked_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
       __stream);
    }
  if (__builtin_constant_p (__size)
      && __builtin_constant_p (__n)
      && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
      && __size * __n <= 8)
    {
      size_t __cnt = __size * __n;
      char *__cptr = (char *) __ptr;
      if (__cnt == 0)
 return 0;
      for (; __cnt > 0; --__cnt)
 {
   int __c = (__builtin_expect (((__stream)->_IO_read_ptr >= (__stream)->_IO_read_end), 0) ? __uflow (__stream) : *(unsigned char *) (__stream)->_IO_read_ptr++);
   if (__c == (-1))
     break;
   *__cptr++ = __c;
 }
      return (__cptr - (char *) __ptr) / __size;
    }
  return __fread_unlocked_alias (__ptr, __size, __n, __stream);
}
                                                                      ;
                                                                    ;
extern FILE *emacs_fopen (char const *, char const *);
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern char *program_invocation_name, *program_invocation_short_name;
typedef int error_t;
inline int
set_binary_mode (int fd, int mode)
{
  (void) fd;
  (void) mode;
  return
        0
                ;
}
inline
              _Bool
c_isalnum (int c)
{
  switch (c)
    {
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isalpha (int c)
{
  switch (c)
    {
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isascii (int c)
{
  switch (c)
    {
    case ' ':
    case '\a': case '\b': case '\f': case '\n': case '\r': case '\t': case '\v': case '\x00': case '\x01': case '\x02': case '\x03': case '\x04': case '\x05': case '\x06': case '\x0e': case '\x0f': case '\x10': case '\x11': case '\x12': case '\x13': case '\x14': case '\x15': case '\x16': case '\x17': case '\x18': case '\x19': case '\x1a': case '\x1b': case '\x1c': case '\x1d': case '\x1e': case '\x1f': case '\x7f':
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
    case '!': case '"': case '#': case '$': case '%': case '&': case '\'': case '(': case ')': case '*': case '+': case ',': case '-': case '.': case '/': case ':': case ';': case '<': case '=': case '>': case '?': case '@': case '[': case '\\': case ']': case '^': case '_': case '`': case '{': case '|': case '}': case '~':
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isblank (int c)
{
  return c == ' ' || c == '\t';
}
inline
              _Bool
c_iscntrl (int c)
{
  switch (c)
    {
    case '\a': case '\b': case '\f': case '\n': case '\r': case '\t': case '\v': case '\x00': case '\x01': case '\x02': case '\x03': case '\x04': case '\x05': case '\x06': case '\x0e': case '\x0f': case '\x10': case '\x11': case '\x12': case '\x13': case '\x14': case '\x15': case '\x16': case '\x17': case '\x18': case '\x19': case '\x1a': case '\x1b': case '\x1c': case '\x1d': case '\x1e': case '\x1f': case '\x7f':
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isdigit (int c)
{
  switch (c)
    {
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isgraph (int c)
{
  switch (c)
    {
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
    case '!': case '"': case '#': case '$': case '%': case '&': case '\'': case '(': case ')': case '*': case '+': case ',': case '-': case '.': case '/': case ':': case ';': case '<': case '=': case '>': case '?': case '@': case '[': case '\\': case ']': case '^': case '_': case '`': case '{': case '|': case '}': case '~':
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_islower (int c)
{
  switch (c)
    {
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isprint (int c)
{
  switch (c)
    {
    case ' ':
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
    case '!': case '"': case '#': case '$': case '%': case '&': case '\'': case '(': case ')': case '*': case '+': case ',': case '-': case '.': case '/': case ':': case ';': case '<': case '=': case '>': case '?': case '@': case '[': case '\\': case ']': case '^': case '_': case '`': case '{': case '|': case '}': case '~':
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_ispunct (int c)
{
  switch (c)
    {
    case '!': case '"': case '#': case '$': case '%': case '&': case '\'': case '(': case ')': case '*': case '+': case ',': case '-': case '.': case '/': case ':': case ';': case '<': case '=': case '>': case '?': case '@': case '[': case '\\': case ']': case '^': case '_': case '`': case '{': case '|': case '}': case '~':
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isspace (int c)
{
  switch (c)
    {
    case ' ': case '\t': case '\n': case '\v': case '\f': case '\r':
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isupper (int c)
{
  switch (c)
    {
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline
              _Bool
c_isxdigit (int c)
{
  switch (c)
    {
    case '0': case '1': case '2': case '3': case '4': case '5': case '6': case '7': case '8': case '9':
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'):
      return
            1
                ;
    default:
      return
            0
                 ;
    }
}
inline int
c_tolower (int c)
{
  switch (c)
    {
    case 'a' + ('A' - 'a'): case 'b' + ('A' - 'a'): case 'c' + ('A' - 'a'): case 'd' + ('A' - 'a'): case 'e' + ('A' - 'a'): case 'f' + ('A' - 'a'): case 'g' + ('A' - 'a'): case 'h' + ('A' - 'a'): case 'i' + ('A' - 'a'): case 'j' + ('A' - 'a'): case 'k' + ('A' - 'a'): case 'l' + ('A' - 'a'): case 'm' + ('A' - 'a'): case 'n' + ('A' - 'a'): case 'o' + ('A' - 'a'): case 'p' + ('A' - 'a'): case 'q' + ('A' - 'a'): case 'r' + ('A' - 'a'): case 's' + ('A' - 'a'): case 't' + ('A' - 'a'): case 'u' + ('A' - 'a'): case 'v' + ('A' - 'a'): case 'w' + ('A' - 'a'): case 'x' + ('A' - 'a'): case 'y' + ('A' - 'a'): case 'z' + ('A' - 'a'):
      return c - 'A' + 'a';
    default:
      return c;
    }
}
inline int
c_toupper (int c)
{
  switch (c)
    {
    case 'a' + (0): case 'b' + (0): case 'c' + (0): case 'd' + (0): case 'e' + (0): case 'f' + (0): case 'g' + (0): case 'h' + (0): case 'i' + (0): case 'j' + (0): case 'k' + (0): case 'l' + (0): case 'm' + (0): case 'n' + (0): case 'o' + (0): case 'p' + (0): case 'q' + (0): case 'r' + (0): case 's' + (0): case 't' + (0): case 'u' + (0): case 'v' + (0): case 'w' + (0): case 'x' + (0): case 'y' + (0): case 'z' + (0):
      return c - 'a' + 'A';
    default:
      return c;
    }
}
extern int c_strcasecmp (const char *s1, const char *s2)
                                                        __attribute__ ((__pure__))
                                                                          ;
extern int c_strncasecmp (const char *s1, const char *s2, size_t n)
 __attribute__ ((__pure__))
                   ;
struct option
{
  const char *name;
  int has_arg;
  int *flag;
  int val;
};
extern int getopt_long (int ___argc, char *const *___argv,
   const char *__shortopts,
          const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__));
extern int getopt_long_only (int ___argc, char *const *___argv,
        const char *__shortopts,
               const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__));
typedef unsigned long reg_syntax_t;
extern reg_syntax_t re_syntax_options;
extern size_t re_max_failures;
typedef enum
{
  REG_ENOSYS = -1,
  REG_NOERROR = 0,
  REG_NOMATCH,
  REG_BADPAT,
  REG_ECOLLATE,
  REG_ECTYPE,
  REG_EESCAPE,
  REG_ESUBREG,
  REG_EBRACK,
  REG_EPAREN,
  REG_EBRACE,
  REG_BADBR,
  REG_ERANGE,
  REG_ESPACE,
  REG_BADRPT,
  REG_EEND,
  REG_ESIZE,
  REG_ERPAREN,
  REG_ERANGEX
} reg_errcode_t;
struct re_pattern_buffer
{
  unsigned char *buffer;
  size_t allocated;
  size_t used;
  reg_syntax_t syntax;
  char *fastmap;
  char * translate;
  size_t re_nsub;
  unsigned can_be_null : 1;
  unsigned regs_allocated : 2;
  unsigned fastmap_accurate : 1;
  unsigned no_sub : 1;
  unsigned not_bol : 1;
  unsigned not_eol : 1;
  unsigned used_syntax : 1;
};
typedef struct re_pattern_buffer regex_t;
typedef ssize_t regoff_t;
struct re_registers
{
  unsigned num_regs;
  regoff_t *start;
  regoff_t *end;
};
typedef struct
{
  regoff_t rm_so;
  regoff_t rm_eo;
} regmatch_t;
extern reg_syntax_t re_set_syntax (reg_syntax_t __syntax);
extern const char *re_compile_pattern (const char *__pattern, size_t __length,
           struct re_pattern_buffer *__buffer);
extern int re_compile_fastmap (struct re_pattern_buffer *__buffer);
extern regoff_t re_search (struct re_pattern_buffer *__buffer,
      const char *__string, size_t __length,
      ssize_t __start, ssize_t __range,
      struct re_registers *__regs);
extern regoff_t re_search_2 (struct re_pattern_buffer *__buffer,
        const char *__string1, size_t __length1,
        const char *__string2, size_t __length2,
        ssize_t __start, ssize_t __range,
        struct re_registers *__regs,
        ssize_t __stop);
extern regoff_t re_match (struct re_pattern_buffer *__buffer,
     const char *__string, size_t __length,
     ssize_t __start, struct re_registers *__regs);
extern regoff_t re_match_2 (struct re_pattern_buffer *__buffer,
       const char *__string1, size_t __length1,
       const char *__string2, size_t __length2,
       ssize_t __start, struct re_registers *__regs,
       ssize_t __stop);
extern void re_set_registers (struct re_pattern_buffer *__buffer,
         struct re_registers *__regs,
         unsigned __num_regs,
         regoff_t *__starts, regoff_t *__ends);
extern reg_errcode_t regcomp (regex_t *__restrict __preg,
         const char *__restrict __pattern,
         int __cflags);
extern reg_errcode_t regexec (const regex_t *__restrict __preg,
         const char *__restrict __string, size_t __nmatch,
         regmatch_t __pmatch[__restrict],
         int __eflags);
extern size_t regerror (int __errcode, const regex_t * __preg,
   char *__errbuf, size_t __errbuf_size);
extern void regfree (regex_t *__preg);
typedef enum { RECC_ERROR = 0,
        RECC_ALNUM, RECC_ALPHA, RECC_WORD,
        RECC_GRAPH, RECC_PRINT,
        RECC_LOWER, RECC_UPPER,
        RECC_PUNCT, RECC_CNTRL,
        RECC_DIGIT, RECC_XDIGIT,
        RECC_BLANK, RECC_SPACE,
        RECC_MULTIBYTE, RECC_NONASCII,
        RECC_ASCII, RECC_UNIBYTE
} re_wctype_t;
extern char re_iswctype (int ch, re_wctype_t cc);
extern re_wctype_t re_wctype (const unsigned char* str);
typedef int re_wchar_t;
extern void re_set_whitespace_regexp (const char *regexp);
static
      _Bool
streq (char const *s, char const *t)
{
  return
        __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
        s
        ) && __builtin_constant_p (
        t
        ) && (__s1_len = strlen (
        s
        ), __s2_len = strlen (
        t
        ), (!((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
        s
        ,
        t
        ) : (__builtin_constant_p (
        s
        ) && ((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) && (__s1_len = strlen (
        s
        ), __s1_len < 4) ? (__builtin_constant_p (
        t
        ) && ((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) ? __builtin_strcmp (
        s
        ,
        t
        ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
        t
        ); int __result = (((const unsigned char *) (const char *) (
        s
        ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        s
        ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        s
        ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
        s
        ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
        t
        ) && ((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) && (__s2_len = strlen (
        t
        ), __s2_len < 4) ? (__builtin_constant_p (
        s
        ) && ((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) ? __builtin_strcmp (
        s
        ,
        t
        ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
        s
        ); int __result = (((const unsigned char *) (const char *) (
        t
        ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        t
        ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        t
        ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
        t
        ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
        s
        ,
        t
        )))); })
                      == 0;
}
static
      _Bool
strcaseeq (char const *s, char const *t)
{
  return c_strcasecmp (s, t) == 0;
}
static
      _Bool
strneq (char const *s, char const *t, size_t n)
{
  return
        (__extension__ (__builtin_constant_p (
        n
        ) && ((__builtin_constant_p (
        s
        ) && strlen (
        s
        ) < ((size_t) (
        n
        ))) || (__builtin_constant_p (
        t
        ) && strlen (
        t
        ) < ((size_t) (
        n
        )))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
        s
        ) && __builtin_constant_p (
        t
        ) && (__s1_len = strlen (
        s
        ), __s2_len = strlen (
        t
        ), (!((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
        s
        ,
        t
        ) : (__builtin_constant_p (
        s
        ) && ((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) && (__s1_len = strlen (
        s
        ), __s1_len < 4) ? (__builtin_constant_p (
        t
        ) && ((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) ? __builtin_strcmp (
        s
        ,
        t
        ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
        t
        ); int __result = (((const unsigned char *) (const char *) (
        s
        ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        s
        ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        s
        ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
        s
        ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
        t
        ) && ((size_t)(const void *)((
        t
        ) + 1) - (size_t)(const void *)(
        t
        ) == 1) && (__s2_len = strlen (
        t
        ), __s2_len < 4) ? (__builtin_constant_p (
        s
        ) && ((size_t)(const void *)((
        s
        ) + 1) - (size_t)(const void *)(
        s
        ) == 1) ? __builtin_strcmp (
        s
        ,
        t
        ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
        s
        ); int __result = (((const unsigned char *) (const char *) (
        t
        ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        t
        ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
        t
        ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
        t
        ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
        s
        ,
        t
        )))); }) : strncmp (
        s
        ,
        t
        ,
        n
        )))
                          == 0;
}
static
      _Bool
strncaseeq (char const *s, char const *t, size_t n)
{
  return c_strncasecmp (s, t, n) == 0;
}
static
      _Bool
notinname (unsigned char c)
{
  static
        _Bool
             const table[
                         (0x7f * 2 + 1)
                                   + 1] = {
    ['\0']=1, ['\t']=1, ['\n']=1, ['\f']=1, ['\r']=1, [' ']=1,
    ['(']=1, [')']=1, [',']=1, [';']=1, ['=']=1
  };
  return table[c];
}
static
      _Bool
begtoken (unsigned char c)
{
  static
        _Bool
             const table[
                         (0x7f * 2 + 1)
                                   + 1] = {
    ['$']=1, ['@']=1,
    ['A']=1, ['B']=1, ['C']=1, ['D']=1, ['E']=1, ['F']=1, ['G']=1, ['H']=1,
    ['I']=1, ['J']=1, ['K']=1, ['L']=1, ['M']=1, ['N']=1, ['O']=1, ['P']=1,
    ['Q']=1, ['R']=1, ['S']=1, ['T']=1, ['U']=1, ['V']=1, ['W']=1, ['X']=1,
    ['Y']=1, ['Z']=1,
    ['_']=1,
    ['a']=1, ['b']=1, ['c']=1, ['d']=1, ['e']=1, ['f']=1, ['g']=1, ['h']=1,
    ['i']=1, ['j']=1, ['k']=1, ['l']=1, ['m']=1, ['n']=1, ['o']=1, ['p']=1,
    ['q']=1, ['r']=1, ['s']=1, ['t']=1, ['u']=1, ['v']=1, ['w']=1, ['x']=1,
    ['y']=1, ['z']=1,
    ['~']=1
  };
  return table[c];
}
static
      _Bool
intoken (unsigned char c)
{
  static
        _Bool
             const table[
                         (0x7f * 2 + 1)
                                   + 1] = {
    ['$']=1,
    ['0']=1, ['1']=1, ['2']=1, ['3']=1, ['4']=1,
    ['5']=1, ['6']=1, ['7']=1, ['8']=1, ['9']=1,
    ['A']=1, ['B']=1, ['C']=1, ['D']=1, ['E']=1, ['F']=1, ['G']=1, ['H']=1,
    ['I']=1, ['J']=1, ['K']=1, ['L']=1, ['M']=1, ['N']=1, ['O']=1, ['P']=1,
    ['Q']=1, ['R']=1, ['S']=1, ['T']=1, ['U']=1, ['V']=1, ['W']=1, ['X']=1,
    ['Y']=1, ['Z']=1,
    ['_']=1,
    ['a']=1, ['b']=1, ['c']=1, ['d']=1, ['e']=1, ['f']=1, ['g']=1, ['h']=1,
    ['i']=1, ['j']=1, ['k']=1, ['l']=1, ['m']=1, ['n']=1, ['o']=1, ['p']=1,
    ['q']=1, ['r']=1, ['s']=1, ['t']=1, ['u']=1, ['v']=1, ['w']=1, ['x']=1,
    ['y']=1, ['z']=1
  };
  return table[c];
}
static
      _Bool
endtoken (unsigned char c)
{
  static
        _Bool
             const table[
                         (0x7f * 2 + 1)
                                   + 1] = {
    ['\0']=1, ['\t']=1, ['\n']=1, ['\r']=1, [' ']=1,
    ['!']=1, ['"']=1, ['#']=1, ['%']=1, ['&']=1, ['\'']=1, ['(']=1, [')']=1,
    ['*']=1, ['+']=1, [',']=1, ['-']=1, ['.']=1, ['/']=1, [':']=1, [';']=1,
    ['<']=1, ['=']=1, ['>']=1, ['?']=1, ['[']=1, [']']=1, ['^']=1,
    ['{']=1, ['|']=1, ['}']=1, ['~']=1
  };
  return table[c];
}
typedef void Lang_function (FILE *);
typedef struct
{
  const char *suffix;
  const char *command;
} compressor;
typedef struct
{
  const char *name;
  const char *help;
  Lang_function *function;
  const char **suffixes;
  const char **filenames;
  const char **interpreters;
 _Bool
      metasource;
} language;
typedef struct fdesc
{
  struct fdesc *next;
  char *infname;
  char *infabsname;
  char *infabsdir;
  char *taggedfname;
  language *lang;
  char *prop;
 _Bool
      usecharno;
 _Bool
      written;
} fdesc;
typedef struct node_st
{
  struct node_st *left, *right;
  fdesc *fdp;
  char *name;
  char *regex;
 _Bool
      valid;
 _Bool
      is_func;
 _Bool
      been_warned;
  int lno;
  long cno;
} node;
typedef struct
{
  long size;
  int len;
  char *buffer;
} linebuffer;
typedef struct
{
  enum {
    at_language,
    at_regexp,
    at_filename,
    at_stdin,
    at_end
  } arg_type;
  language *lang;
  char *what;
} argument;
typedef struct regexp
{
  struct regexp *p_next;
  language *lang;
  char *pattern;
  char *name;
  struct re_pattern_buffer *pat;
  struct re_registers regs;
 _Bool
      error_signaled;
 _Bool
      force_explicit_name;
 _Bool
      ignore_case;
 _Bool
      multi_line;
} regexp;
static void Ada_funcs (FILE *);
static void Asm_labels (FILE *);
static void C_entries (int c_ext, FILE *);
static void default_C_entries (FILE *);
static void plain_C_entries (FILE *);
static void Cjava_entries (FILE *);
static void Cobol_paragraphs (FILE *);
static void Cplusplus_entries (FILE *);
static void Cstar_entries (FILE *);
static void Erlang_functions (FILE *);
static void Forth_words (FILE *);
static void Fortran_functions (FILE *);
static void Go_functions (FILE *);
static void HTML_labels (FILE *);
static void Lisp_functions (FILE *);
static void Lua_functions (FILE *);
static void Makefile_targets (FILE *);
static void Pascal_functions (FILE *);
static void Perl_functions (FILE *);
static void PHP_functions (FILE *);
static void PS_functions (FILE *);
static void Prolog_functions (FILE *);
static void Python_functions (FILE *);
static void Ruby_functions (FILE *);
static void Scheme_functions (FILE *);
static void TeX_commands (FILE *);
static void Texinfo_nodes (FILE *);
static void Yacc_entries (FILE *);
static void just_read_file (FILE *);
static language *get_language_from_langname (const char *);
static void readline (linebuffer *, FILE *);
static long readline_internal (linebuffer *, FILE *, char const *);
static
      _Bool
           nocase_tail (const char *);
static void get_tag (char *, char **);
static void analyze_regex (char *);
static void free_regexps (void);
static void regex_tag_multiline (void);
static void error (const char *, ...) __attribute__ ((__format__ (__gnu_printf__, 1, 2)));
static void verror (char const *, va_list) __attribute__ ((__format__ (__gnu_printf__, 1, 0)));
static _Noreturn void suggest_asking_for_help (void);
static _Noreturn void fatal (char const *, ...) __attribute__ ((__format__ (__gnu_printf__, 1, 2)));
static _Noreturn void pfatal (const char *);
static void add_node (node *, node **);
static void process_file_name (char *, language *);
static void process_file (FILE *, char *, language *);
static void find_entries (FILE *);
static void free_tree (node *);
static void free_fdesc (fdesc *);
static void pfnote (char *,
                           _Bool
                               , char *, int, int, long);
static void invalidate_nodes (fdesc *, node **);
static void put_entries (node *);
static char *concat (const char *, const char *, const char *);
static char *skip_spaces (char *);
static char *skip_non_spaces (char *);
static char *skip_name (char *);
static char *savenstr (const char *, int);
static char *savestr (const char *);
static char *etags_getcwd (void);
static char *relative_filename (char *, char *);
static char *absolute_filename (char *, char *);
static char *absolute_dirname (char *, char *);
static
      _Bool
           filename_is_absolute (char *f);
static void canonicalize_filename (char *);
static char *etags_mktmp (void);
static void linebuffer_init (linebuffer *);
static void linebuffer_setlen (linebuffer *, int);
static void *xmalloc (size_t);
static void *xrealloc (void *, size_t);
static char searchar = '/';
static char *tagfile;
static char *progname;
static char *cwd;
static char *tagfiledir;
static FILE *tagf;
static ptrdiff_t whatlen_max;
static fdesc *fdhead;
static fdesc *curfdp;
static char *infilename;
static int lineno;
static long charno;
static long linecharno;
static char *dbp;
static const int invalidcharno = -1;
static node *nodehead;
static node *last_node;
static linebuffer lb;
static linebuffer filebuf;
static linebuffer token_name;
static
      _Bool
           append_to_tagfile;
static
      _Bool
           typedefs;
static
      _Bool
           typedefs_or_cplusplus;
static
      _Bool
           constantypedefs;
static int globals;
static int members;
static int declarations;
static int no_line_directive;
static int no_duplicates;
static
      _Bool
           update;
static
      _Bool
           vgrind_style;
static
      _Bool
           no_warnings;
static
      _Bool
           cxref_style;
static
      _Bool
           cplusplus;
static
      _Bool
           ignoreindent;
static int packages_only;
static int class_qualify;
static
      _Bool
           parsing_stdin;
static regexp *p_head;
static
      _Bool
           need_filebuf;
static struct option longopts[] =
{
  { "append",
                         0
                                    ,
                                            ((void *)0)
                                                , 'a' },
  { "packages-only",
                         0
                                    , &packages_only, 1 },
  { "c++",
                         0
                                    ,
                                            ((void *)0)
                                                , 'C' },
  { "declarations",
                         0
                                    , &declarations, 1 },
  { "no-line-directive",
                         0
                                    , &no_line_directive, 1 },
  { "no-duplicates",
                         0
                                    , &no_duplicates, 1 },
  { "help",
                         0
                                    ,
                                            ((void *)0)
                                                , 'h' },
  { "help",
                         0
                                    ,
                                            ((void *)0)
                                                , 'H' },
  { "ignore-indentation",
                         0
                                    ,
                                            ((void *)0)
                                                , 'I' },
  { "language",
                         1
                                          ,
                                            ((void *)0)
                                                , 'l' },
  { "members",
                         0
                                    , &members, 1 },
  { "no-members",
                         0
                                    , &members, 0 },
  { "output",
                         1
                                          ,
                                            ((void *)0)
                                                , 'o' },
  { "class-qualify",
                         0
                                    , &class_qualify, 'Q' },
  { "regex",
                         1
                                          ,
                                            ((void *)0)
                                                , 'r' },
  { "no-regex",
                         0
                                    ,
                                            ((void *)0)
                                                , 'R' },
  { "ignore-case-regex",
                         1
                                          ,
                                            ((void *)0)
                                                , 'c' },
  { "parse-stdin",
                         1
                                          ,
                                            ((void *)0)
                                                , 0x1001 },
  { "version",
                         0
                                    ,
                                            ((void *)0)
                                                , 'V' },
  { "no-defines",
                         0
                                    ,
                                            ((void *)0)
                                                , 'D' },
  { "no-globals",
                         0
                                    , &globals, 0 },
  { "include",
                         1
                                          ,
                                            ((void *)0)
                                                , 'i' },
  {
   ((void *)0)
        }
};
static compressor compressors[] =
{
  { "z", "gzip -d -c"},
  { "Z", "gzip -d -c"},
  { "gz", "gzip -d -c"},
  { "GZ", "gzip -d -c"},
  { "bz2", "bzip2 -d -c" },
  { "xz", "xz -d -c" },
  {
   ((void *)0)
        }
};
static const char *Ada_suffixes [] =
  { "ads", "adb", "ada",
                        ((void *)0)
                             };
static const char Ada_help [] =
"In Ada code, functions, procedures, packages, tasks and types are\ntags.  Use the '--packages-only' option to create tags for\npackages only.\nAda tag names have suffixes indicating the type of entity:\n	Entity type:	Qualifier:\n	------------	----------\n	function	/f\n	procedure	/p\n	package spec	/s\n	package body	/b\n	type		/t\n	task		/k\nThus, 'M-x find-tag <RET> bidule/b <RET>' will go directly to the\nbody of the package 'bidule', while 'M-x find-tag <RET> bidule <RET>'\nwill just search for any tag 'bidule'.";
static const char *Asm_suffixes [] =
  { "a",
    "asm",
    "def",
    "inc",
    "ins",
    "s", "sa",
    "S",
    "src",
   ((void *)0)
 };
static const char Asm_help [] =
"In assembler code, labels appearing at the beginning of a line,\nfollowed by a colon, are tags.";
static const char *default_C_suffixes [] =
  { "c", "h",
             ((void *)0)
                  };
static const char default_C_help [] =
"In C code, any C function or typedef is a tag, and so are\ndefinitions of 'struct', 'union' and 'enum'.  '#define' macro\ndefinitions and 'enum' constants are tags unless you specify\n'--no-defines'.  Global variables are tags unless you specify\n'--no-globals' and so are struct members unless you specify\n'--no-members'.  Use of '--no-globals', '--no-defines' and\n'--no-members' can make the tags table file much smaller.\nYou can tag function declarations and external variables by\nusing '--declarations'.";
static const char *Cplusplus_suffixes [] =
  { "C", "c++", "cc", "cpp", "cxx", "H", "h++", "hh", "hpp", "hxx",
    "M",
    "pdb",
   ((void *)0)
        };
static const char Cplusplus_help [] =
"In C++ code, all the tag constructs of C code are tagged.  (Use\n--help --lang=c --lang=c++ for full help.)\nIn addition to C tags, member functions are also recognized.  Member\nvariables are recognized unless you use the '--no-members' option.\nTags for variables and functions in classes are named 'CLASS::VARIABLE'\nand 'CLASS::FUNCTION'.  'operator' definitions have tag names like\n'operator+'.";
static const char *Cjava_suffixes [] =
  { "java",
           ((void *)0)
                };
static char Cjava_help [] =
"In Java code, all the tags constructs of C and C++ code are\ntagged.  (Use --help --lang=c --lang=c++ --lang=java for full help.)";
static const char *Cobol_suffixes [] =
  { "COB", "cob",
                 ((void *)0)
                      };
static char Cobol_help [] =
"In Cobol code, tags are paragraph names; that is, any word\nstarting in column 8 and followed by a period.";
static const char *Cstar_suffixes [] =
  { "cs", "hs",
               ((void *)0)
                    };
static const char *Erlang_suffixes [] =
  { "erl", "hrl",
                 ((void *)0)
                      };
static const char Erlang_help [] =
"In Erlang code, the tags are the functions, records and macros\ndefined in the file.";
const char *Forth_suffixes [] =
  { "fth", "tok",
                 ((void *)0)
                      };
static const char Forth_help [] =
"In Forth code, tags are words defined by ':',\nconstant, code, create, defer, value, variable, buffer:, field.";
static const char *Fortran_suffixes [] =
  { "F", "f", "f90", "for",
                           ((void *)0)
                                };
static const char Fortran_help [] =
"In Fortran code, functions, subroutines and block data are tags.";
static const char *Go_suffixes [] = {"go",
                                          ((void *)0)
                                              };
static const char Go_help [] =
  "In Go code, functions, interfaces and packages are tags.";
static const char *HTML_suffixes [] =
  { "htm", "html", "shtml",
                           ((void *)0)
                                };
static const char HTML_help [] =
"In HTML input files, the tags are the 'title' and the 'h1', 'h2',\n'h3' headers.  Also, tags are 'name=' in anchors and all\noccurrences of 'id='.";
static const char *Lisp_suffixes [] =
  { "cl", "clisp", "el", "l", "lisp", "LSP", "lsp", "ml",
                                                         ((void *)0)
                                                              };
static const char Lisp_help [] =
"In Lisp code, any function defined with 'defun', any variable\ndefined with 'defvar' or 'defconst', and in general the first\nargument of any expression that starts with '(def' in column zero\nis a tag.\nThe '--declarations' option tags \"(defvar foo)\" constructs too.";
static const char *Lua_suffixes [] =
  { "lua", "LUA",
                 ((void *)0)
                      };
static const char Lua_help [] =
"In Lua scripts, all functions are tags.";
static const char *Makefile_filenames [] =
  { "Makefile", "makefile", "GNUMakefile", "Makefile.in", "Makefile.am",
                                                                        ((void *)0)
                                                                            };
static const char Makefile_help [] =
"In makefiles, targets are tags; additionally, variables are tags\nunless you specify '--no-globals'.";
static const char *Objc_suffixes [] =
  { "lm",
    "m",
    ((void *)0)
         };
static const char Objc_help [] =
"In Objective C code, tags include Objective C definitions for classes,\nclass categories, methods and protocols.  Tags for variables and\nfunctions in classes are named 'CLASS::VARIABLE' and 'CLASS::FUNCTION'.\n(Use --help --lang=c --lang=objc --lang=java for full help.)";
static const char *Pascal_suffixes [] =
  { "p", "pas",
               ((void *)0)
                    };
static const char Pascal_help [] =
"In Pascal code, the tags are the functions and procedures defined\nin the file.";
static const char *Perl_suffixes [] =
  { "pl", "pm",
               ((void *)0)
                    };
static const char *Perl_interpreters [] =
  { "perl", "@PERL@",
                     ((void *)0)
                          };
static const char Perl_help [] =
"In Perl code, the tags are the packages, subroutines and variables\ndefined by the 'package', 'sub', 'my' and 'local' keywords.  Use\n'--globals' if you want to tag global variables.  Tags for\nsubroutines are named 'PACKAGE::SUB'.  The name for subroutines\ndefined in the default package is 'main::SUB'.";
static const char *PHP_suffixes [] =
  { "php", "php3", "php4",
                          ((void *)0)
                               };
static const char PHP_help [] =
"In PHP code, tags are functions, classes and defines.  Unless you use\nthe '--no-members' option, vars are tags too.";
static const char *plain_C_suffixes [] =
  { "pc",
    ((void *)0)
         };
static const char *PS_suffixes [] =
  { "ps", "psw",
                ((void *)0)
                     };
static const char PS_help [] =
"In PostScript code, the tags are the functions.";
static const char *Prolog_suffixes [] =
  { "prolog",
             ((void *)0)
                  };
static const char Prolog_help [] =
"In Prolog code, tags are predicates and rules at the beginning of\nline.";
static const char *Python_suffixes [] =
  { "py",
         ((void *)0)
              };
static const char Python_help [] =
"In Python code, 'def' or 'class' at the beginning of a line\ngenerate a tag.";
static const char *Ruby_suffixes [] =
  { "rb", "ru", "rbw",
                      ((void *)0)
                           };
static const char *Ruby_filenames [] =
  { "Rakefile", "Thorfile",
                           ((void *)0)
                                };
static const char Ruby_help [] =
  "In Ruby code, 'def' or 'class' or 'module' at the beginning of\na line generate a tag.  Constants also generate a tag.";
static const char *Scheme_suffixes [] =
  { "oak", "sch", "scheme", "SCM", "scm", "SM", "sm", "ss", "t",
                                                                ((void *)0)
                                                                     };
static const char Scheme_help [] =
"In Scheme code, tags include anything defined with 'def' or with a\nconstruct whose name starts with 'def'.  They also include\nvariables set with 'set!' at top level in the file.";
static const char *TeX_suffixes [] =
  { "bib", "clo", "cls", "ltx", "sty", "TeX", "tex",
                                                    ((void *)0)
                                                         };
static const char TeX_help [] =
"In LaTeX text, the argument of any of the commands '\\chapter',\n'\\section', '\\subsection', '\\subsubsection', '\\eqno', '\\label',\n'\\ref', '\\cite', '\\bibitem', '\\part', '\\appendix', '\\entry',\n'\\index', '\\def', '\\newcommand', '\\renewcommand',\n'\\newenvironment' or '\\renewenvironment' is a tag.\n\nOther commands can be specified by setting the environment variable\n'TEXTAGS' to a colon-separated list like, for example,\n     TEXTAGS=\"mycommand:myothercommand\".";
static const char *Texinfo_suffixes [] =
  { "texi", "texinfo", "txi",
                             ((void *)0)
                                  };
static const char Texinfo_help [] =
"for texinfo files, lines starting with @node are tagged.";
static const char *Yacc_suffixes [] =
  { "y", "y++", "ym", "yxx", "yy",
                                  ((void *)0)
                                       };
static const char Yacc_help [] =
"In Bison or Yacc input files, each rule defines as a tag the\nnonterminal it constructs.  The portions of the file that contain\nC code are parsed as C code (use --help --lang=c --lang=yacc\nfor full help).";
static const char auto_help [] =
"'auto' is not a real language, it indicates to use\na default language for files base on file name suffix and file contents.";
static const char none_help [] =
"'none' is not a real language, it indicates to only do\nregexp processing on files.";
static const char no_lang_help [] =
"No detailed help available for this language.";
static language lang_names [] =
{
  { "ada", Ada_help, Ada_funcs, Ada_suffixes },
  { "asm", Asm_help, Asm_labels, Asm_suffixes },
  { "c", default_C_help, default_C_entries, default_C_suffixes },
  { "c++", Cplusplus_help, Cplusplus_entries, Cplusplus_suffixes },
  { "c*", no_lang_help, Cstar_entries, Cstar_suffixes },
  { "cobol", Cobol_help, Cobol_paragraphs, Cobol_suffixes },
  { "erlang", Erlang_help, Erlang_functions, Erlang_suffixes },
  { "forth", Forth_help, Forth_words, Forth_suffixes },
  { "fortran", Fortran_help, Fortran_functions, Fortran_suffixes },
  { "go", Go_help, Go_functions, Go_suffixes },
  { "html", HTML_help, HTML_labels, HTML_suffixes },
  { "java", Cjava_help, Cjava_entries, Cjava_suffixes },
  { "lisp", Lisp_help, Lisp_functions, Lisp_suffixes },
  { "lua", Lua_help, Lua_functions, Lua_suffixes },
  { "makefile", Makefile_help,Makefile_targets,
                                               ((void *)0)
                                                   ,Makefile_filenames},
  { "objc", Objc_help, plain_C_entries, Objc_suffixes },
  { "pascal", Pascal_help, Pascal_functions, Pascal_suffixes },
  { "perl",Perl_help,Perl_functions,Perl_suffixes,
                                                 ((void *)0)
                                                     ,Perl_interpreters},
  { "php", PHP_help, PHP_functions, PHP_suffixes },
  { "postscript",PS_help, PS_functions, PS_suffixes },
  { "proc", no_lang_help, plain_C_entries, plain_C_suffixes },
  { "prolog", Prolog_help, Prolog_functions, Prolog_suffixes },
  { "python", Python_help, Python_functions, Python_suffixes },
  { "ruby", Ruby_help,Ruby_functions,Ruby_suffixes,Ruby_filenames },
  { "scheme", Scheme_help, Scheme_functions, Scheme_suffixes },
  { "tex", TeX_help, TeX_commands, TeX_suffixes },
  { "texinfo", Texinfo_help, Texinfo_nodes, Texinfo_suffixes },
  { "yacc", Yacc_help,Yacc_entries,Yacc_suffixes,
                                                     ((void *)0)
                                                         ,
                                                          ((void *)0)
                                                              ,
                                                               1
                                                                   },
  { "auto", auto_help },
  { "none", none_help, just_read_file },
  {
   ((void *)0)
        }
};
static void
print_language_names (void)
{
  language *lang;
  const char **name, **ext;
  puts ("\nThese are the currently supported languages, along with the\ndefault file names and dot suffixes:");
  for (lang = lang_names; lang->name !=
                                       ((void *)0)
                                           ; lang++)
    {
      printf ("  %-*s", 10, lang->name);
      if (lang->filenames !=
                            ((void *)0)
                                )
 for (name = lang->filenames; *name !=
                                      ((void *)0)
                                          ; name++)
   printf (" %s", *name);
      if (lang->suffixes !=
                           ((void *)0)
                               )
 for (ext = lang->suffixes; *ext !=
                                   ((void *)0)
                                       ; ext++)
   printf (" .%s", *ext);
      puts ("");
    }
  puts ("where 'auto' means use default language for files based on file\nname suffix, and 'none' means only do regexp processing on files.\nIf no language is specified and no matching suffix is found,\nthe first line of the file is read for a sharp-bang (#!) sequence\nfollowed by the name of an interpreter.  If no such sequence is found,\nFortran is tried first; if no tags are found, C is tried next.\nWhen parsing any C file, a \"class\" or \"template\" keyword\nswitches to C++.");
  puts ("Compressed files are supported using gzip, bzip2, and xz.\n\nFor detailed help on a given language use, for example,\netags --help --lang=ada.");
}
static _Noreturn void
print_version (void)
{
  char emacs_copyright[] = "Copyright (C) 2016 Free Software Foundation, Inc.";
  printf ("%s (%s %s)\n", (
                          0
                               ) ? "ctags" : "etags", "GNU Emacs", "25.1.50");
  puts (emacs_copyright);
  puts ("This program is distributed under the terms in ETAGS.README");
  exit (
       0
                   );
}
static _Noreturn void
print_help (argument *argbuffer)
{
 _Bool
      help_for_lang =
                      0
                           ;
  for (; argbuffer->arg_type != at_end; argbuffer++)
    if (argbuffer->arg_type == at_language)
      {
 if (help_for_lang)
   puts ("");
 puts (argbuffer->lang->help);
 help_for_lang =
                1
                    ;
      }
  if (help_for_lang)
    exit (
         0
                     );
  printf ("Usage: %s [options] [[regex-option ...] file-name] ...\n\nThese are the options accepted by %s.\n",
                                          progname, progname);
  puts ("You may use unambiguous abbreviations for the long option names.");
  puts ("  A - as file name means read names from stdin (one per line).\nAbsolute names are stored in the output file as they are.\nRelative ones are stored relative to the output file's directory.\n");
  puts ("-a, --append\n        Append tag entries to existing tags file.");
  puts ("--packages-only\n        For Ada files, only generate tags for packages.");
  if (
     0
          )
    puts ("-B, --backward-search\n        Write the search commands for the tag entries using '?', the\n        backward-search command instead of '/', the forward-search command.");
  puts ("--declarations\n	In C and derived languages, create tags for function declarations,");
  if (
     0
          )
    puts ("\tand create tags for extern variables if --globals is used.");
  else
    puts
      ("\tand create tags for extern variables unless --no-globals is used.");
  if (
     0
          )
    puts ("-d, --defines\n        Create tag entries for C #define constants and enum constants, too.");
  else
    puts ("-D, --no-defines\n        Don't create tag entries for C #define constants and enum constants.\n	This makes the tags file smaller.");
  if (!
      0
           )
    puts ("-i FILE, --include=FILE\n        Include a note in tag file indicating that, when searching for\n        a tag, one should also consult the tags file FILE after\n        checking the current file.");
  puts ("-l LANG, --language=LANG\n        Force the following files to be considered as written in the\n	named language up to the next --language=LANG option.");
  if (
     0
          )
    puts ("--globals\n	Create tag entries for global variables in some languages.");
  else
    puts ("--no-globals\n	Do not create tag entries for global variables in some\n	languages.  This makes the tags file smaller.");
  puts ("--no-line-directive\n        Ignore #line preprocessor directives in C and derived languages.");
  if (
     0
          )
    puts ("--members\n	Create tag entries for members of structures in some languages.");
  else
    puts ("--no-members\n	Do not create tag entries for members of structures\n	in some languages.");
  puts ("-Q, --class-qualify\n        Qualify tag names with their class name in C++, ObjC, Java, and Perl.\n        This produces tag names of the form \"class::member\" for C++,\n        \"class(category)\" for Objective C, and \"class.member\" for Java.\n        For Objective C, this also produces class methods qualified with\n        their arguments, as in \"foo:bar:baz:more\".\n        For Perl, this produces \"package::member\".");
  puts ("-r REGEXP, --regex=REGEXP or --regex=@regexfile\n        Make a tag for each line matching a regular expression pattern\n	in the following files.  {LANGUAGE}REGEXP uses REGEXP for LANGUAGE\n	files only.  REGEXFILE is a file containing one REGEXP per line.\n	REGEXP takes the form /TAGREGEXP/TAGNAME/MODS, where TAGNAME/ is\n	optional.  The TAGREGEXP pattern is anchored (as if preceded by ^).");
  puts ("	If TAGNAME/ is present, the tags created are named.\n	For example Tcl named tags can be created with:\n	  --regex=\"/proc[ \\t]+\\([^ \\t]+\\)/\\1/.\".\n	MODS are optional one-letter modifiers: 'i' means to ignore case,\n	'm' means to allow multi-line matches, 's' implies 'm' and\n	causes dot to match any character, including newline.");
  puts ("-R, --no-regex\n        Don't create tags from regexps for the following files.");
  puts ("-I, --ignore-indentation\n        In C and C++ do not assume that a closing brace in the first\n        column is the final brace of a function or structure definition.");
  puts ("-o FILE, --output=FILE\n        Write the tags to FILE.");
  puts ("--parse-stdin=NAME\n        Read from standard input and record tags as belonging to file NAME.");
  if (
     0
          )
    {
      puts ("-t, --typedefs\n        Generate tag entries for C and Ada typedefs.");
      puts ("-T, --typedefs-and-c++\n        Generate tag entries for C typedefs, C struct/enum/union tags,\n        and C++ member functions.");
    }
  if (
     0
          )
    puts ("-u, --update\n        Update the tag entries for the given files, leaving tag\n        entries for other files in place.  Currently, this is\n        implemented by deleting the existing entries for the given\n        files and then rewriting the new entries at the end of the\n        tags file.  It is often faster to simply rebuild the entire\n        tag file than to use this.");
  if (
     0
          )
    {
      puts ("-v, --vgrind\n        Print on the standard output an index of items intended for\n        human consumption, similar to the output of vgrind.  The index\n        is sorted, and gives the page number of each item.");
      if (
         0
                                        )
 puts ("-w, --no-duplicates\n        Do not create duplicate tag entries, for compatibility with\n	traditional ctags.");
      if (
         0
                                        )
 puts ("-w, --no-warn\n        Suppress warning messages about duplicate tag entries.");
      puts ("-x, --cxref\n        Like --vgrind, but in the style of cxref, rather than vgrind.\n        The output uses line numbers instead of page numbers, but\n        beyond that the differences are cosmetic; try both to see\n        which you like.");
    }
  puts ("-V, --version\n        Print the version of the program.\n-h, --help\n        Print this help message.\n        Followed by one or more '--language' options prints detailed\n        help about tag generation for the specified languages.");
  print_language_names ();
  puts ("");
  puts ("Report bugs to bug-gnu-emacs@gnu.org");
  exit (
       0
                   );
}
int
main (int argc, char **argv)
{
  int i;
  unsigned int nincluded_files;
  char **included_files;
  argument *argbuffer;
  int current_arg, file_count;
  linebuffer filename_lb;
 _Bool
      help_asked =
                   0
                        ;
  ptrdiff_t len;
  char *optstring;
  int opt;
  progname = argv[0];
  nincluded_files = 0;
  included_files = ((char * *) xmalloc ((argc) * sizeof (char *)));
  current_arg = 0;
  file_count = 0;
  argbuffer = ((argument *) xmalloc ((argc) * sizeof (argument)));
  typedefs = typedefs_or_cplusplus = constantypedefs =
                                                      1
                                                          ;
  globals = members =
                     1
                         ;
  optstring = concat ("-ac:Cf:Il:o:Qr:RSVhH",
        (
        0
             ) ? "BxdtTuvw" : "Di:",
        "");
  while ((opt = getopt_long (argc, argv, optstring, longopts,
                                                             ((void *)0)
                                                                 )) !=
                                                                       (-1)
                                                                          )
    switch (opt)
      {
      case 0:
 break;
      case 1:
 argbuffer[current_arg].arg_type = at_filename;
 argbuffer[current_arg].what = optarg;
 len = strlen (optarg);
 if (whatlen_max < len)
   whatlen_max = len;
 ++current_arg;
 ++file_count;
 break;
      case 0x1001:
 argbuffer[current_arg].arg_type = at_stdin;
 argbuffer[current_arg].what = optarg;
 len = strlen (optarg);
 if (whatlen_max < len)
   whatlen_max = len;
 ++current_arg;
 ++file_count;
 if (parsing_stdin)
   fatal ("cannot parse standard input more than once");
 parsing_stdin =
                1
                    ;
 break;
      case 'a': append_to_tagfile =
                                   1
                                       ; break;
      case 'C': cplusplus =
                           1
                               ; break;
      case 'f':
      case 'o':
 if (tagfile)
   {
     error ("-o option may only be given once.");
     suggest_asking_for_help ();
   }
 tagfile = optarg;
 break;
      case 'I':
      case 'S':
 ignoreindent =
               1
                   ;
 break;
      case 'l':
 {
   language *lang = get_language_from_langname (optarg);
   if (lang !=
              ((void *)0)
                  )
     {
       argbuffer[current_arg].lang = lang;
       argbuffer[current_arg].arg_type = at_language;
       ++current_arg;
     }
 }
 break;
      case 'c':
 optarg = concat (optarg, "i", "");
      case 'r':
 argbuffer[current_arg].arg_type = at_regexp;
 argbuffer[current_arg].what = optarg;
 len = strlen (optarg);
 if (whatlen_max < len)
   whatlen_max = len;
 ++current_arg;
 break;
      case 'R':
 argbuffer[current_arg].arg_type = at_regexp;
 argbuffer[current_arg].what =
                              ((void *)0)
                                  ;
 ++current_arg;
 break;
      case 'V':
 print_version ();
 break;
      case 'h':
      case 'H':
 help_asked =
             1
                 ;
 break;
      case 'Q':
 class_qualify = 1;
 break;
      case 'D': constantypedefs =
                                 0
                                      ; break;
      case 'i': included_files[nincluded_files++] = optarg; break;
      case 'B': searchar = '?'; break;
      case 'd': constantypedefs =
                                 1
                                     ; break;
      case 't': typedefs =
                          1
                              ; break;
      case 'T': typedefs = typedefs_or_cplusplus =
                                                  1
                                                      ; break;
      case 'u': update =
                        1
                            ; break;
      case 'v': vgrind_style =
                              1
                                  ;
      case 'x': cxref_style =
                             1
                                 ; break;
      case 'w': no_warnings =
                             1
                                 ; break;
      default:
 suggest_asking_for_help ();
      }
  for (; optind < argc; optind++)
    {
      argbuffer[current_arg].arg_type = at_filename;
      argbuffer[current_arg].what = argv[optind];
      len = strlen (argv[optind]);
      if (whatlen_max < len)
 whatlen_max = len;
      ++current_arg;
      ++file_count;
    }
  argbuffer[current_arg].arg_type = at_end;
  if (help_asked)
    print_help (argbuffer);
  if (nincluded_files == 0 && file_count == 0)
    {
      error ("no input files specified.");
      suggest_asking_for_help ();
    }
  if (tagfile ==
                ((void *)0)
                    )
    tagfile = savestr (
                      0
                            ? "tags" : "TAGS");
  cwd = etags_getcwd ();
  if (cwd[strlen (cwd) - 1] != '/')
    {
      char *oldcwd = cwd;
      cwd = concat (oldcwd, "/", "");
      free (oldcwd);
    }
  if (streq (tagfile, "-")
      || strneq (tagfile, "/dev/", 5))
    tagfiledir = cwd;
  else
    {
      canonicalize_filename (tagfile);
      tagfiledir = absolute_dirname (tagfile, cwd);
    }
  linebuffer_init (&lb);
  linebuffer_init (&filename_lb);
  linebuffer_init (&filebuf);
  linebuffer_init (&token_name);
  if (!
      0
           )
    {
      if (streq (tagfile, "-"))
 {
   tagf =
         stdout
               ;
   ((void) set_binary_mode (fileno (
  stdout
  ),
  0
  ));
 }
      else
 tagf = fopen (tagfile, append_to_tagfile ? "ab" : "wb");
      if (tagf ==
                 ((void *)0)
                     )
 pfatal (tagfile);
    }
  for (i = 0; i < current_arg; i++)
    {
      static language *lang;
      char *this_file;
      switch (argbuffer[i].arg_type)
 {
 case at_language:
   lang = argbuffer[i].lang;
   break;
 case at_regexp:
   analyze_regex (argbuffer[i].what);
   break;
 case at_filename:
       this_file = argbuffer[i].what;
       if (streq (this_file, "-"))
  {
    if (parsing_stdin)
      fatal ("cannot parse standard input "
      "AND read file names from it");
    while (readline_internal (&filename_lb,
                                           stdin
                                                , "-") > 0)
      process_file_name (filename_lb.buffer, lang);
  }
       else
  process_file_name (this_file, lang);
   break;
        case at_stdin:
          this_file = argbuffer[i].what;
          process_file (
                       stdin
                            , this_file, lang);
          break;
 default:
   error ("internal error: arg_type");
 }
    }
  free_regexps ();
  free (lb.buffer);
  free (filebuf.buffer);
  free (token_name.buffer);
  if (!
      0
            || cxref_style)
    {
      put_entries (nodehead);
      free_tree (nodehead);
      nodehead =
                ((void *)0)
                    ;
      if (!
          0
               )
 {
   fdesc *fdp;
   for (fdp = fdhead; fdp !=
                            ((void *)0)
                                ; fdp = fdp->next)
     if (!fdp->written)
       fprintf (tagf, "\f\n%s,0\n", fdp->taggedfname);
   while (nincluded_files-- > 0)
     fprintf (tagf, "\f\n%s,include\n", *included_files++);
   if (fclose (tagf) ==
                       (-1)
                          )
     pfatal (tagfile);
 }
      exit (
           0
                       );
    }
  if (update)
    {
      char *cmd =
 xmalloc (strlen (tagfile) + whatlen_max +
   sizeof "mv..OTAGS;grep -Fv '\t\t' OTAGS >;rm OTAGS");
      for (i = 0; i < current_arg; ++i)
 {
   switch (argbuffer[i].arg_type)
     {
     case at_filename:
     case at_stdin:
       break;
     default:
       continue;
     }
   char *z = stpcpy (cmd, "mv ");
   z = stpcpy (z, tagfile);
   z = stpcpy (z, " OTAGS;grep -Fv '\t");
   z = stpcpy (z, argbuffer[i].what);
   z = stpcpy (z, "\t' OTAGS >");
   z = stpcpy (z, tagfile);
   strcpy (z, ";rm OTAGS");
   if (system (cmd) !=
                      0
                                  )
     fatal ("failed to execute shell command");
 }
      free (cmd);
      append_to_tagfile =
                         1
                             ;
    }
  tagf = fopen (tagfile, append_to_tagfile ? "ab" : "wb");
  if (tagf ==
             ((void *)0)
                 )
    pfatal (tagfile);
  put_entries (nodehead);
  free_tree (nodehead);
  nodehead =
            ((void *)0)
                ;
  if (fclose (tagf) ==
                      (-1)
                         )
    pfatal (tagfile);
  if (
     0
          )
    if (append_to_tagfile || update)
      {
 char *cmd = xmalloc (2 * strlen (tagfile) + sizeof "sort -u -o..");
 char *z = stpcpy (cmd, "sort -u -o ");
 z = stpcpy (z, tagfile);
 *z++ = ' ';
 strcpy (z, tagfile);
 exit (system (cmd));
      }
  return
        0
                    ;
}
static compressor *
get_compressor_from_suffix (char *file, char **extptr)
{
  compressor *compr;
  char *slash, *suffix;
  slash = strrchr (file, '/');
  suffix = strrchr (file, '.');
  if (suffix ==
               ((void *)0)
                    || suffix < slash)
    return
          ((void *)0)
              ;
  if (extptr !=
               ((void *)0)
                   )
    *extptr = suffix;
  suffix += 1;
  do
    {
      for (compr = compressors; compr->suffix !=
                                                ((void *)0)
                                                    ; compr++)
 if (streq (compr->suffix, suffix))
   return compr;
      if (!
          0
               )
 break;
      if (extptr !=
                   ((void *)0)
                       )
 *extptr = ++suffix;
    } while (*suffix != '\0');
  return
        ((void *)0)
            ;
}
static language *
get_language_from_langname (const char *name)
{
  language *lang;
  if (name ==
             ((void *)0)
                 )
    error ("empty language name");
  else
    {
      for (lang = lang_names; lang->name !=
                                           ((void *)0)
                                               ; lang++)
 if (streq (name, lang->name))
   return lang;
      error ("unknown language \"%s\"", name);
    }
  return
        ((void *)0)
            ;
}
static language *
get_language_from_interpreter (char *interpreter)
{
  language *lang;
  const char **iname;
  if (interpreter ==
                    ((void *)0)
                        )
    return
          ((void *)0)
              ;
  for (lang = lang_names; lang->name !=
                                       ((void *)0)
                                           ; lang++)
    if (lang->interpreters !=
                             ((void *)0)
                                 )
      for (iname = lang->interpreters; *iname !=
                                                ((void *)0)
                                                    ; iname++)
 if (streq (*iname, interpreter))
     return lang;
  return
        ((void *)0)
            ;
}
static language *
get_language_from_filename (char *file, int case_sensitive)
{
  language *lang;
  const char **name, **ext, *suffix;
  char *slash;
  slash = strrchr (file, '/');
  if (slash !=
              ((void *)0)
                  )
    file = slash + 1;
  for (lang = lang_names; lang->name !=
                                       ((void *)0)
                                           ; lang++)
    if (lang->filenames !=
                          ((void *)0)
                              )
      for (name = lang->filenames; *name !=
                                           ((void *)0)
                                               ; name++)
 if ((case_sensitive)
     ? streq (*name, file)
     : strcaseeq (*name, file))
   return lang;
  suffix = strrchr (file, '.');
  if (suffix ==
               ((void *)0)
                   )
    return
          ((void *)0)
              ;
  suffix += 1;
  for (lang = lang_names; lang->name !=
                                       ((void *)0)
                                           ; lang++)
    if (lang->suffixes !=
                         ((void *)0)
                             )
      for (ext = lang->suffixes; *ext !=
                                        ((void *)0)
                                            ; ext++)
 if ((case_sensitive)
     ? streq (*ext, suffix)
     : strcaseeq (*ext, suffix))
   return lang;
  return
        ((void *)0)
            ;
}
static void
process_file_name (char *file, language *lang)
{
  FILE *inf;
  fdesc *fdp;
  compressor *compr;
  char *compressed_name, *uncompressed_name;
  char *ext, *real_name, *tmp_name;
  int retval;
  canonicalize_filename (file);
  if (streq (file, tagfile) && !streq (tagfile, "-"))
    {
      error ("skipping inclusion of %s in self.", file);
      return;
    }
  compr = get_compressor_from_suffix (file, &ext);
  if (compr)
    {
      compressed_name = file;
      uncompressed_name = savenstr (file, ext - file);
    }
  else
    {
      compressed_name =
                       ((void *)0)
                           ;
      uncompressed_name = file;
    }
  for (fdp = fdhead; fdp !=
                           ((void *)0)
                               ; fdp = fdp->next)
    {
      ((void) 0);
      if (streq (uncompressed_name, fdp->infname))
 goto cleanup;
    }
  inf = fopen (file, "r" "");
  if (inf)
    real_name = file;
  else
    {
      int file_errno =
                      (*__errno_location ())
                           ;
      if (compressed_name)
 {
   inf = fopen (uncompressed_name, "r" "");
   if (inf)
     real_name = uncompressed_name;
 }
      else
 {
   for (compr = compressors; compr->suffix !=
                                             ((void *)0)
                                                 ; compr++)
     {
       compressed_name = concat (file, ".", compr->suffix);
       inf = fopen (compressed_name, "r" "");
       if (inf)
  {
    real_name = compressed_name;
    break;
  }
       if (
          0
               )
  {
    char *suf = compressed_name + strlen (file);
    size_t suflen = strlen (compr->suffix) + 1;
    for ( ; suf[1]; suf++, suflen--)
      {
        memmove (suf, suf + 1, suflen);
        inf = fopen (compressed_name, "r" "");
        if (inf)
   {
     real_name = compressed_name;
     break;
   }
      }
    if (inf)
      break;
  }
       free (compressed_name);
       compressed_name =
                        ((void *)0)
                            ;
     }
 }
      if (! inf)
 {
  (*__errno_location ())
        = file_errno;
   perror (file);
   goto cleanup;
 }
    }
  if (real_name == compressed_name)
    {
      fclose (inf);
      tmp_name = etags_mktmp ();
      if (!tmp_name)
 inf =
      ((void *)0)
          ;
      else
 {
   char *cmd1 = concat (compr->command, " '", real_name);
   char *cmd = concat (cmd1, "' > ", tmp_name);
   free (cmd1);
   int tmp_errno;
   if (system (cmd) == -1)
     {
       inf =
            ((void *)0)
                ;
       tmp_errno =
                  22
                        ;
     }
   else
     {
       inf = fopen (tmp_name, "r" "");
       tmp_errno =
                  (*__errno_location ())
                       ;
     }
   free (cmd);
  (*__errno_location ())
        = tmp_errno;
 }
      if (!inf)
 {
   perror (real_name);
   goto cleanup;
 }
    }
  process_file (inf, uncompressed_name, lang);
  retval = fclose (inf);
  if (real_name == compressed_name)
    {
      remove (tmp_name);
      free (tmp_name);
    }
  if (retval < 0)
    pfatal (file);
 cleanup:
  if (compressed_name != file)
    free (compressed_name);
  if (uncompressed_name != file)
    free (uncompressed_name);
  last_node =
             ((void *)0)
                 ;
  curfdp =
          ((void *)0)
              ;
  return;
}
static void
process_file (FILE *fh, char *fn, language *lang)
{
  static const fdesc emptyfdesc;
  fdesc *fdp;
  infilename = fn;
  fdp = ((fdesc *) xmalloc ((1) * sizeof (fdesc)));
  *fdp = emptyfdesc;
  fdp->next = fdhead;
  fdp->infname = savestr (fn);
  fdp->lang = lang;
  fdp->infabsname = absolute_filename (fn, cwd);
  fdp->infabsdir = absolute_dirname (fn, cwd);
  if (filename_is_absolute (fn))
    {
      fdp->taggedfname = absolute_filename (fn,
                                               ((void *)0)
                                                   );
    }
  else
    {
      fdp->taggedfname = relative_filename (fn, tagfiledir);
    }
  fdp->usecharno =
                  1
                      ;
  fdp->prop =
             ((void *)0)
                 ;
  fdp->written =
                0
                     ;
  fdhead = fdp;
  curfdp = fdhead;
  find_entries (fh);
  if (!
      0
     && curfdp->usecharno
      && !curfdp->lang->metasource)
    {
      node *np, *prev;
      prev =
            ((void *)0)
                ;
      for (np = nodehead; np !=
                               ((void *)0)
                                   ; prev = np, np = np->left)
 if (np->fdp == curfdp)
   break;
      if (np !=
               ((void *)0)
                   )
 {
   ((void) 0);
   ((void) 0);
   ((void) 0);
   put_entries (np);
   free_tree (np);
   if (prev ==
              ((void *)0)
                  )
     nodehead =
               ((void *)0)
                   ;
   else
     prev->left =
                 ((void *)0)
                     ;
 }
    }
}
static void
reset_input (FILE *inf)
{
  if (fseek (inf, 0,
                    0
                            ) != 0)
    perror (infilename);
}
static void
find_entries (FILE *inf)
{
  char *cp;
  language *lang = curfdp->lang;
  Lang_function *parser =
                         ((void *)0)
                             ;
  if (lang !=
             ((void *)0)
                  && lang->function !=
                                       ((void *)0)
                                           )
    {
      parser = lang->function;
    }
  if (parser ==
               ((void *)0)
                   )
    {
      lang = get_language_from_filename (curfdp->infname,
                                                         1
                                                             );
      if (lang !=
                 ((void *)0)
                      && lang->function !=
                                           ((void *)0)
                                               )
 {
   curfdp->lang = lang;
   parser = lang->function;
 }
    }
  if (parser ==
               ((void *)0)
     && readline_internal (&lb, inf, infilename) > 0
      && lb.len >= 2
      && lb.buffer[0] == '#'
      && lb.buffer[1] == '!')
    {
      char *lp;
      lp = strrchr (lb.buffer+2, '/');
      if (lp !=
               ((void *)0)
                   )
 lp += 1;
      else
 lp = skip_spaces (lb.buffer + 2);
      cp = skip_non_spaces (lp);
      *cp = '\0';
      if (strlen (lp) > 0)
 {
   lang = get_language_from_interpreter (lp);
   if (lang !=
              ((void *)0)
                   && lang->function !=
                                        ((void *)0)
                                            )
     {
       curfdp->lang = lang;
       parser = lang->function;
     }
 }
    }
  reset_input (inf);
  if (parser ==
               ((void *)0)
                   )
    {
      lang = get_language_from_filename (curfdp->infname,
                                                         0
                                                              );
      if (lang !=
                 ((void *)0)
                      && lang->function !=
                                           ((void *)0)
                                               )
 {
   curfdp->lang = lang;
   parser = lang->function;
 }
    }
  if (parser ==
               ((void *)0)
                   )
    {
      node *old_last_node = last_node;
      curfdp->lang = get_language_from_langname ("fortran");
      find_entries (inf);
      if (old_last_node == last_node)
 {
   reset_input (inf);
   curfdp->lang = get_language_from_langname (cplusplus ? "c++" : "c");
   find_entries (inf);
 }
      return;
    }
  if (!no_line_directive
      && curfdp->lang !=
                        ((void *)0)
                             && curfdp->lang->metasource)
    {
      fdesc **fdpp = &fdhead;
      while (*fdpp !=
                     ((void *)0)
                         )
 if (*fdpp != curfdp
     && streq ((*fdpp)->taggedfname, curfdp->taggedfname))
   {
     fdesc *badfdp = *fdpp;
     invalidate_nodes (badfdp, &nodehead);
     *fdpp = badfdp->next;
     free_fdesc (badfdp);
   }
 else
   fdpp = &(*fdpp)->next;
    }
  ((void) 0);
  linebuffer_setlen (&filebuf, 0);
  lineno = 0;
  charno = 0;
  linecharno = 0;
  parser (inf);
  regex_tag_multiline ();
}
static void
make_tag (const char *name,
   int namelen,
  _Bool
       is_func,
   char *linestart,
   int linelen,
   int lno,
   long int cno)
{
 _Bool
      named = (name !=
                       ((void *)0)
                            && namelen > 0);
  char *nname =
               ((void *)0)
                   ;
  if (!
      0
            && named)
    {
      int i;
      register const char *cp = name;
      for (i = 0; i < namelen; i++)
 if (notinname (*cp++))
   break;
      if (i == namelen)
 {
   cp = linestart + linelen - namelen;
   if (notinname (linestart[linelen-1]))
     cp -= 1;
   if (cp >= linestart
       && (cp == linestart
    || notinname (cp[-1]))
       && strneq (name, cp, namelen))
     named =
            0
                 ;
 }
    }
  if (named)
    nname = savenstr (name, namelen);
  pfnote (nname, is_func, linestart, linelen, lno, cno);
}
static void
pfnote (char *name,
                   _Bool
                        is_func, char *linestart, int linelen, int lno,
 long int cno)
{
  register node *np;
  ((void) 0);
  if (
     0
           && name ==
                      ((void *)0)
                          )
    return;
  np = ((node *) xmalloc ((1) * sizeof (node)));
  if (
     0
           && !cxref_style && streq (name, "main"))
    {
      char *fp = strrchr (curfdp->taggedfname, '/');
      np->name = concat ("M", fp ==
                                   ((void *)0)
                                        ? curfdp->taggedfname : fp + 1, "");
      fp = strrchr (np->name, '.');
      if (fp !=
               ((void *)0)
                    && fp[1] != '\0' && fp[2] == '\0')
 fp[0] = '\0';
    }
  else
    np->name = name;
  np->valid =
             1
                 ;
  np->been_warned =
                   0
                        ;
  np->fdp = curfdp;
  np->is_func = is_func;
  np->lno = lno;
  if (np->fdp->usecharno)
    np->cno = cno ;
  else
    np->cno = invalidcharno;
  np->left = np->right =
                        ((void *)0)
                            ;
  if (
     0
           && !cxref_style)
    {
      if (strlen (linestart) < 50)
 np->regex = concat (linestart, "$", "");
      else
 np->regex = savenstr (linestart, 50);
    }
  else
    np->regex = savenstr (linestart, linelen);
  add_node (np, &nodehead);
}
static void
free_tree (register node *np)
{
  while (np)
    {
      register node *node_right = np->right;
      free_tree (np->left);
      free (np->name);
      free (np->regex);
      free (np);
      np = node_right;
    }
}
static void
free_fdesc (register fdesc *fdp)
{
  free (fdp->infname);
  free (fdp->infabsname);
  free (fdp->infabsdir);
  free (fdp->taggedfname);
  free (fdp->prop);
  free (fdp);
}
static void
add_node (node *np, node **cur_node_p)
{
  register int dif;
  register node *cur_node = *cur_node_p;
  if (cur_node ==
                 ((void *)0)
                     )
    {
      *cur_node_p = np;
      last_node = np;
      return;
    }
  if (!
      0
           )
    {
      if (last_node !=
                      ((void *)0)
                           && last_node->fdp == np->fdp)
 {
   ((void) 0);
   last_node->right = np;
   last_node = np;
 }
      else if (cur_node->fdp == np->fdp)
 {
   add_node (np, &cur_node->right);
 }
      else
 add_node (np, &cur_node->left);
    }
  else
    {
      dif =
           __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
           np->name
           ) && __builtin_constant_p (
           cur_node->name
           ) && (__s1_len = strlen (
           np->name
           ), __s2_len = strlen (
           cur_node->name
           ), (!((size_t)(const void *)((
           np->name
           ) + 1) - (size_t)(const void *)(
           np->name
           ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
           cur_node->name
           ) + 1) - (size_t)(const void *)(
           cur_node->name
           ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
           np->name
           ,
           cur_node->name
           ) : (__builtin_constant_p (
           np->name
           ) && ((size_t)(const void *)((
           np->name
           ) + 1) - (size_t)(const void *)(
           np->name
           ) == 1) && (__s1_len = strlen (
           np->name
           ), __s1_len < 4) ? (__builtin_constant_p (
           cur_node->name
           ) && ((size_t)(const void *)((
           cur_node->name
           ) + 1) - (size_t)(const void *)(
           cur_node->name
           ) == 1) ? __builtin_strcmp (
           np->name
           ,
           cur_node->name
           ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
           cur_node->name
           ); int __result = (((const unsigned char *) (const char *) (
           np->name
           ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
           np->name
           ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
           np->name
           ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
           np->name
           ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
           cur_node->name
           ) && ((size_t)(const void *)((
           cur_node->name
           ) + 1) - (size_t)(const void *)(
           cur_node->name
           ) == 1) && (__s2_len = strlen (
           cur_node->name
           ), __s2_len < 4) ? (__builtin_constant_p (
           np->name
           ) && ((size_t)(const void *)((
           np->name
           ) + 1) - (size_t)(const void *)(
           np->name
           ) == 1) ? __builtin_strcmp (
           np->name
           ,
           cur_node->name
           ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
           np->name
           ); int __result = (((const unsigned char *) (const char *) (
           cur_node->name
           ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
           cur_node->name
           ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
           cur_node->name
           ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
           cur_node->name
           ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
           np->name
           ,
           cur_node->name
           )))); })
                                            ;
      if (no_duplicates && !dif)
 {
   if (np->fdp == cur_node->fdp)
     {
       if (!no_warnings)
  {
    fprintf (
            stderr
                  , "Duplicate entry in file %s, line %d: %s\n",
      np->fdp->infname, lineno, np->name);
    fprintf (
            stderr
                  , "Second entry ignored\n");
  }
     }
   else if (!cur_node->been_warned && !no_warnings)
     {
       fprintf
  (
  stderr
        ,
   "Duplicate entry in files %s and %s: %s (Warning only)\n",
   np->fdp->infname, cur_node->fdp->infname, np->name);
       cur_node->been_warned =
                              1
                                  ;
     }
   return;
 }
      add_node (np, dif < 0 ? &cur_node->left : &cur_node->right);
    }
}
static void
invalidate_nodes (fdesc *badfdp, node **npp)
{
  node *np = *npp;
  if (np ==
           ((void *)0)
               )
    return;
  if (
     0
          )
    {
      if (np->left !=
                     ((void *)0)
                         )
 invalidate_nodes (badfdp, &np->left);
      if (np->fdp == badfdp)
 np->valid =
            0
                 ;
      if (np->right !=
                      ((void *)0)
                          )
 invalidate_nodes (badfdp, &np->right);
    }
  else
    {
      ((void) 0);
      if (np->fdp == badfdp)
 {
   *npp = np->left;
   np->left =
             ((void *)0)
                 ;
   free_tree (np);
   invalidate_nodes (badfdp, npp);
 }
      else
 invalidate_nodes (badfdp, &np->left);
    }
}
static int total_size_of_entries (node *);
static int number_len (long) __attribute__ ((__const__));
static int
number_len (long int num)
{
  int len = 1;
  while ((num /= 10) > 0)
    len += 1;
  return len;
}
static int
total_size_of_entries (register node *np)
{
  register int total = 0;
  for (; np !=
              ((void *)0)
                  ; np = np->right)
    if (np->valid)
      {
 total += strlen (np->regex) + 1;
 if (np->name !=
                ((void *)0)
                    )
   total += strlen (np->name) + 1;
 total += number_len ((long) np->lno) + 1;
 if (np->cno != invalidcharno)
   total += number_len (np->cno);
 total += 1;
      }
  return total;
}
static void
put_entries (register node *np)
{
  register char *sp;
  static fdesc *fdp =
                     ((void *)0)
                         ;
  if (np ==
           ((void *)0)
               )
    return;
  if (
     0
          )
    put_entries (np->left);
  if (np->valid)
    {
      if (!
          0
               )
 {
   if (fdp != np->fdp)
     {
       fdp = np->fdp;
       fprintf (tagf, "\f\n%s,%d\n",
         fdp->taggedfname, total_size_of_entries (np));
       fdp->written =
                     1
                         ;
     }
   fputs (np->regex, tagf);
   fputc ('\177', tagf);
   if (np->name !=
                  ((void *)0)
                      )
     {
       fputs (np->name, tagf);
       fputc ('\001', tagf);
     }
   fprintf (tagf, "%d,", np->lno);
   if (np->cno != invalidcharno)
     fprintf (tagf, "%ld", np->cno);
   fputs ("\n", tagf);
 }
      else
 {
   if (np->name ==
                  ((void *)0)
                      )
     error ("internal error: NULL name in ctags mode.");
   if (cxref_style)
     {
       if (vgrind_style)
  fprintf (
          stdout
                , "%s %s %d\n",
    np->name, np->fdp->taggedfname, (np->lno + 63) / 64);
       else
  fprintf (
          stdout
                , "%-16s %3d %-16s %s\n",
    np->name, np->lno, np->fdp->taggedfname, np->regex);
     }
   else
     {
       fprintf (tagf, "%s\t%s\t", np->name, np->fdp->taggedfname);
       if (np->is_func)
  {
   _IO_putc (
   searchar
   ,
   tagf
   )
                        ;
   _IO_putc (
   '^'
   ,
   tagf
   )
                   ;
    for (sp = np->regex; *sp; sp++)
      {
        if (*sp == '\\' || *sp == searchar)
  _IO_putc (
  '\\'
  ,
  tagf
  )
                   ;
       _IO_putc (
       *sp
       ,
       tagf
       )
                       ;
      }
   _IO_putc (
   searchar
   ,
   tagf
   )
                        ;
  }
       else
  {
    fprintf (tagf, "%d", np->lno);
  }
      _IO_putc (
      '\n'
      ,
      tagf
      )
                       ;
     }
 }
    }
  put_entries (np->right);
  if (!
      0
           )
    put_entries (np->left);
}
enum sym_type
{
  st_none,
  st_C_objprot, st_C_objimpl, st_C_objend,
  st_C_gnumacro,
  st_C_ignore, st_C_attribute,
  st_C_javastruct,
  st_C_operator,
  st_C_class, st_C_template,
  st_C_struct, st_C_extern, st_C_enum, st_C_define, st_C_typedef
};
struct C_stab_entry { const char *name; int c_ext; enum sym_type type; };
static int
hash (const char *str, int len)
{
  static char const asso_values[] =
    {
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 3,
      26, 35, 35, 35, 35, 35, 35, 35, 27, 35,
      35, 35, 35, 24, 0, 35, 35, 35, 35, 0,
      35, 35, 35, 35, 35, 1, 35, 16, 35, 6,
      23, 0, 0, 35, 22, 0, 35, 35, 5, 0,
       0, 15, 1, 35, 6, 35, 8, 19, 35, 16,
       4, 5, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
      35, 35, 35, 35, 35, 35
    };
  int hval = len;
  switch (hval)
    {
      default:
        hval += asso_values[(unsigned char) str[2]];
      case 2:
        hval += asso_values[(unsigned char) str[1]];
        break;
    }
  return hval;
}
static struct C_stab_entry *
in_word_set (register const char *str, register unsigned int len)
{
  enum
    {
      TOTAL_KEYWORDS = 33,
      MIN_WORD_LENGTH = 2,
      MAX_WORD_LENGTH = 15,
      MIN_HASH_VALUE = 2,
      MAX_HASH_VALUE = 34
    };
  static struct C_stab_entry wordlist[] =
    {
      {""}, {""},
      {"if", 0, st_C_ignore},
      {"GTY", 0, st_C_attribute},
      {"@end", 0, st_C_objend},
      {"union", 0, st_C_struct},
      {"define", 0, st_C_define},
      {"import", (0x00005 & ~0x00001), st_C_ignore},
      {"template", 0, st_C_template},
      {"operator", 0x00001, st_C_operator},
      {"@interface", 0, st_C_objprot},
      {"implements", (0x00005 & ~0x00001), st_C_javastruct},
      {"friend", 0x00001, st_C_ignore},
      {"typedef", 0, st_C_typedef},
      {"return", 0, st_C_ignore},
      {"@implementation",0, st_C_objimpl},
      {"@protocol", 0, st_C_objprot},
      {"interface", (0x00005 & ~0x00001), st_C_struct},
      {"extern", 0, st_C_extern},
      {"extends", (0x00005 & ~0x00001), st_C_javastruct},
      {"struct", 0, st_C_struct},
      {"domain", 0x00003, st_C_struct},
      {"switch", 0, st_C_ignore},
      {"enum", 0, st_C_enum},
      {"for", 0, st_C_ignore},
      {"namespace", 0x00001, st_C_struct},
      {"class", 0, st_C_class},
      {"while", 0, st_C_ignore},
      {"undef", 0, st_C_define},
      {"package", (0x00005 & ~0x00001), st_C_ignore},
      {"__attribute__", 0, st_C_attribute},
      {"SYSCALL", 0, st_C_gnumacro},
      {"ENTRY", 0, st_C_gnumacro},
      {"PSEUDO", 0, st_C_gnumacro},
      {"DEFUN", 0, st_C_gnumacro}
    };
  if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
    {
      int key = hash (str, len);
      if (key <= MAX_HASH_VALUE && key >= 0)
        {
          const char *s = wordlist[key].name;
          if (*str == *s && !
                            (__extension__ (__builtin_constant_p (
                            len - 1
                            ) && ((__builtin_constant_p (
                            str + 1
                            ) && strlen (
                            str + 1
                            ) < ((size_t) (
                            len - 1
                            ))) || (__builtin_constant_p (
                            s + 1
                            ) && strlen (
                            s + 1
                            ) < ((size_t) (
                            len - 1
                            )))) ? __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
                            str + 1
                            ) && __builtin_constant_p (
                            s + 1
                            ) && (__s1_len = strlen (
                            str + 1
                            ), __s2_len = strlen (
                            s + 1
                            ), (!((size_t)(const void *)((
                            str + 1
                            ) + 1) - (size_t)(const void *)(
                            str + 1
                            ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
                            s + 1
                            ) + 1) - (size_t)(const void *)(
                            s + 1
                            ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
                            str + 1
                            ,
                            s + 1
                            ) : (__builtin_constant_p (
                            str + 1
                            ) && ((size_t)(const void *)((
                            str + 1
                            ) + 1) - (size_t)(const void *)(
                            str + 1
                            ) == 1) && (__s1_len = strlen (
                            str + 1
                            ), __s1_len < 4) ? (__builtin_constant_p (
                            s + 1
                            ) && ((size_t)(const void *)((
                            s + 1
                            ) + 1) - (size_t)(const void *)(
                            s + 1
                            ) == 1) ? __builtin_strcmp (
                            str + 1
                            ,
                            s + 1
                            ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
                            s + 1
                            ); int __result = (((const unsigned char *) (const char *) (
                            str + 1
                            ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
                            str + 1
                            ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
                            str + 1
                            ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
                            str + 1
                            ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
                            s + 1
                            ) && ((size_t)(const void *)((
                            s + 1
                            ) + 1) - (size_t)(const void *)(
                            s + 1
                            ) == 1) && (__s2_len = strlen (
                            s + 1
                            ), __s2_len < 4) ? (__builtin_constant_p (
                            str + 1
                            ) && ((size_t)(const void *)((
                            str + 1
                            ) + 1) - (size_t)(const void *)(
                            str + 1
                            ) == 1) ? __builtin_strcmp (
                            str + 1
                            ,
                            s + 1
                            ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
                            str + 1
                            ); int __result = (((const unsigned char *) (const char *) (
                            s + 1
                            ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
                            s + 1
                            ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
                            s + 1
                            ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
                            s + 1
                            ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
                            str + 1
                            ,
                            s + 1
                            )))); }) : strncmp (
                            str + 1
                            ,
                            s + 1
                            ,
                            len - 1
                            )))
                                                              && s[len] == '\0')
            return &wordlist[key];
        }
    }
  return 0;
}
static enum sym_type
C_symtype (char *str, int len, int c_ext)
{
  register struct C_stab_entry *se = in_word_set (str, len);
  if (se ==
           ((void *)0)
                || (se->c_ext && !(c_ext & se->c_ext)))
    return st_none;
  return se->type;
}
static
      _Bool
           inattribute;
static enum
{
  fvnone,
  fdefunkey,
  fdefunname,
  foperator,
  fvnameseen,
  fstartlist,
  finlist,
  flistseen,
  fignore,
  vignore
} fvdef;
static
      _Bool
           fvextern;
static enum
{
  tnone,
  tkeyseen,
  ttypeseen,
  tinbody,
  tend,
  tignore
} typdef;
static enum
{
  snone,
  skeyseen,
  stagseen,
  scolonseen
} structdef;
static const char *objtag = "<uninited>";
static enum
{
  dnone,
  dsharpseen,
  ddefineseen,
  dignorerest
} definedef;
static enum
{
  onone,
  oprotocol,
  oimplementation,
  otagseen,
  oparenseen,
  ocatseen,
  oinbody,
  omethodsign,
  omethodtag,
  omethodcolon,
  omethodparm,
  oignore
} objdef;
static struct tok
{
  char *line;
  int offset;
  int length;
 _Bool
      valid;
 _Bool
      named;
  int lineno;
  long linepos;
} token;
static void pushclass_above (int, char *, int);
static void popclass_above (int);
static void write_classname (linebuffer *, const char *qualifier);
static struct {
  char **cname;
  int *bracelev;
  int nl;
  int size;
} cstack;
static void
pushclass_above (int bracelev, char *str, int len)
{
  int nl;
  popclass_above (bracelev);
  nl = cstack.nl;
  if (nl >= cstack.size)
    {
      int size = cstack.size *= 2;
      ((cstack.cname) = (char * *) xrealloc (cstack.cname, (size) * sizeof (char *)));
      ((cstack.bracelev) = (int *) xrealloc (cstack.bracelev, (size) * sizeof (int)));
    }
  ((void) 0);
  cstack.cname[nl] = (str ==
                            ((void *)0)
                                ) ?
                                    ((void *)0)
                                         : savenstr (str, len);
  cstack.bracelev[nl] = bracelev;
  cstack.nl = nl + 1;
}
static void
popclass_above (int bracelev)
{
  int nl;
  for (nl = cstack.nl - 1;
       nl >= 0 && cstack.bracelev[nl] >= bracelev;
       nl--)
    {
      free (cstack.cname[nl]);
      cstack.nl = nl;
    }
}
static void
write_classname (linebuffer *cn, const char *qualifier)
{
  int i, len;
  int qlen = strlen (qualifier);
  if (cstack.nl == 0 || cstack.cname[0] ==
                                          ((void *)0)
                                              )
    {
      len = 0;
      cn->len = 0;
      cn->buffer[0] = '\0';
    }
  else
    {
      len = strlen (cstack.cname[0]);
      linebuffer_setlen (cn, len);
      strcpy (cn->buffer, cstack.cname[0]);
    }
  for (i = 1; i < cstack.nl; i++)
    {
      char *s = cstack.cname[i];
      if (s ==
              ((void *)0)
                  )
 continue;
      linebuffer_setlen (cn, len + qlen + strlen (s));
      len += sprintf (cn->buffer + len, "%s%s", qualifier, s);
    }
}
static
      _Bool
           consider_token (char *, int, int, int *, int, int,
                                                              _Bool
                                                                   *);
static void make_C_tag (
                       _Bool
                           );
static
      _Bool
consider_token (char *str, int len, int c, int *c_extp,
  int bracelev, int parlev,
                           _Bool
                                *is_func_or_var)
{
  static enum sym_type structtype;
  static int structbracelev;
  static enum sym_type toktype;
  toktype = C_symtype (str, len, *c_extp);
  if (toktype == st_C_attribute)
    {
      inattribute =
                   1
                       ;
      return
            0
                 ;
     }
   switch (definedef)
     {
     case dnone:
       if (toktype == st_C_gnumacro)
  {
    fvdef = fdefunkey;
    return
          0
               ;
  }
       break;
     case dsharpseen:
       if (toktype == st_C_define)
  {
    definedef = ddefineseen;
  }
       else
  {
    definedef = dignorerest;
  }
       return
             0
                  ;
     case ddefineseen:
       definedef = dignorerest;
       *is_func_or_var = (c == '(');
       if (!*is_func_or_var && !constantypedefs)
  return
        0
             ;
       else
  return
        1
            ;
     case dignorerest:
       return
             0
                  ;
     default:
       error ("internal error: definedef value.");
     }
   switch (typdef)
     {
     case tnone:
       if (toktype == st_C_typedef)
  {
    if (typedefs)
      typdef = tkeyseen;
    fvextern =
              0
                   ;
    fvdef = fvnone;
    return
          0
               ;
  }
       break;
     case tkeyseen:
       switch (toktype)
  {
  case st_none:
  case st_C_class:
  case st_C_struct:
  case st_C_enum:
    typdef = ttypeseen;
    break;
  default:
    break;
  }
       break;
     case ttypeseen:
       if (structdef == snone && fvdef == fvnone)
  {
    fvdef = fvnameseen;
    return
          1
              ;
  }
       break;
     case tend:
       switch (toktype)
  {
  case st_C_class:
  case st_C_struct:
  case st_C_enum:
    return
          0
               ;
  default:
    return
          1
              ;
  }
     default:
       break;
     }
   switch (toktype)
     {
     case st_C_javastruct:
       if (structdef == stagseen)
  structdef = scolonseen;
       return
             0
                  ;
     case st_C_template:
     case st_C_class:
       if ((*c_extp & 0x01000)
    && bracelev == 0
    && definedef == dnone && structdef == snone
    && typdef == tnone && fvdef == fvnone)
  *c_extp = (*c_extp | 0x00001) & ~0x01000;
       if (toktype == st_C_template)
  break;
     case st_C_struct:
     case st_C_enum:
       if (parlev == 0
    && fvdef != vignore
    && (typdef == tkeyseen
        || (typedefs_or_cplusplus && structdef == snone)))
  {
    structdef = skeyseen;
    structtype = toktype;
    structbracelev = bracelev;
    if (fvdef == fvnameseen)
      fvdef = fvnone;
  }
       return
             0
                  ;
     default:
       break;
     }
   if (structdef == skeyseen)
     {
       structdef = stagseen;
       return
             1
                 ;
     }
   if (typdef != tnone)
     definedef = dnone;
   switch (objdef)
     {
     case onone:
       switch (toktype)
  {
  case st_C_objprot:
    objdef = oprotocol;
    return
          0
               ;
  case st_C_objimpl:
    objdef = oimplementation;
    return
          0
               ;
  default:
    break;
  }
       break;
     case oimplementation:
       objtag = savenstr (str, len);
       objdef = oinbody;
       return
             0
                  ;
     case oprotocol:
       objtag = savenstr (str, len);
       objdef = otagseen;
       *is_func_or_var =
                        1
                            ;
       return
             1
                 ;
     case oparenseen:
       objdef = ocatseen;
       *is_func_or_var =
                        1
                            ;
       return
             1
                 ;
     case oinbody:
       break;
     case omethodsign:
       if (parlev == 0)
  {
    fvdef = fvnone;
    objdef = omethodtag;
    linebuffer_setlen (&token_name, len);
    memcpy (token_name.buffer, str, len);
    token_name.buffer[len] = '\0';
    return
          1
              ;
  }
       return
             0
                  ;
     case omethodcolon:
       if (parlev == 0)
  objdef = omethodparm;
       return
             0
                  ;
     case omethodparm:
       if (parlev == 0)
  {
    objdef = omethodtag;
    if (class_qualify)
      {
        int oldlen = token_name.len;
        fvdef = fvnone;
        linebuffer_setlen (&token_name, oldlen + len);
        memcpy (token_name.buffer + oldlen, str, len);
        token_name.buffer[oldlen + len] = '\0';
      }
    return
          1
              ;
  }
       return
             0
                  ;
     case oignore:
       if (toktype == st_C_objend)
  {
    objdef = onone;
  }
       return
             0
                  ;
     default:
       break;
     }
   switch (toktype)
     {
     case st_C_extern:
       fvextern =
                 1
                     ;
       switch (fvdef)
  {
  case finlist:
  case flistseen:
  case fignore:
  case vignore:
    break;
  default:
    fvdef = fvnone;
  }
       return
             0
                  ;
     case st_C_ignore:
       fvextern =
                 0
                      ;
       fvdef = vignore;
       return
             0
                  ;
     case st_C_operator:
       fvdef = foperator;
       *is_func_or_var =
                        1
                            ;
       return
             1
                 ;
     case st_none:
       if (constantypedefs
    && structdef == snone
    && structtype == st_C_enum && bracelev > structbracelev
    && fvdef != vignore)
  return
        1
            ;
       switch (fvdef)
  {
  case fdefunkey:
    if (bracelev > 0)
      break;
    fvdef = fdefunname;
    *is_func_or_var =
                     1
                         ;
    return
          1
              ;
  case fvnone:
    switch (typdef)
      {
      case ttypeseen:
        return
              0
                   ;
      case tnone:
        if ((strneq (str, "asm", 3) && endtoken (str[3]))
     || (strneq (str, "__asm__", 7) && endtoken (str[7])))
   {
     fvdef = vignore;
     return
           0
                ;
   }
        break;
      default:
        break;
      }
   case fvnameseen:
   if (len >= 10 && strneq (str+len-10, "::operator", 10))
     {
       if (*c_extp & 0x01000)
  *c_extp = (*c_extp | 0x00001) & ~0x01000;
       fvdef = foperator;
       *is_func_or_var =
                        1
                            ;
       return
             1
                 ;
     }
   if (bracelev > 0 && !(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
     break;
   fvdef = fvnameseen;
   *is_func_or_var =
                    1
                        ;
   return
         1
             ;
  default:
    break;
 }
      break;
     default:
       break;
    }
  return
        0
             ;
}
static struct
{
  long linepos;
  linebuffer lb;
} lbs[2];
static void
make_C_tag (
           _Bool
                isfun)
{
  if (token.valid)
    make_tag (token_name.buffer, token_name.len, isfun, token.line,
       token.offset+token.length+1, token.lineno, token.linepos);
  else if (
          0
               )
    {
      make_tag (concat ("INVALID TOKEN:-->", token_name.buffer, ""),
  token_name.len + 17, isfun, token.line,
  token.offset+token.length+1, token.lineno, token.linepos);
      error ("INVALID TOKEN");
    }
  token.valid =
               0
                    ;
}
static
      _Bool
perhaps_more_input (FILE *inf)
{
  return !feof (inf) && !ferror (inf);
}
static void
C_entries (int c_ext, FILE *inf)
{
  register char c;
  register char *lp;
  int curndx, newndx;
  register int tokoff;
  register int toklen;
  const char *qualifier;
  int qlen;
  int bracelev;
  int bracketlev;
  int parlev;
  int attrparlev;
  int templatelev;
  int typdefbracelev;
 _Bool
      incomm, inquote, inchar, quotednl, midtoken;
 _Bool
      yacc_rules;
  struct tok savetoken = {0};
  linebuffer_init (&lbs[0].lb);
  linebuffer_init (&lbs[1].lb);
  if (cstack.size == 0)
    {
      cstack.size = (
                    0
                         ) ? 1 : 4;
      cstack.nl = 0;
      cstack.cname = ((char * *) xmalloc ((cstack.size) * sizeof (char *)));
      cstack.bracelev = ((int *) xmalloc ((cstack.size) * sizeof (int)));
    }
  tokoff = toklen = typdefbracelev = 0;
  curndx = newndx = 0;
  lp = (lbs[curndx].lb).buffer;
  *lp = 0;
  fvdef = fvnone; fvextern =
                            0
                                 ; typdef = tnone;
  structdef = snone; definedef = dnone; objdef = onone;
  yacc_rules =
              0
                   ;
  midtoken = inquote = inchar = incomm = quotednl =
                                                   0
                                                        ;
  token.valid = savetoken.valid =
                                 0
                                      ;
  bracelev = bracketlev = parlev = attrparlev = templatelev = 0;
  if (((c_ext & 0x00005) == 0x00005))
    { qualifier = "."; qlen = 1; }
  else
    { qualifier = "::"; qlen = 2; }
  while (perhaps_more_input (inf))
    {
      c = *lp++;
      if (c == '\\')
 {
   if (*lp == '\0')
     {
       quotednl =
                 1
                     ;
       continue;
     }
   lp++;
   c = ' ';
 }
      else if (incomm)
 {
   switch (c)
     {
     case '*':
       if (*lp == '/')
  {
    c = *lp++;
    incomm =
            0
                 ;
  }
       break;
     case '\0':
       do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
      0
      ; newndx = curndx; } while (0);
       break;
     }
   continue;
 }
      else if (inquote)
 {
   switch (c)
     {
     case '"':
       inquote =
                0
                     ;
       break;
     case '\0':
       do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
      0
      ; newndx = curndx; } while (0);
       break;
     }
   continue;
 }
      else if (inchar)
 {
   switch (c)
     {
     case '\0':
       do { do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
      0
      ; newndx = curndx; } while (0); if (savetoken.valid) { token = savetoken; savetoken.valid =
      0
      ; } definedef = dnone; } while (0);
     case '\'':
       inchar =
               0
                    ;
       break;
     }
   continue;
 }
      else switch (c)
 {
 case '"':
   inquote =
            1
                ;
   if (bracketlev > 0)
     continue;
   if (inattribute)
     break;
   switch (fvdef)
     {
     case fdefunkey:
     case fstartlist:
     case finlist:
     case fignore:
     case vignore:
       break;
     default:
       fvextern =
                 0
                      ;
       fvdef = fvnone;
     }
   continue;
 case '\'':
   inchar =
           1
               ;
   if (bracketlev > 0)
     continue;
   if (inattribute)
     break;
   if (fvdef != finlist && fvdef != fignore && fvdef != vignore)
     {
       fvextern =
                 0
                      ;
       fvdef = fvnone;
     }
   continue;
 case '/':
   if (*lp == '*')
     {
       incomm =
               1
                   ;
       lp++;
       c = ' ';
       if (bracketlev > 0)
  continue;
     }
   else if ( *lp == '/')
     {
       c = '\0';
     }
   break;
 case '%':
   if ((c_ext & 0x10000) && *lp == '%')
     {
       lp++;
       definedef = dnone; fvdef = fvnone; fvextern =
                                                    0
                                                         ;
       typdef = tnone; structdef = snone;
       midtoken = inquote = inchar = incomm = quotednl =
                                                        0
                                                             ;
       bracelev = 0;
       yacc_rules = !yacc_rules;
       continue;
     }
   else
     break;
 case '#':
   if (definedef == dnone)
     {
       char *cp;
      _Bool
           cpptoken =
                      1
                          ;
       for (cp = (lbs[newndx].lb).buffer; cp < lp-1; cp++)
  if (!c_isspace (*cp))
    {
      if (*cp == '*' && cp[1] == '/')
        {
   cp++;
   cpptoken =
             1
                 ;
        }
      else
        cpptoken =
                  0
                       ;
    }
       if (cpptoken)
  {
    definedef = dsharpseen;
    if (fvdef == vignore && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1) && parlev == 0)
      {
        if (strneq (cp, "#if", 3) || strneq (cp, "#el", 3))
   fvdef = fvnone;
      }
  }
     }
   continue;
 case '[':
   bracketlev++;
   continue;
 default:
   if (bracketlev > 0)
     {
       if (c == ']')
  --bracketlev;
       else if (c == '\0')
  do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
 0
 ; newndx = curndx; } while (0);
       continue;
     }
   break;
 }
      if (typdef != tignore
   && definedef != dignorerest
   && fvdef != finlist
   && templatelev == 0
   && (definedef != dnone
       || structdef != scolonseen)
   && !inattribute)
 {
   if (midtoken)
     {
       if (endtoken (c))
  {
    if (c == ':' && *lp == ':' && begtoken (lp[1]))
      {
        if (c_ext & 0x01000)
   c_ext = (c_ext | 0x00001) & ~0x01000;
        lp += 2;
        toklen += 2;
        c = lp[-1];
        goto still_in_token;
      }
    else
      {
       _Bool
            funorvar =
                       0
                            ;
        if (yacc_rules
     || consider_token ((lbs[newndx].lb).buffer + tokoff, toklen, c,
          &c_ext, bracelev, parlev,
          &funorvar))
   {
     if (fvdef == foperator)
       {
         char *oldlp = lp;
         lp = skip_spaces (lp-1);
         if (*lp != '\0')
    lp += 1;
         while (*lp != '\0'
         && !c_isspace (*lp) && *lp != '(')
    lp += 1;
         c = *lp++;
         toklen += lp - oldlp;
       }
     token.named =
                  0
                       ;
     if (!((c_ext & 0x00fff) == 0x00000)
         && (cstack.nl) > 0 && definedef == dnone)
       {
         if (class_qualify)
    {
      int len;
      write_classname (&token_name, qualifier);
      len = token_name.len;
      linebuffer_setlen (&token_name,
           len + qlen + toklen);
      sprintf (token_name.buffer + len, "%s%.*s",
        qualifier, toklen,
        (lbs[newndx].lb).buffer + tokoff);
    }
         else
    {
      linebuffer_setlen (&token_name, toklen);
      sprintf (token_name.buffer, "%.*s",
        toklen, (lbs[newndx].lb).buffer + tokoff);
    }
         token.named =
                      1
                          ;
       }
     else if (objdef == ocatseen)
       {
         if (class_qualify)
    {
      int len = strlen (objtag) + 2 + toklen;
      linebuffer_setlen (&token_name, len);
      sprintf (token_name.buffer, "%s(%.*s)",
        objtag, toklen,
        (lbs[newndx].lb).buffer + tokoff);
    }
         else
    {
      linebuffer_setlen (&token_name, toklen);
      sprintf (token_name.buffer, "%.*s",
        toklen, (lbs[newndx].lb).buffer + tokoff);
    }
         token.named =
                      1
                          ;
       }
     else if (objdef == omethodtag
       || objdef == omethodparm)
       {
         token.named =
                      1
                          ;
       }
     else if (fvdef == fdefunname)
       {
        _Bool
             defun = ((lbs[newndx].lb).buffer[tokoff] == 'F');
         int off = tokoff;
         int len = toklen;
         if (defun)
    {
      off += 1;
      len -= 1;
    }
         linebuffer_setlen (&token_name, len);
         memcpy (token_name.buffer,
          (lbs[newndx].lb).buffer + off, len);
         token_name.buffer[len] = '\0';
         if (defun)
    while (--len >= 0)
      if (token_name.buffer[len] == '_')
        token_name.buffer[len] = '-';
         token.named = defun;
       }
     else
       {
         linebuffer_setlen (&token_name, toklen);
         memcpy (token_name.buffer,
          (lbs[newndx].lb).buffer + tokoff, toklen);
         token_name.buffer[toklen] = '\0';
         token.named = (structdef == stagseen
          || typdef == ttypeseen
          || typdef == tend
          || (funorvar
       && definedef == dignorerest)
          || (funorvar
       && definedef == dnone
       && structdef == snone
       && bracelev > 0));
       }
     token.lineno = lineno;
     token.offset = tokoff;
     token.length = toklen;
     token.line = (lbs[newndx].lb).buffer;
     token.linepos = (lbs[newndx].linepos);
     token.valid =
                  1
                      ;
     if (definedef == dnone
         && (fvdef == fvnameseen
      || fvdef == foperator
      || structdef == stagseen
      || typdef == tend
      || typdef == ttypeseen
      || objdef != onone))
       {
         if ((newndx == curndx))
    (curndx = 1 - curndx);
       }
     else if (definedef != dnone
       || fvdef == fdefunname
       || (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
       make_C_tag (funorvar);
   }
        else
   {
     if (inattribute && fvdef == fignore)
       {
         fvdef = fvnone;
       }
   }
        midtoken =
                  0
                       ;
      }
  }
       else if (intoken (c))
  still_in_token:
  {
    toklen++;
    continue;
  }
     }
   else if (begtoken (c))
     {
       switch (definedef)
  {
  case dnone:
    switch (fvdef)
      {
      case fstartlist:
        fvdef = finlist;
        continue;
      case flistseen:
        if (((c_ext & 0x00fff) == 0x00000) || declarations)
   {
     make_C_tag (
                1
                    );
     fvdef = fignore;
   }
        break;
      default:
        break;
      }
    if (structdef == stagseen && !((c_ext & 0x00005) == 0x00005))
      {
        popclass_above (bracelev);
        structdef = snone;
      }
    break;
  case dsharpseen:
    savetoken = token;
    break;
  default:
    break;
  }
       if (!yacc_rules || lp == (lbs[newndx].lb).buffer + 1)
  {
    tokoff = lp - 1 - (lbs[newndx].lb).buffer;
    toklen = 1;
    midtoken =
              1
                  ;
  }
       continue;
     }
 }
      switch (c)
 {
 case ':':
   if (inattribute)
     break;
   if (yacc_rules && token.offset == 0 && token.valid)
     {
       make_C_tag (
                  0
                       );
       break;
     }
   if (definedef != dnone)
     break;
   switch (objdef)
     {
     case otagseen:
       objdef = oignore;
       make_C_tag (
                  1
                      );
       break;
     case omethodtag:
     case omethodparm:
       objdef = omethodcolon;
       if (class_qualify)
  {
    int toklen = token_name.len;
    linebuffer_setlen (&token_name, toklen + 1);
    strcpy (token_name.buffer + toklen, ":");
  }
       break;
     default:
       break;
     }
   if (structdef == stagseen)
     {
       structdef = scolonseen;
       break;
     }
   if ((c_ext & 0x00001) && fvdef == flistseen)
     {
       make_C_tag (
                  1
                      );
       fvdef = fignore;
       break;
     }
   break;
 case ';':
   if (definedef != dnone || inattribute)
     break;
   switch (typdef)
     {
     case tend:
     case ttypeseen:
       make_C_tag (
                  0
                       );
       typdef = tnone;
       fvdef = fvnone;
       break;
     case tnone:
     case tinbody:
     case tignore:
       switch (fvdef)
  {
  case fignore:
    if (typdef == tignore || (c_ext & 0x00001))
      fvdef = fvnone;
    break;
  case fvnameseen:
    if ((globals && bracelev == 0 && (!fvextern || declarations))
        || (members && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1)))
      make_C_tag (
                 0
                      );
    fvextern =
              0
                   ;
    fvdef = fvnone;
    token.valid =
                 0
                      ;
    break;
  case flistseen:
    if ((declarations
         && ((c_ext & 0x00001) || !(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
         && (typdef == tnone || (typdef != tignore && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))))
        || (members
     && ((c_ext & 0x00fff) == 0x00000) && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1)))
      make_C_tag (
                 1
                     );
  default:
    fvextern =
              0
                   ;
    fvdef = fvnone;
    if (declarations
         && (c_ext & 0x00001) && structdef == stagseen)
      make_C_tag (
                 0
                      );
    else
      token.valid =
                   0
                        ;
  }
     default:
       if (!(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
  typdef = tnone;
     }
   if (structdef == stagseen)
     structdef = snone;
   break;
 case ',':
   if (definedef != dnone || inattribute)
     break;
   switch (objdef)
     {
     case omethodtag:
     case omethodparm:
       make_C_tag (
                  1
                      );
       objdef = oinbody;
       break;
     default:
       break;
     }
   switch (fvdef)
     {
     case fdefunkey:
     case foperator:
     case fstartlist:
     case finlist:
     case fignore:
       break;
     case vignore:
       if ((structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1) && parlev == 0)
  fvdef = fvnone;
       break;
     case fdefunname:
       fvdef = fignore;
       break;
     case fvnameseen:
       if (parlev == 0
    && ((globals
         && bracelev == 0
         && templatelev == 0
         && (!fvextern || declarations))
        || (members && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))))
    make_C_tag (
               0
                    );
       break;
     case flistseen:
       if ((declarations && typdef == tnone && !(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
    || (members && typdef != tignore && (structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1)))
  {
    make_C_tag (
               1
                   );
    fvdef = fvnameseen;
  }
       else if (!declarations)
  fvdef = fvnone;
       token.valid =
                    0
                         ;
       break;
     default:
       fvdef = fvnone;
     }
   if (structdef == stagseen)
     structdef = snone;
   break;
 case ']':
   if (definedef != dnone || inattribute)
     break;
   if (structdef == stagseen)
     structdef = snone;
   switch (typdef)
     {
     case ttypeseen:
     case tend:
       typdef = tignore;
       make_C_tag (
                  0
                       );
       break;
     case tnone:
     case tinbody:
       switch (fvdef)
  {
  case foperator:
  case finlist:
  case fignore:
  case vignore:
    break;
  case fvnameseen:
    if ((members && bracelev == 1)
        || (globals && bracelev == 0
     && (!fvextern || declarations)))
      make_C_tag (
                 0
                      );
  default:
    fvdef = fvnone;
  }
       break;
     default:
       break;
     }
   break;
 case '(':
   if (inattribute)
     {
       attrparlev++;
       break;
     }
   if (definedef != dnone)
     break;
   if (objdef == otagseen && parlev == 0)
     objdef = oparenseen;
   switch (fvdef)
     {
     case fvnameseen:
       if (typdef == ttypeseen
    && *lp != '*'
    && !(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1))
  {
    make_C_tag (
               0
                    );
    typdef = tignore;
    fvdef = fignore;
    break;
  }
     case foperator:
       fvdef = fstartlist;
       break;
     case flistseen:
       fvdef = finlist;
       break;
     default:
       break;
     }
   parlev++;
   break;
 case ')':
   if (inattribute)
     {
       if (--attrparlev == 0)
  inattribute =
               0
                    ;
       break;
     }
   if (definedef != dnone)
     break;
   if (objdef == ocatseen && parlev == 1)
     {
       make_C_tag (
                  1
                      );
       objdef = oignore;
     }
   if (--parlev == 0)
     {
       switch (fvdef)
  {
  case fstartlist:
  case finlist:
    fvdef = flistseen;
    break;
  default:
    break;
  }
       if (!(structdef == snone && (cstack.nl) > 0 && bracelev == cstack.bracelev[(cstack.nl)-1] + 1)
    && (typdef == tend
        || typdef == ttypeseen))
  {
    typdef = tignore;
    make_C_tag (
               0
                    );
  }
     }
   else if (parlev < 0)
     parlev = 0;
   break;
 case '{':
   if (definedef != dnone)
     break;
   if (typdef == ttypeseen)
     {
       typdef = tinbody;
       typdefbracelev = bracelev;
     }
   switch (fvdef)
     {
     case flistseen:
       if ((c_ext & 0x00001) && !class_qualify)
  {
    char *cc, *uqname = token_name.buffer;
    char *tok_end = token_name.buffer + token_name.len;
    for (cc = token_name.buffer; cc < tok_end; cc++)
      {
        if (*cc == ':' && cc[1] == ':')
   {
     uqname = cc + 2;
     cc++;
   }
      }
    if (uqname > token_name.buffer)
      {
        int uqlen = strlen (uqname);
        linebuffer_setlen (&token_name, uqlen);
        memmove (token_name.buffer, uqname, uqlen + 1);
      }
  }
       make_C_tag (
                  1
                      );
     case fignore:
       fvdef = fvnone;
       break;
     case fvnone:
       switch (objdef)
  {
  case otagseen:
    make_C_tag (
               1
                   );
    objdef = oignore;
    break;
  case omethodtag:
  case omethodparm:
    make_C_tag (
               1
                   );
    objdef = oinbody;
    break;
  default:
    if (bracelev == 0 && structdef == snone && (cstack.nl) == 0
        && typdef == tnone)
      bracelev = -1;
  }
       break;
     default:
       break;
     }
   switch (structdef)
     {
     case skeyseen:
       pushclass_above (bracelev,
                                 ((void *)0)
                                     , 0);
       structdef = snone;
       break;
     case stagseen:
     case scolonseen:
       pushclass_above (bracelev,token.line+token.offset, token.length);
       structdef = snone;
       make_C_tag (
                  0
                       );
       break;
     default:
       break;
     }
   bracelev += 1;
   break;
 case '*':
   if (definedef != dnone)
     break;
   if (fvdef == fstartlist)
     {
       fvdef = fvnone;
       token.valid =
                    0
                         ;
     }
   break;
 case '}':
   if (definedef != dnone)
     break;
   bracelev -= 1;
   if (!ignoreindent && lp == (lbs[newndx].lb).buffer + 1)
     {
       if (bracelev != 0)
  token.valid =
               0
                    ;
       bracelev = 0;
       parlev = 0;
     }
   else if (bracelev < 0)
     {
       token.valid =
                    0
                         ;
       bracelev = 0;
     }
   if (bracelev == 0 && fvdef == vignore)
     fvdef = fvnone;
   popclass_above (bracelev);
   structdef = snone;
   if (typdef == tinbody && bracelev <= typdefbracelev)
     {
       ((void) 0);
       typdef = tend;
     }
   break;
 case '=':
   if (definedef != dnone)
     break;
   switch (fvdef)
     {
     case foperator:
     case finlist:
     case fignore:
     case vignore:
       break;
     case fvnameseen:
       if ((members && bracelev == 1)
    || (globals && bracelev == 0 && (!fvextern || declarations)))
  make_C_tag (
             0
                  );
     default:
       fvdef = vignore;
     }
   break;
 case '<':
   if ((c_ext & 0x00001)
       && (structdef == stagseen || fvdef == fvnameseen))
     {
       templatelev++;
       break;
     }
   goto resetfvdef;
 case '>':
   if (templatelev > 0)
     {
       templatelev--;
       break;
     }
   goto resetfvdef;
 case '+':
 case '-':
   if (objdef == oinbody && bracelev == 0)
     {
       objdef = omethodsign;
       break;
     }
 resetfvdef:
 case '#': case '~': case '&': case '%': case '/':
 case '|': case '^': case '!': case '.': case '?':
   if (definedef != dnone)
     break;
   switch (fvdef)
     {
     case foperator:
     case finlist:
     case fignore:
     case vignore:
       break;
     default:
       fvdef = fvnone;
     }
   break;
 case '\0':
   if (objdef == otagseen)
     {
       make_C_tag (
                  1
                      );
       objdef = oignore;
     }
   if (quotednl)
     do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
    0
    ; newndx = curndx; } while (0);
   else
     do { do { (lbs[curndx].linepos) = charno; readline (&(lbs[curndx].lb), inf); lp = (lbs[curndx].lb).buffer; quotednl =
    0
    ; newndx = curndx; } while (0); if (savetoken.valid) { token = savetoken; savetoken.valid =
    0
    ; } definedef = dnone; } while (0);
   break;
 }
    }
  free (lbs[0].lb.buffer);
  free (lbs[1].lb.buffer);
}
static void
default_C_entries (FILE *inf)
{
  C_entries (cplusplus ? 0x00001 : 0x01000, inf);
}
static void
plain_C_entries (FILE *inf)
{
  C_entries (0, inf);
}
static void
Cplusplus_entries (FILE *inf)
{
  C_entries (0x00001, inf);
}
static void
Cjava_entries (FILE *inf)
{
  C_entries (0x00005, inf);
}
static void
Cstar_entries (FILE *inf)
{
  C_entries (0x00003, inf);
}
static void
Yacc_entries (FILE *inf)
{
  C_entries (0x10000, inf);
}
static void
just_read_file (FILE *inf)
{
  while (perhaps_more_input (inf))
    readline (&lb, inf);
}
static void F_takeprec (void);
static void F_getit (FILE *);
static void
F_takeprec (void)
{
  dbp = skip_spaces (dbp);
  if (*dbp != '*')
    return;
  dbp++;
  dbp = skip_spaces (dbp);
  if (strneq (dbp, "(*)", 3))
    {
      dbp += 3;
      return;
    }
  if (!c_isdigit (*dbp))
    {
      --dbp;
      return;
    }
  do
    dbp++;
  while (c_isdigit (*dbp));
}
static void
F_getit (FILE *inf)
{
  register char *cp;
  dbp = skip_spaces (dbp);
  if (*dbp == '\0')
    {
      readline (&lb, inf);
      dbp = lb.buffer;
      if (dbp[5] != '&')
 return;
      dbp += 6;
      dbp = skip_spaces (dbp);
    }
  if (!c_isalpha (*dbp) && *dbp != '_' && *dbp != '$')
    return;
  for (cp = dbp + 1; *cp != '\0' && intoken (*cp); cp++)
    continue;
  make_tag (dbp, cp-dbp,
                        1
                            ,
     lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
}
static void
Fortran_functions (FILE *inf)
{
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (dbp) = (lb).buffer,
 1
 ))
    {
      if (*dbp == '%')
 dbp++;
      dbp = skip_spaces (dbp);
      if (*dbp == '\0')
 continue;
      if (((((void) 0),
         1
         ) && strncaseeq ((dbp), "recursive", sizeof ("recursive")-1) && ((dbp) += sizeof ("recursive")-1)))
 dbp = skip_spaces (dbp);
      if (((((void) 0),
         1
         ) && strncaseeq ((dbp), "pure", sizeof ("pure")-1) && ((dbp) += sizeof ("pure")-1)))
 dbp = skip_spaces (dbp);
      if (((((void) 0),
         1
         ) && strncaseeq ((dbp), "elemental", sizeof ("elemental")-1) && ((dbp) += sizeof ("elemental")-1)))
 dbp = skip_spaces (dbp);
      switch (c_tolower (*dbp))
 {
 case 'i':
   if (nocase_tail ("integer"))
     F_takeprec ();
   break;
 case 'r':
   if (nocase_tail ("real"))
     F_takeprec ();
   break;
 case 'l':
   if (nocase_tail ("logical"))
     F_takeprec ();
   break;
 case 'c':
   if (nocase_tail ("complex") || nocase_tail ("character"))
     F_takeprec ();
   break;
 case 'd':
   if (nocase_tail ("double"))
     {
       dbp = skip_spaces (dbp);
       if (*dbp == '\0')
  continue;
       if (nocase_tail ("precision"))
  break;
       continue;
     }
   break;
 }
      dbp = skip_spaces (dbp);
      if (*dbp == '\0')
 continue;
      switch (c_tolower (*dbp))
 {
 case 'f':
   if (nocase_tail ("function"))
     F_getit (inf);
   continue;
 case 's':
   if (nocase_tail ("subroutine"))
     F_getit (inf);
   continue;
 case 'e':
   if (nocase_tail ("entry"))
     F_getit (inf);
   continue;
 case 'b':
   if (nocase_tail ("blockdata") || nocase_tail ("block data"))
     {
       dbp = skip_spaces (dbp);
       if (*dbp == '\0')
  make_tag ("blockdata", 9,
                           1
                               ,
     lb.buffer, dbp - lb.buffer, lineno, linecharno);
       else
  F_getit (inf);
     }
   continue;
 }
    }
}
static void
Go_functions(FILE *inf)
{
  char *cp, *name;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      cp = skip_spaces (cp);
      if (((((void) 0),
         1
         ) && strneq ((cp), "package", sizeof ("package")-1) && notinname ((cp)[sizeof ("package")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("package")-1))))
 {
   name = cp;
   while (!notinname (*cp) && *cp != '\0')
     cp++;
   make_tag (name, cp - name,
                             0
                                  , lb.buffer,
      cp - lb.buffer + 1, lineno, linecharno);
 }
      else if (((((void) 0),
              1
              ) && strneq ((cp), "func", sizeof ("func")-1) && notinname ((cp)[sizeof ("func")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("func")-1))))
 {
   if (*cp == '(')
     {
       while (*cp != ')')
  cp++;
       cp = skip_spaces (cp+1);
     }
   if (*cp)
     {
       name = cp;
       while (!notinname (*cp))
  cp++;
       make_tag (name, cp - name,
                                 1
                                     , lb.buffer,
   cp - lb.buffer + 1, lineno, linecharno);
     }
 }
      else if (members && ((((void) 0),
                         1
                         ) && strneq ((cp), "type", sizeof ("type")-1) && notinname ((cp)[sizeof ("type")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("type")-1))))
 {
   name = cp;
   if (*cp == '(')
     return;
   while (!notinname (*cp) && *cp != '\0')
     cp++;
   make_tag (name, cp - name,
                             0
                                  , lb.buffer,
      cp - lb.buffer + 1, lineno, linecharno);
 }
    }
}
static void
Ada_getit (FILE *inf, const char *name_qualifier)
{
  register char *cp;
  char *name;
  char c;
  while (perhaps_more_input (inf))
    {
      dbp = skip_spaces (dbp);
      if (*dbp == '\0'
   || (dbp[0] == '-' && dbp[1] == '-'))
 {
   readline (&lb, inf);
   dbp = lb.buffer;
 }
      switch (c_tolower (*dbp))
        {
        case 'b':
          if (nocase_tail ("body"))
            {
              name_qualifier = "/b";
              continue;
            }
          break;
        case 't':
          if (nocase_tail ("type"))
            continue;
          break;
        }
      if (*dbp == '"')
 {
   dbp += 1;
   for (cp = dbp; *cp != '\0' && *cp != '"'; cp++)
     continue;
 }
      else
 {
   dbp = skip_spaces (dbp);
   for (cp = dbp;
        c_isalnum (*cp) || *cp == '_' || *cp == '.';
        cp++)
     continue;
   if (cp == dbp)
     return;
 }
      c = *cp;
      *cp = '\0';
      name = concat (dbp, name_qualifier, "");
      *cp = c;
      make_tag (name, strlen (name),
                                    1
                                        ,
  lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
      free (name);
      if (c == '"')
 dbp = cp + 1;
      return;
    }
}
static void
Ada_funcs (FILE *inf)
{
 _Bool
      inquote =
                0
                     ;
 _Bool
      skip_till_semicolumn =
                             0
                                  ;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (dbp) = (lb).buffer,
 1
 ))
    {
      while (*dbp != '\0')
 {
   if (inquote || (*dbp == '"'))
     {
       dbp =
            (__extension__ (__builtin_constant_p (
            '"'
            ) && !__builtin_constant_p (
            dbp + !inquote
            ) && (
            '"'
            ) == '\0' ? (char *) __rawmemchr (
            dbp + !inquote
            ,
            '"'
            ) : __builtin_strchr (
            dbp + !inquote
            ,
            '"'
            )))
                                        ;
       if (dbp !=
                 ((void *)0)
                     )
  {
    inquote =
             0
                  ;
    dbp += 1;
    continue;
  }
       else
  {
    inquote =
             1
                 ;
    break;
  }
     }
   if (dbp[0] == '-' && dbp[1] == '-')
     break;
   if (*dbp == '\'')
     {
       dbp++ ;
       if (*dbp != '\0')
  dbp++;
       continue;
     }
   if (skip_till_semicolumn)
     {
       if (*dbp == ';')
  skip_till_semicolumn =
                        0
                             ;
       dbp++;
       continue;
     }
   if (!begtoken (*dbp))
     {
       dbp++;
       continue;
     }
   switch (c_tolower (*dbp))
     {
     case 'f':
       if (!packages_only && nocase_tail ("function"))
  Ada_getit (inf, "/f");
       else
  break;
       continue;
     case 'p':
       if (!packages_only && nocase_tail ("procedure"))
  Ada_getit (inf, "/p");
       else if (nocase_tail ("package"))
  Ada_getit (inf, "/s");
       else if (nocase_tail ("protected"))
  Ada_getit (inf, "/t");
       else
  break;
       continue;
     case 'u':
       if (typedefs && !packages_only && nocase_tail ("use"))
  {
    skip_till_semicolumn =
                          1
                              ;
    continue;
  }
     case 't':
       if (!packages_only && nocase_tail ("task"))
  Ada_getit (inf, "/k");
       else if (typedefs && !packages_only && nocase_tail ("type"))
  {
    Ada_getit (inf, "/t");
    while (*dbp != '\0')
      dbp += 1;
  }
       else
  break;
       continue;
     }
   while (!endtoken (*dbp))
     dbp++;
 }
    }
}
static void
Asm_labels (FILE *inf)
{
  register char *cp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      if (c_isalpha (*cp) || *cp == '_' || *cp == '.' || *cp == '$')
  {
   cp++;
   while (c_isalnum (*cp) || *cp == '_' || *cp == '.' || *cp == '$')
      cp++;
   if (*cp == ':' || c_isspace (*cp))
     make_tag (lb.buffer, cp - lb.buffer,
                                         1
                                             ,
        lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
  }
    }
}
static void
Perl_functions (FILE *inf)
{
  char *package = savestr ("main");
  register char *cp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      cp = skip_spaces (cp);
      if (((((void) 0),
         1
         ) && strneq ((cp), "package", sizeof ("package")-1) && notinname ((cp)[sizeof ("package")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("package")-1))))
 {
   free (package);
   get_tag (cp, &package);
 }
      else if (((((void) 0),
              1
              ) && strneq ((cp), "sub", sizeof ("sub")-1) && notinname ((cp)[sizeof ("sub")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("sub")-1))))
 {
   char *pos, *sp;
 subr:
   sp = cp;
   while (!notinname (*cp))
     cp++;
   if (cp == sp)
     continue;
   pos =
        (__extension__ (__builtin_constant_p (
        ':'
        ) && !__builtin_constant_p (
        sp
        ) && (
        ':'
        ) == '\0' ? (char *) __rawmemchr (
        sp
        ,
        ':'
        ) : __builtin_strchr (
        sp
        ,
        ':'
        )))
                        ;
   if (pos && pos < cp && pos[1] == ':')
     {
       if (!class_qualify)
  {
    char *q = pos + 2, *qpos;
    while ((qpos =
                  (__extension__ (__builtin_constant_p (
                  ':'
                  ) && !__builtin_constant_p (
                  q
                  ) && (
                  ':'
                  ) == '\0' ? (char *) __rawmemchr (
                  q
                  ,
                  ':'
                  ) : __builtin_strchr (
                  q
                  ,
                  ':'
                  )))
                                 ) !=
                                      ((void *)0)
   && qpos < cp
    && qpos[1] == ':')
      q = qpos + 2;
    sp = q;
  }
       make_tag (sp, cp - sp,
                             1
                                 ,
   lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
     }
   else if (class_qualify)
     {
       char savechar, *name;
       savechar = *cp;
       *cp = '\0';
       name = concat (package, "::", sp);
       *cp = savechar;
       make_tag (name, strlen (name),
                                     1
                                         ,
   lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
       free (name);
     }
   else
     make_tag (sp, cp - sp,
                           1
                               ,
        lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
      else if (((((void) 0),
              1
              ) && strneq ((cp), "use constant", sizeof ("use constant")-1) && notinname ((cp)[sizeof ("use constant")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("use constant")-1)))
        || ((((void) 0),
          1
          ) && strneq ((cp), "use constant::defer", sizeof ("use constant::defer")-1) && notinname ((cp)[sizeof ("use constant::defer")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("use constant::defer")-1))))
 {
   if (*cp == '{')
     cp = skip_spaces (cp+1);
   goto subr;
  }
      else if (globals)
  {
  _Bool
       qual = ((((void) 0),
              1
              ) && strneq ((cp), "my", sizeof ("my")-1) && notinname ((cp)[sizeof ("my")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("my")-1))) || ((((void) 0),
                                       1
                                       ) && strneq ((cp), "local", sizeof ("local")-1) && notinname ((cp)[sizeof ("local")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("local")-1)));
   char *varstart = cp;
    if (qual
       && (*cp == '$' || *cp == '@' || *cp == '%'))
      {
        varstart += 1;
       do
   cp++;
       while (c_isalnum (*cp) || *cp == '_');
      }
    else if (qual)
      {
        while (*cp != '\0' && *cp != ';' && *cp != '=' && *cp != ')')
   cp++;
      }
   else
     continue;
    make_tag (varstart, cp - varstart,
                                      0
                                           ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
    }
  free (package);
}
static void
Python_functions (FILE *inf)
{
  register char *cp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      cp = skip_spaces (cp);
      if (((((void) 0),
         1
         ) && strneq ((cp), "def", sizeof ("def")-1) && notinname ((cp)[sizeof ("def")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("def")-1))) || ((((void) 0),
                                   1
                                   ) && strneq ((cp), "class", sizeof ("class")-1) && notinname ((cp)[sizeof ("class")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("class")-1))))
 {
   char *name = cp;
   while (!notinname (*cp) && *cp != ':')
     cp++;
   make_tag (name, cp - name,
                             1
                                 ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
    }
}
static void
Ruby_functions (FILE *inf)
{
  char *cp =
            ((void *)0)
                ;
 _Bool
      reader =
               0
                    , writer =
                               0
                                    , alias =
                                              0
                                                   , continuation =
                                                                    0
                                                                         ;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
     _Bool
          is_class =
                     0
                          ;
     _Bool
          is_method =
                      0
                           ;
      char *name;
      cp = skip_spaces (cp);
      if (!continuation
   && c_isalpha (*cp) && c_isupper (*cp))
 {
   char *bp, *colon =
                     ((void *)0)
                         ;
   name = cp;
   for (cp++; c_isalnum (*cp) || *cp == '_' || *cp == ':'; cp++)
     {
       if (*cp == ':')
  colon = cp;
     }
   if (cp > name + 1)
     {
       bp = skip_spaces (cp);
       if (*bp == '=' && !(bp[1] == '=' || bp[1] == '>'))
  {
    if (colon && !c_isspace (colon[1]))
      name = colon + 1;
    make_tag (name, cp - name,
                              0
                                   ,
       lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
  }
     }
 }
      else if (!continuation
        && ((is_method = ((((void) 0),
                        1
                        ) && strneq ((cp), "def", sizeof ("def")-1) && notinname ((cp)[sizeof ("def")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("def")-1))))
     || (is_class = ((((void) 0),
                   1
                   ) && strneq ((cp), "class", sizeof ("class")-1) && notinname ((cp)[sizeof ("class")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("class")-1))))
     || ((((void) 0),
       1
       ) && strneq ((cp), "module", sizeof ("module")-1) && notinname ((cp)[sizeof ("module")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("module")-1)))))
 {
   const char self_name[] = "self.";
   const size_t self_size1 = sizeof (self_name) - 1;
   name = cp;
   while (!notinname (*cp) || *cp == '=')
     cp++;
   if (cp - name > self_size1
       && strneq (name, self_name, self_size1))
     name += self_size1;
   if (is_method)
     {
       char *q;
       for (q = name; q < cp && *q != '.'; q++)
  ;
       if (q < cp - 1)
  name = q + 1;
     }
   if (is_class && strneq (name, "<<", 2) && cp == name + 2)
     continue;
   make_tag (name, cp - name,
                             1
                                 ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
      else
 {
   if (!continuation)
     reader = writer = alias =
                              0
                                   ;
   while (*cp && *cp != '#')
     {
       if (!continuation)
  {
    reader = writer = alias =
                             0
                                  ;
    if (((((void) 0),
       1
       ) && strneq ((cp), "attr_reader", sizeof ("attr_reader")-1) && notinname ((cp)[sizeof ("attr_reader")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("attr_reader")-1))))
      reader =
              1
                  ;
    else if (((((void) 0),
            1
            ) && strneq ((cp), "attr_writer", sizeof ("attr_writer")-1) && notinname ((cp)[sizeof ("attr_writer")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("attr_writer")-1))))
      writer =
              1
                  ;
    else if (((((void) 0),
            1
            ) && strneq ((cp), "attr_accessor", sizeof ("attr_accessor")-1) && notinname ((cp)[sizeof ("attr_accessor")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("attr_accessor")-1))))
      {
        reader =
                1
                    ;
        writer =
                1
                    ;
      }
    else if (((((void) 0),
            1
            ) && strneq ((cp), "alias_method", sizeof ("alias_method")-1) && notinname ((cp)[sizeof ("alias_method")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("alias_method")-1))))
      alias =
             1
                 ;
  }
       if (reader || writer || alias)
  {
    do {
      char *np;
      cp = skip_spaces (cp);
      if (*cp == '(')
        cp = skip_spaces (cp + 1);
      np = cp;
      cp = skip_name (cp);
      if (*np != ':')
        continue;
      np++;
      if (reader)
        {
   make_tag (np, cp - np,
                         1
                             ,
      lb.buffer, cp - lb.buffer + 1,
      lineno, linecharno);
   continuation =
                 0
                      ;
        }
      if (writer)
        {
   size_t name_len = cp - np + 1;
   char *wr_name = ((char *) xmalloc ((name_len + 1) * sizeof (char)));
   memcpy (wr_name, np, name_len - 1);
   memcpy (wr_name + name_len - 1, "=", 2);
   pfnote (wr_name,
                   1
                       , lb.buffer, cp - lb.buffer + 1,
    lineno, linecharno);
   continuation =
                 0
                      ;
        }
      if (alias)
        {
   if (!continuation)
     make_tag (np, cp - np,
                           1
                               ,
        lb.buffer, cp - lb.buffer + 1,
        lineno, linecharno);
   continuation =
                 0
                      ;
   while (*cp && *cp != '#' && *cp != ';')
     {
       if (*cp == ',')
         continuation =
                       1
                           ;
       else if (!c_isspace (*cp))
         continuation =
                       0
                            ;
       cp++;
     }
   if (*cp == ';')
     continuation =
                   0
                        ;
        }
      cp = skip_spaces (cp);
    } while ((alias
       ? (*cp == ',')
       : (continuation = (*cp == ',')))
      && (cp = skip_spaces (cp + 1), *cp && *cp != '#'));
  }
       if (*cp != '#')
  cp = skip_name (cp);
       while (*cp && *cp != '#' && notinname (*cp))
  cp++;
     }
 }
    }
}
static void
PHP_functions (FILE *inf)
{
  char *cp, *name;
 _Bool
      search_identifier =
                          0
                               ;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      cp = skip_spaces (cp);
      name = cp;
      if (search_identifier
   && *cp != '\0')
 {
   while (!notinname (*cp))
     cp++;
   make_tag (name, cp - name,
                             1
                                 ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
   search_identifier =
                      0
                           ;
 }
      else if (((((void) 0),
              1
              ) && strneq ((cp), "function", sizeof ("function")-1) && notinname ((cp)[sizeof ("function")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("function")-1))))
 {
   if (*cp == '&')
     cp = skip_spaces (cp+1);
   if (*cp != '\0')
     {
       name = cp;
       while (!notinname (*cp))
  cp++;
       make_tag (name, cp - name,
                                 1
                                     ,
   lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
     }
   else
     search_identifier =
                        1
                            ;
 }
      else if (((((void) 0),
              1
              ) && strneq ((cp), "class", sizeof ("class")-1) && notinname ((cp)[sizeof ("class")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("class")-1))))
 {
   if (*cp != '\0')
     {
       name = cp;
       while (*cp != '\0' && !c_isspace (*cp))
  cp++;
       make_tag (name, cp - name,
                                 0
                                      ,
   lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
     }
   else
     search_identifier =
                        1
                            ;
 }
      else if (strneq (cp, "define", 6)
        && (cp = skip_spaces (cp+6))
        && *cp++ == '('
        && (*cp == '"' || *cp == '\''))
 {
   char quote = *cp++;
   name = cp;
   while (*cp != quote && *cp != '\0')
     cp++;
   make_tag (name, cp - name,
                             0
                                  ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
      else if (members
        && ((((void) 0),
          1
          ) && strneq ((cp), "var", sizeof ("var")-1) && notinname ((cp)[sizeof ("var")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("var")-1)))
        && *cp == '$')
 {
   name = cp;
   while (!notinname (*cp))
     cp++;
   make_tag (name, cp - name,
                             0
                                  ,
      lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
 }
    }
}
static void
Cobol_paragraphs (FILE *inf)
{
  register char *bp, *ep;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    {
      if (lb.len < 9)
 continue;
      bp += 8;
      if (bp[-1] != ' ' || !c_isalnum (bp[0]))
        continue;
      for (ep = bp; c_isalnum (*ep) || *ep == '-'; ep++)
 continue;
      if (*ep++ == '.')
 make_tag (bp, ep - bp,
                       1
                           ,
    lb.buffer, ep - lb.buffer + 1, lineno, linecharno);
    }
}
static void
Makefile_targets (FILE *inf)
{
  register char *bp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    {
      if (*bp == '\t' || *bp == '#')
 continue;
      while (*bp != '\0' && *bp != '=' && *bp != ':')
 bp++;
      if (*bp == ':' || (globals && *bp == '='))
 {
   char * namestart = skip_spaces (lb.buffer);
   while (--bp > namestart)
     if (!notinname (*bp))
       break;
   make_tag (namestart, bp - namestart + 1,
                                           1
                                               ,
      lb.buffer, bp - lb.buffer + 2, lineno, linecharno);
 }
    }
}
static void
Pascal_functions (FILE *inf)
{
  linebuffer tline;
  long save_lcno;
  int save_lineno, namelen, taglen;
  char c, *name;
 _Bool
   incomment,
    inquote,
    get_tagname,
    found_tag,
    inparms,
    verify_tag;
  save_lcno = save_lineno = namelen = taglen = 0;
  name =
        ((void *)0)
            ;
  dbp = lb.buffer;
  *dbp = '\0';
  linebuffer_init (&tline);
  incomment = inquote =
                       0
                            ;
  found_tag =
             0
                  ;
  get_tagname =
               0
                    ;
  inparms =
           0
                ;
  verify_tag =
              0
                   ;
  while (perhaps_more_input (inf))
    {
      c = *dbp++;
      if (c == '\0')
 {
   readline (&lb, inf);
   dbp = lb.buffer;
   if (*dbp == '\0')
     continue;
   if (!((found_tag && verify_tag)
  || get_tagname))
     c = *dbp++;
 }
      if (incomment)
 {
   if (c == '}')
     incomment =
                0
                     ;
   else if (c == '*' && *dbp == ')')
     {
       dbp++;
       incomment =
                  0
                       ;
     }
   continue;
 }
      else if (inquote)
 {
   if (c == '\'')
     inquote =
              0
                   ;
   continue;
 }
      else
 switch (c)
   {
   case '\'':
     inquote =
              1
                  ;
     continue;
   case '{':
     incomment =
                1
                    ;
     continue;
   case '(':
     if (*dbp == '*')
       {
  incomment =
             1
                 ;
  dbp++;
       }
     else if (found_tag)
       inparms =
                1
                    ;
     continue;
   case ')':
     if (inparms)
       inparms =
                0
                     ;
     continue;
   case ';':
     if (found_tag && !inparms)
       {
  verify_tag =
              1
                  ;
  break;
       }
     continue;
   }
      if (found_tag && verify_tag && (*dbp != ' '))
 {
   if (*dbp == '\0')
     continue;
   if (c_tolower (*dbp) == 'e')
     {
       if (nocase_tail ("extern"))
  {
    found_tag =
               0
                    ;
    verify_tag =
                0
                     ;
  }
     }
   else if (c_tolower (*dbp) == 'f')
     {
       if (nocase_tail ("forward"))
  {
    found_tag =
               0
                    ;
    verify_tag =
                0
                     ;
  }
     }
   if (found_tag && verify_tag)
     {
       found_tag =
                  0
                       ;
       verify_tag =
                   0
                        ;
       make_tag (name, namelen,
                               1
                                   ,
   tline.buffer, taglen, save_lineno, save_lcno);
       continue;
     }
 }
      if (get_tagname)
 {
   char *cp;
   if (*dbp == '\0')
     continue;
   for (cp = dbp + 1; *cp != '\0' && !endtoken (*cp); cp++)
     continue;
   linebuffer_setlen (&tline, lb.len);
   strcpy (tline.buffer, lb.buffer);
   save_lineno = lineno;
   save_lcno = linecharno;
   name = tline.buffer + (dbp - lb.buffer);
   namelen = cp - dbp;
   taglen = cp - lb.buffer + 1;
   dbp = cp;
   get_tagname =
                0
                     ;
   found_tag =
              1
                  ;
   continue;
 }
      else if (!incomment && !inquote && !found_tag)
 {
   switch (c_tolower (c))
     {
     case 'p':
       if (nocase_tail ("rocedure"))
  get_tagname =
               1
                   ;
       continue;
     case 'f':
       if (nocase_tail ("unction"))
  get_tagname =
               1
                   ;
       continue;
     }
 }
    }
  free (tline.buffer);
}
static void L_getit (void);
static void
L_getit (void)
{
  if (*dbp == '\'')
    dbp++;
  else if (*dbp == '(')
  {
    dbp++;
    if (!((((void) 0),
        1
        ) && strneq ((dbp), "quote", sizeof ("quote")-1) && notinname ((dbp)[sizeof ("quote")-1]) && ((dbp) = skip_spaces ((dbp)+sizeof ("quote")-1))) && !((((void) 0),
                                      1
                                      ) && strneq ((dbp), "QUOTE", sizeof ("QUOTE")-1) && notinname ((dbp)[sizeof ("QUOTE")-1]) && ((dbp) = skip_spaces ((dbp)+sizeof ("QUOTE")-1))))
      dbp = skip_spaces (dbp);
  }
  get_tag (dbp,
               ((void *)0)
                   );
}
static void
Lisp_functions (FILE *inf)
{
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (dbp) = (lb).buffer,
 1
 ))
    {
      if (dbp[0] != '(')
 continue;
      if (! declarations)
 {
   char *p = dbp + 1;
   if (((((void) 0),
      1
      ) && strneq ((p), "defvar", sizeof ("defvar")-1) && notinname ((p)[sizeof ("defvar")-1]) && ((p) = skip_spaces ((p)+sizeof ("defvar")-1))))
     {
       p = skip_name (p);
       p = skip_spaces (p);
       if (*p == ')')
  continue;
     }
 }
      if (strneq (dbp + 1, "cl-", 3) || strneq (dbp + 1, "CL-", 3))
 dbp += 3;
      if (strneq (dbp+1, "def", 3) || strneq (dbp+1, "DEF", 3))
 {
   dbp = skip_non_spaces (dbp);
   dbp = skip_spaces (dbp);
   L_getit ();
 }
      else
 {
   do
     dbp++;
   while (!notinname (*dbp) && *dbp != ':');
   if (*dbp == ':')
     {
       do
  dbp++;
       while (*dbp == ':');
       if (strneq (dbp, "def", 3) || strneq (dbp, "DEF", 3))
  {
    dbp = skip_non_spaces (dbp);
    dbp = skip_spaces (dbp);
    L_getit ();
  }
     }
 }
    }
}
static void
Lua_functions (FILE *inf)
{
  register char *bp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    {
      bp = skip_spaces (bp);
      if (bp[0] != 'f' && bp[0] != 'l')
 continue;
      (void)((((void) 0),
           1
           ) && strneq ((bp), "local", sizeof ("local")-1) && notinname ((bp)[sizeof ("local")-1]) && ((bp) = skip_spaces ((bp)+sizeof ("local")-1)));
      if (((((void) 0),
         1
         ) && strneq ((bp), "function", sizeof ("function")-1) && notinname ((bp)[sizeof ("function")-1]) && ((bp) = skip_spaces ((bp)+sizeof ("function")-1))))
 {
   char *tag_name, *tp_dot, *tp_colon;
   get_tag (bp, &tag_name);
   tp_dot = strrchr (tag_name, '.');
   tp_colon = strrchr (tag_name, ':');
   if (tp_dot || tp_colon)
     {
       char *p = tp_dot > tp_colon ? tp_dot : tp_colon;
       int len_add = p - tag_name + 1;
       get_tag (bp + len_add,
                             ((void *)0)
                                 );
     }
 }
    }
}
static void
PS_functions (FILE *inf)
{
  register char *bp, *ep;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    {
      if (bp[0] == '/')
 {
   for (ep = bp+1;
        *ep != '\0' && *ep != ' ' && *ep != '{';
        ep++)
     continue;
   make_tag (bp, ep - bp,
                         1
                             ,
      lb.buffer, ep - lb.buffer + 1, lineno, linecharno);
 }
      else if (((((void) 0),
              1
              ) && strneq ((bp), "defineps", sizeof ("defineps")-1) && notinname ((bp)[sizeof ("defineps")-1]) && ((bp) = skip_spaces ((bp)+sizeof ("defineps")-1))))
 get_tag (bp,
             ((void *)0)
                 );
    }
}
static void
Forth_words (FILE *inf)
{
  register char *bp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    while ((bp = skip_spaces (bp))[0] != '\0')
      if (bp[0] == '\\' && c_isspace (bp[1]))
 break;
      else if (bp[0] == '(' && c_isspace (bp[1]))
 do
   bp++;
 while (*bp != ')' && *bp != '\0');
      else if ((bp[0] == ':' && c_isspace (bp[1]) && bp++)
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "constant", sizeof ("constant")-1) && ((bp) += sizeof ("constant")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "code", sizeof ("code")-1) && ((bp) += sizeof ("code")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "create", sizeof ("create")-1) && ((bp) += sizeof ("create")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "defer", sizeof ("defer")-1) && ((bp) += sizeof ("defer")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "value", sizeof ("value")-1) && ((bp) += sizeof ("value")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "variable", sizeof ("variable")-1) && ((bp) += sizeof ("variable")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "buffer:", sizeof ("buffer:")-1) && ((bp) += sizeof ("buffer:")-1))
        || ((((void) 0),
          1
          ) && strncaseeq ((bp), "field", sizeof ("field")-1) && ((bp) += sizeof ("field")-1)))
 get_tag (skip_spaces (bp),
                           ((void *)0)
                               );
      else
 bp = skip_non_spaces (bp);
}
static void
Scheme_functions (FILE *inf)
{
  register char *bp;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (bp) = (lb).buffer,
 1
 ))
    {
      if (strneq (bp, "(def", 4) || strneq (bp, "(DEF", 4))
 {
   bp = skip_non_spaces (bp+4);
   while (*bp && notinname (*bp))
     bp++;
   get_tag (bp,
               ((void *)0)
                   );
 }
      if (((((void) 0),
         1
         ) && strneq ((bp), "(SET!", sizeof ("(SET!")-1) && notinname ((bp)[sizeof ("(SET!")-1]) && ((bp) = skip_spaces ((bp)+sizeof ("(SET!")-1))) || ((((void) 0),
                                     1
                                     ) && strneq ((bp), "(set!", sizeof ("(set!")-1) && notinname ((bp)[sizeof ("(set!")-1]) && ((bp) = skip_spaces ((bp)+sizeof ("(set!")-1))))
 get_tag (bp,
             ((void *)0)
                 );
    }
}
static linebuffer *TEX_toktab =
                               ((void *)0)
                                   ;
static const char *TEX_defenv = ":chapter:section:subsection:subsubsection:eqno:label:ref:cite:bibitem:part:appendix:entry:index:def:newcommand:renewcommand:newenvironment:renewenvironment";
static void TEX_decode_env (const char *, const char *);
static void
TeX_commands (FILE *inf)
{
  char *cp;
  linebuffer *key;
  char TEX_esc = '\0';
  char TEX_opgrp, TEX_clgrp;
  if (TEX_toktab ==
                   ((void *)0)
                       )
    TEX_decode_env ("TEXTAGS", TEX_defenv);
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      for (;;)
 {
   while (
         1
             )
     {
       char c = *cp++;
       if (c == '\0' || c == '%')
  goto tex_next_line;
       if (!TEX_esc)
  switch (c)
    {
    case '\\':
      TEX_esc = c;
      TEX_opgrp = '{';
      TEX_clgrp = '}';
      break;
    case '!':
      TEX_esc = c;
      TEX_opgrp = '<';
      TEX_clgrp = '>';
      break;
    }
       if (c == TEX_esc)
  break;
     }
   for (key = TEX_toktab; key->buffer !=
                                        ((void *)0)
                                            ; key++)
     if (strneq (cp, key->buffer, key->len))
       {
  char *p;
  int namelen, linelen;
 _Bool
      opgrp =
              0
                   ;
  cp = skip_spaces (cp + key->len);
  if (*cp == TEX_opgrp)
    {
      opgrp =
             1
                 ;
      cp++;
    }
  for (p = cp;
       (!c_isspace (*p) && *p != '#' &&
        *p != TEX_opgrp && *p != TEX_clgrp);
       p++)
    continue;
  namelen = p - cp;
  linelen = lb.len;
  if (!opgrp || *p == TEX_clgrp)
    {
      while (*p != '\0' && *p != TEX_opgrp && *p != TEX_clgrp)
        p++;
      linelen = p - lb.buffer + 1;
    }
  make_tag (cp, namelen,
                        1
                            ,
     lb.buffer, linelen, lineno, linecharno);
  goto tex_next_line;
       }
 }
    tex_next_line:
      ;
    }
}
static void
TEX_decode_env (const char *evarname, const char *defenv)
{
  register const char *env, *p;
  int i, len;
  env = getenv (evarname);
  if (!env)
    env = defenv;
  else
    env = concat (env, defenv, "");
  for (len = 1, p = env; (p =
                             (__extension__ (__builtin_constant_p (
                             ':'
                             ) && !__builtin_constant_p (
                             p
                             ) && (
                             ':'
                             ) == '\0' ? (char *) __rawmemchr (
                             p
                             ,
                             ':'
                             ) : __builtin_strchr (
                             p
                             ,
                             ':'
                             )))
                                            ); )
    if (*++p)
      len++;
  TEX_toktab = ((linebuffer *) xmalloc ((len) * sizeof (linebuffer)));
  for (i = 0; *env != '\0';)
    {
      p =
         (__extension__ (__builtin_constant_p (
         ':'
         ) && !__builtin_constant_p (
         env
         ) && (
         ':'
         ) == '\0' ? (char *) __rawmemchr (
         env
         ,
         ':'
         ) : __builtin_strchr (
         env
         ,
         ':'
         )))
                          ;
      if (!p)
 p = env + strlen (env);
      if (p - env > 0)
 {
   TEX_toktab[i].buffer = savenstr (env, p - env);
   TEX_toktab[i].len = p - env;
   i++;
 }
      if (*p)
 env = p + 1;
      else
 {
   TEX_toktab[i].buffer =
                         ((void *)0)
                             ;
   TEX_toktab[i].len = 0;
   break;
 }
    }
}
static void
Texinfo_nodes (FILE *inf)
{
  char *cp, *start;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    if (((((void) 0),
       1
       ) && strneq ((cp), "@node", sizeof ("@node")-1) && notinname ((cp)[sizeof ("@node")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("@node")-1))))
      {
 start = cp;
 while (*cp != '\0' && *cp != ',')
   cp++;
 make_tag (start, cp - start,
                             1
                                 ,
    lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
      }
}
static void
HTML_labels (FILE *inf)
{
 _Bool
      getnext =
                0
                     ;
 _Bool
      skiptag =
                0
                     ;
 _Bool
      intag =
              0
                   ;
 _Bool
      inanchor =
                 0
                      ;
  char *end;
  linebuffer_setlen (&token_name, 0);
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (dbp) = (lb).buffer,
 1
 ))
    for (;;)
      {
 if (skiptag)
   {
     while (*dbp != '\0' && *dbp != '>')
       dbp++;
     if (*dbp == '>')
       {
  dbp += 1;
  skiptag =
           0
                ;
  continue;
       }
     break;
   }
 else if (intag)
   {
     while (*dbp != '\0' && *dbp != '>'
     && c_tolower (*dbp) != 'n' && c_tolower (*dbp) != 'i')
       dbp++;
     if (*dbp == '\0')
       break;
     if (*dbp == '>')
       {
  dbp += 1;
  intag =
         0
              ;
  continue;
       }
     if ((inanchor && ((((void) 0),
                     1
                     ) && strncaseeq ((dbp), "name=", sizeof ("name=")-1) && ((dbp) += sizeof ("name=")-1)))
  || ((((void) 0),
    1
    ) && strncaseeq ((dbp), "id=", sizeof ("id=")-1) && ((dbp) += sizeof ("id=")-1)))
       {
 _Bool
      quoted = (dbp[0] == '"');
  if (quoted)
    for (end = ++dbp; *end != '\0' && *end != '"'; end++)
      continue;
  else
    for (end = dbp; *end != '\0' && intoken (*end); end++)
      continue;
  linebuffer_setlen (&token_name, end - dbp);
  memcpy (token_name.buffer, dbp, end - dbp);
  token_name.buffer[end - dbp] = '\0';
  dbp = end;
  intag =
         0
              ;
  skiptag =
           1
               ;
  getnext =
           1
               ;
  continue;
       }
     dbp += 1;
   }
 else if (getnext)
   {
     dbp = skip_spaces (dbp);
     if (*dbp == '\0')
       break;
     if (*dbp == '<')
       {
  intag =
         1
             ;
  inanchor = (c_tolower (dbp[1]) == 'a' && !intoken (dbp[2]));
  continue;
       }
     for (end = dbp + 1; *end != '\0' && *end != '<'; end++)
       continue;
     make_tag (token_name.buffer, token_name.len,
                                                 1
                                                     ,
        dbp, end - dbp, lineno, linecharno);
     linebuffer_setlen (&token_name, 0);
     getnext =
              0
                   ;
     break;
   }
 else
   {
     while (*dbp != '\0' && *dbp != '<')
       dbp++;
     if (*dbp == '\0')
       break;
     intag =
            1
                ;
     if (c_tolower (dbp[1]) == 'a' && !intoken (dbp[2]))
       {
  inanchor =
            1
                ;
  continue;
       }
     else if (((((void) 0),
             1
             ) && strncaseeq ((dbp), "<title>", sizeof ("<title>")-1) && ((dbp) += sizeof ("<title>")-1))
       || ((((void) 0),
         1
         ) && strncaseeq ((dbp), "<h1>", sizeof ("<h1>")-1) && ((dbp) += sizeof ("<h1>")-1))
       || ((((void) 0),
         1
         ) && strncaseeq ((dbp), "<h2>", sizeof ("<h2>")-1) && ((dbp) += sizeof ("<h2>")-1))
       || ((((void) 0),
         1
         ) && strncaseeq ((dbp), "<h3>", sizeof ("<h3>")-1) && ((dbp) += sizeof ("<h3>")-1)))
       {
  intag =
         0
              ;
  getnext =
           1
               ;
  continue;
       }
     dbp += 1;
   }
      }
}
static size_t prolog_pr (char *, char *);
static void prolog_skip_comment (linebuffer *, FILE *);
static size_t prolog_atom (char *, size_t);
static void
Prolog_functions (FILE *inf)
{
  char *cp, *last;
  size_t len;
  size_t allocated;
  allocated = 0;
  len = 0;
  last =
        ((void *)0)
            ;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      if (cp[0] == '\0')
 continue;
      else if (c_isspace (cp[0]))
 continue;
      else if (cp[0] == '/' && cp[1] == '*')
 prolog_skip_comment (&lb, inf);
      else if ((len = prolog_pr (cp, last)) > 0)
 {
   if (last ==
              ((void *)0)
                  )
     last = ((char *) xmalloc ((len + 1) * sizeof (char)));
   else if (len + 1 > allocated)
     ((last) = (char *) xrealloc (last, (len + 1) * sizeof (char)));
   allocated = len + 1;
   memcpy (last, cp, len);
   last[len] = '\0';
 }
    }
  free (last);
}
static void
prolog_skip_comment (linebuffer *plb, FILE *inf)
{
  char *cp;
  do
    {
      for (cp = plb->buffer; *cp != '\0'; cp++)
 if (cp[0] == '*' && cp[1] == '/')
   return;
      readline (plb, inf);
    }
  while (perhaps_more_input (inf));
}
static size_t
prolog_pr (char *s, char *last)
{
  size_t pos;
  size_t len;
  pos = prolog_atom (s, 0);
  if (! pos)
    return 0;
  len = pos;
  pos = skip_spaces (s + pos) - s;
  if ((s[pos] == '.'
       || (s[pos] == '(' && (pos += 1))
       || (s[pos] == ':' && s[pos + 1] == '-' && (pos += 2)))
      && (last ==
                 ((void *)0)
  || len != strlen (last)
   || !strneq (s, last, len)))
 {
   make_tag (s, len,
                    1
                        , s, pos, lineno, linecharno);
   return len;
 }
  else
    return 0;
}
static size_t
prolog_atom (char *s, size_t pos)
{
  size_t origpos;
  origpos = pos;
  if (c_islower (s[pos]) || s[pos] == '_')
    {
      pos++;
      while (c_isalnum (s[pos]) || s[pos] == '_')
 {
   pos++;
 }
      return pos - origpos;
    }
  else if (s[pos] == '\'')
    {
      pos++;
      for (;;)
 {
   if (s[pos] == '\'')
     {
       pos++;
       if (s[pos] != '\'')
  break;
       pos++;
     }
   else if (s[pos] == '\0')
     return 0;
   else if (s[pos] == '\\')
     {
       if (s[pos+1] == '\0')
  return 0;
       pos += 2;
     }
   else
     pos++;
 }
      return pos - origpos;
    }
  else
    return 0;
}
static int erlang_func (char *, char *);
static void erlang_attribute (char *);
static int erlang_atom (char *);
static void
Erlang_functions (FILE *inf)
{
  char *cp, *last;
  int len;
  int allocated;
  allocated = 0;
  len = 0;
  last =
        ((void *)0)
            ;
  while (perhaps_more_input (inf) && (readline (&(lb), inf), (cp) = (lb).buffer,
 1
 ))
    {
      if (cp[0] == '\0')
 continue;
      else if (c_isspace (cp[0]))
 continue;
      else if (cp[0] == '%')
 continue;
      else if (cp[0] == '"')
 continue;
      else if (cp[0] == '-')
 {
   erlang_attribute (cp);
   if (last !=
              ((void *)0)
                  )
     {
       free (last);
       last =
             ((void *)0)
                 ;
     }
 }
      else if ((len = erlang_func (cp, last)) > 0)
 {
   if (last ==
              ((void *)0)
                  )
     last = ((char *) xmalloc ((len + 1) * sizeof (char)));
   else if (len + 1 > allocated)
     ((last) = (char *) xrealloc (last, (len + 1) * sizeof (char)));
   allocated = len + 1;
   memcpy (last, cp, len);
   last[len] = '\0';
 }
    }
  free (last);
}
static int
erlang_func (char *s, char *last)
{
  int pos;
  int len;
  pos = erlang_atom (s);
  if (pos < 1)
    return 0;
  len = pos;
  pos = skip_spaces (s + pos) - s;
  if (s[pos++] == '('
      && (last ==
                 ((void *)0)
  || len != (int)strlen (last)
   || !strneq (s, last, len)))
 {
   make_tag (s, len,
                    1
                        , s, pos, lineno, linecharno);
   return len;
 }
  return 0;
}
static void
erlang_attribute (char *s)
{
  char *cp = s;
  if ((((((void) 0),
      1
      ) && strneq ((cp), "-define", sizeof ("-define")-1) && notinname ((cp)[sizeof ("-define")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("-define")-1))) || ((((void) 0),
                                    1
                                    ) && strneq ((cp), "-record", sizeof ("-record")-1) && notinname ((cp)[sizeof ("-record")-1]) && ((cp) = skip_spaces ((cp)+sizeof ("-record")-1))))
      && *cp++ == '(')
    {
      int len = erlang_atom (skip_spaces (cp));
      if (len > 0)
 make_tag (cp, len,
                   1
                       , s, cp + len - s, lineno, linecharno);
    }
  return;
}
static int
erlang_atom (char *s)
{
  int pos = 0;
  if (c_isalpha (s[pos]) || s[pos] == '_')
    {
      do
 pos++;
      while (c_isalnum (s[pos]) || s[pos] == '_');
    }
  else if (s[pos] == '\'')
    {
      for (pos++; s[pos] != '\''; pos++)
 if (s[pos] == '\0'
     || (s[pos] == '\\' && s[++pos] == '\0'))
   return 0;
      pos++;
    }
  return pos;
}
static char *scan_separators (char *);
static void add_regex (char *, language *);
static char *substitute (char *, char *, struct re_registers *);
static char *
scan_separators (char *name)
{
  char sep = name[0];
  char *copyto = name;
 _Bool
      quoted =
               0
                    ;
  for (++name; *name != '\0'; ++name)
    {
      if (quoted)
 {
   switch (*name)
     {
     case 'a': *copyto++ = '\007'; break;
     case 'b': *copyto++ = '\b'; break;
     case 'd': *copyto++ = 0177; break;
     case 'e': *copyto++ = 033; break;
     case 'f': *copyto++ = '\f'; break;
     case 'n': *copyto++ = '\n'; break;
     case 'r': *copyto++ = '\r'; break;
     case 't': *copyto++ = '\t'; break;
     case 'v': *copyto++ = '\v'; break;
     default:
       if (*name == sep)
  *copyto++ = sep;
       else
  {
    *copyto++ = '\\';
    *copyto++ = *name;
  }
       break;
     }
   quoted =
           0
                ;
 }
      else if (*name == '\\')
 quoted =
         1
             ;
      else if (*name == sep)
 break;
      else
 *copyto++ = *name;
    }
  if (*name != sep)
    name =
          ((void *)0)
              ;
  *copyto = '\0';
  return name;
}
static void
analyze_regex (char *regex_arg)
{
  if (regex_arg ==
                  ((void *)0)
                      )
    {
      free_regexps ();
      return;
    }
  switch (regex_arg[0])
    {
    case '\0':
    case ' ':
    case '\t':
      break;
    case '@':
      {
 FILE *regexfp;
 linebuffer regexbuf;
 char *regexfile = regex_arg + 1;
 regexfp = fopen (regexfile, "r" "");
 if (regexfp ==
               ((void *)0)
                   )
   pfatal (regexfile);
 linebuffer_init (&regexbuf);
 while (readline_internal (&regexbuf, regexfp, regexfile) > 0)
   analyze_regex (regexbuf.buffer);
 free (regexbuf.buffer);
 if (fclose (regexfp) != 0)
   pfatal (regexfile);
      }
      break;
    case '{':
      {
 language *lang;
 char *lang_name = regex_arg + 1;
 char *cp;
 for (cp = lang_name; *cp != '}'; cp++)
   if (*cp == '\0')
     {
       error ("unterminated language name in regex: %s", regex_arg);
       return;
     }
 *cp++ = '\0';
 lang = get_language_from_langname (lang_name);
 if (lang ==
            ((void *)0)
                )
   return;
 add_regex (cp, lang);
      }
      break;
    default:
      add_regex (regex_arg,
                           ((void *)0)
                               );
      break;
    }
}
static void
add_regex (char *regexp_pattern, language *lang)
{
  static struct re_pattern_buffer zeropattern;
  char sep, *pat, *name, *modifiers;
  char empty = '\0';
  const char *err;
  struct re_pattern_buffer *patbuf;
  regexp *rp;
 _Bool
   force_explicit_name =
                         1
                             ,
    ignore_case =
                 0
                      ,
    multi_line =
                0
                     ,
    single_line =
                 0
                      ;
  if (strlen (regexp_pattern) < 3)
    {
      error ("null regexp");
      return;
    }
  sep = regexp_pattern[0];
  name = scan_separators (regexp_pattern);
  if (name ==
             ((void *)0)
                 )
    {
      error ("%s: unterminated regexp", regexp_pattern);
      return;
    }
  if (name[1] == sep)
    {
      error ("null name for regexp \"%s\"", regexp_pattern);
      return;
    }
  modifiers = scan_separators (name);
  if (modifiers ==
                  ((void *)0)
                      )
    {
      modifiers = name;
      name = &empty;
    }
  else
    modifiers += 1;
  for (; modifiers[0] != '\0'; modifiers++)
    switch (modifiers[0])
      {
      case 'N':
 if (modifiers == name)
   error ("forcing explicit tag name but no name, ignoring");
 force_explicit_name =
                      1
                          ;
 break;
      case 'i':
 ignore_case =
              1
                  ;
 break;
      case 's':
 single_line =
              1
                  ;
      case 'm':
 multi_line =
             1
                 ;
 need_filebuf =
               1
                   ;
 break;
      default:
 error ("invalid regexp modifier '%c', ignoring", modifiers[0]);
 break;
      }
  patbuf = ((struct re_pattern_buffer *) xmalloc ((1) * sizeof (struct re_pattern_buffer)));
  *patbuf = zeropattern;
  if (ignore_case)
    {
      static char lc_trans[
                          (0x7f * 2 + 1)
                                    + 1];
      int i;
      for (i = 0; i <
                     (0x7f * 2 + 1)
                               + 1; i++)
 lc_trans[i] = c_tolower (i);
      patbuf->translate = lc_trans;
    }
  if (multi_line)
    pat = concat ("^", regexp_pattern, "");
  else
    pat = regexp_pattern;
  if (single_line)
    re_set_syntax ((((((unsigned long int) 1) << 1) << 1) | (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | ((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)) | ((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1));
  else
    re_set_syntax ((((((unsigned long int) 1) << 1) << 1) | (((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | (((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) | ((((((((((((((((((((((unsigned long int) 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1) << 1)));
  err = re_compile_pattern (pat, strlen (pat), patbuf);
  if (multi_line)
    free (pat);
  if (err !=
            ((void *)0)
                )
    {
      error ("%s while compiling pattern", err);
      return;
    }
  rp = p_head;
  p_head = ((regexp *) xmalloc ((1) * sizeof (regexp)));
  p_head->pattern = savestr (regexp_pattern);
  p_head->p_next = rp;
  p_head->lang = lang;
  p_head->pat = patbuf;
  p_head->name = savestr (name);
  p_head->error_signaled =
                          0
                               ;
  p_head->force_explicit_name = force_explicit_name;
  p_head->ignore_case = ignore_case;
  p_head->multi_line = multi_line;
}
static char *
substitute (char *in, char *out, struct re_registers *regs)
{
  char *result, *t;
  int size, dig, diglen;
  result =
          ((void *)0)
              ;
  size = strlen (out);
  if (out[size - 1] == '\\')
    fatal ("pattern error in \"%s\"", out);
  for (t =
          (__extension__ (__builtin_constant_p (
          '\\'
          ) && !__builtin_constant_p (
          out
          ) && (
          '\\'
          ) == '\0' ? (char *) __rawmemchr (
          out
          ,
          '\\'
          ) : __builtin_strchr (
          out
          ,
          '\\'
          )))
                            ;
       t !=
           ((void *)0)
               ;
       t =
          (__extension__ (__builtin_constant_p (
          '\\'
          ) && !__builtin_constant_p (
          t + 2
          ) && (
          '\\'
          ) == '\0' ? (char *) __rawmemchr (
          t + 2
          ,
          '\\'
          ) : __builtin_strchr (
          t + 2
          ,
          '\\'
          )))
                              )
    if (c_isdigit (t[1]))
      {
 dig = t[1] - '0';
 diglen = regs->end[dig] - regs->start[dig];
 size += diglen - 2;
      }
    else
      size -= 1;
  ((void) 0);
  result = ((char *) xmalloc ((size + 1) * sizeof (char)));
  for (t = result; *out != '\0'; out++)
    if (*out == '\\' && c_isdigit (*++out))
      {
 dig = *out - '0';
 diglen = regs->end[dig] - regs->start[dig];
 memcpy (t, in + regs->start[dig], diglen);
 t += diglen;
      }
    else
      *t++ = *out;
  *t = '\0';
  ((void) 0);
  ((void) 0);
  return result;
}
static void
free_regexps (void)
{
  regexp *rp;
  while (p_head !=
                  ((void *)0)
                      )
    {
      rp = p_head->p_next;
      free (p_head->pattern);
      free (p_head->name);
      free (p_head);
      p_head = rp;
    }
  return;
}
static void
regex_tag_multiline (void)
{
  char *buffer = filebuf.buffer;
  regexp *rp;
  char *name;
  for (rp = p_head; rp !=
                         ((void *)0)
                             ; rp = rp->p_next)
    {
      int match = 0;
      if (!rp->multi_line)
 continue;
      lineno = 1;
      charno = 0;
      linecharno = 0;
      if (rp->lang !=
                     ((void *)0)
                          && rp->lang != curfdp->lang)
 continue;
      while (match >= 0 && match < filebuf.len)
 {
   match = re_search (rp->pat, buffer, filebuf.len, charno,
        filebuf.len - match, &rp->regs);
   switch (match)
     {
     case -2:
       if (!rp->error_signaled)
  {
    error ("regexp stack overflow while matching \"%s\"",
    rp->pattern);
    rp->error_signaled =
                        1
                            ;
  }
       break;
     case -1:
       break;
     default:
       if (match == rp->regs.end[0])
  {
    if (!rp->error_signaled)
      {
        error ("regexp matches the empty string: \"%s\"",
        rp->pattern);
        rp->error_signaled =
                            1
                                ;
      }
    match = -3;
    break;
  }
       while (charno < rp->regs.end[0])
  if (buffer[charno++] == '\n')
    lineno++, linecharno = charno;
       name = rp->name;
       if (name[0] == '\0')
  name =
        ((void *)0)
            ;
       else
  name = substitute (buffer, rp->name, &rp->regs);
       if (rp->force_explicit_name)
  pfnote (name,
               1
                   , buffer + linecharno,
   charno - linecharno + 1, lineno, linecharno);
       else
  make_tag (name, strlen (name),
                                1
                                    , buffer + linecharno,
     charno - linecharno + 1, lineno, linecharno);
       break;
     }
 }
    }
}
static
      _Bool
nocase_tail (const char *cp)
{
  int len = 0;
  while (*cp != '\0' && c_tolower (*cp) == c_tolower (dbp[len]))
    cp++, len++;
  if (*cp == '\0' && !intoken (dbp[len]))
    {
      dbp += len;
      return
            1
                ;
    }
  return
        0
             ;
}
static void
get_tag (register char *bp, char **namepp)
{
  register char *cp = bp;
  if (*bp != '\0')
    {
      for (cp = bp + 1; !notinname (*cp); cp++)
 continue;
      make_tag (bp, cp - bp,
                            1
                                ,
  lb.buffer, cp - lb.buffer + 1, lineno, linecharno);
    }
  if (namepp !=
               ((void *)0)
                   )
    *namepp = savenstr (bp, cp - bp);
}
static long
readline_internal (linebuffer *lbp, FILE *stream, char const *filename)
{
  char *buffer = lbp->buffer;
  char *p = lbp->buffer;
  char *pend;
  int chars_deleted;
  pend = p + lbp->size;
  for (;;)
    {
      register int c =
                      _IO_getc (
                      stream
                      )
                                   ;
      if (p == pend)
 {
   lbp->size *= 2;
   ((buffer) = (char *) xrealloc (buffer, (lbp->size) * sizeof (char)));
   p += buffer - lbp->buffer;
   pend = buffer + lbp->size;
   lbp->buffer = buffer;
 }
      if (c ==
              (-1)
                 )
 {
   if (ferror (stream))
     perror (filename);
   *p = '\0';
   chars_deleted = 0;
   break;
 }
      if (c == '\n')
 {
   if (p > buffer && p[-1] == '\r')
     {
       p -= 1;
       chars_deleted = 2;
     }
   else
     {
       chars_deleted = 1;
     }
   *p = '\0';
   break;
 }
      *p++ = c;
    }
  lbp->len = p - buffer;
  if (need_filebuf
      && chars_deleted > 0)
    {
      while (filebuf.size <= filebuf.len + lbp->len + 1)
 {
   filebuf.size *= 2;
   ((filebuf.buffer) = (char *) xrealloc (filebuf.buffer, (filebuf.size) * sizeof (char)));
 }
      memcpy (filebuf.buffer + filebuf.len, lbp->buffer, lbp->len);
      filebuf.len += lbp->len;
      filebuf.buffer[filebuf.len++] = '\n';
      filebuf.buffer[filebuf.len] = '\0';
    }
  return lbp->len + chars_deleted;
}
static void
readline (linebuffer *lbp, FILE *stream)
{
  long result;
  linecharno = charno;
  result = readline_internal (lbp, stream, infilename);
  lineno += 1;
  charno += result;
  if (!no_line_directive)
    {
      static
            _Bool
                 discard_until_line_directive;
      if (result > 12 && strneq (lbp->buffer, "#line ", 6))
 {
   unsigned int lno;
   int start = 0;
   if (sscanf (lbp->buffer, "#line %u \"%n", &lno, &start) >= 1
       && start > 0)
     {
       char *endp = lbp->buffer + start;
       while ((endp =
                     (__extension__ (__builtin_constant_p (
                     '"'
                     ) && !__builtin_constant_p (
                     endp
                     ) && (
                     '"'
                     ) == '\0' ? (char *) __rawmemchr (
                     endp
                     ,
                     '"'
                     ) : __builtin_strchr (
                     endp
                     ,
                     '"'
                     )))
                                       ) !=
                                            ((void *)0)
      && endp[-1] == '\\')
  endp++;
       if (endp !=
                  ((void *)0)
                      )
  {
    char *taggedabsname;
    char *taggedfname;
    char *name;
    discard_until_line_directive =
                                  0
                                       ;
    name = lbp->buffer + start;
    *endp = '\0';
    canonicalize_filename (name);
    taggedabsname = absolute_filename (name, tagfiledir);
    if (filename_is_absolute (name)
        || filename_is_absolute (curfdp->infname))
      taggedfname = savestr (taggedabsname);
    else
      taggedfname = relative_filename (taggedabsname,tagfiledir);
    if (streq (curfdp->taggedfname, taggedfname))
      free (taggedfname);
    else
      {
        fdesc *fdp;
        for (fdp = fdhead; fdp !=
                                 ((void *)0)
                                     ; fdp = fdp->next)
   if (streq (fdp->infname, curfdp->infname)
       && streq (fdp->taggedfname, taggedfname))
     {
       curfdp = fdp;
       free (taggedfname);
       break;
     }
        if (fdp ==
                  ((void *)0)
                      )
   for (fdp = fdhead; fdp !=
                            ((void *)0)
                                ; fdp = fdp->next)
     if (streq (fdp->infabsname, taggedabsname))
       {
         discard_until_line_directive =
                                       1
                                           ;
         free (taggedfname);
         break;
       }
        if (fdp ==
                  ((void *)0)
                      )
   {
     fdp = fdhead;
     fdhead = ((fdesc *) xmalloc ((1) * sizeof (fdesc)));
     *fdhead = *curfdp;
     fdhead->next = fdp;
     fdhead->infname = savestr (curfdp->infname);
     fdhead->infabsname = savestr (curfdp->infabsname);
     fdhead->infabsdir = savestr (curfdp->infabsdir);
     fdhead->taggedfname = taggedfname;
     fdhead->usecharno =
                        0
                             ;
     fdhead->prop =
                   ((void *)0)
                       ;
     fdhead->written =
                      0
                           ;
     curfdp = fdhead;
   }
      }
    free (taggedabsname);
    lineno = lno - 1;
    readline (lbp, stream);
    return;
  }
     }
 }
      if (discard_until_line_directive)
 {
   if (result > 0)
     {
       readline (lbp, stream);
       return;
     }
   discard_until_line_directive =
                                 0
                                      ;
   return;
 }
    }
  {
    int match;
    regexp *rp;
    char *name;
    if (lbp->len > 0)
      for (rp = p_head; rp !=
                             ((void *)0)
                                 ; rp = rp->p_next)
 {
   if ((rp->lang !=
                   ((void *)0)
                        && rp->lang != fdhead->lang)
       || rp->multi_line)
     continue;
   match = re_match (rp->pat, lbp->buffer, lbp->len, 0, &rp->regs);
   switch (match)
     {
     case -2:
       if (!rp->error_signaled)
  {
    error ("regexp stack overflow while matching \"%s\"",
    rp->pattern);
    rp->error_signaled =
                        1
                            ;
  }
       break;
     case -1:
       break;
     case 0:
       if (!rp->error_signaled)
  {
    error ("regexp matches the empty string: \"%s\"", rp->pattern);
    rp->error_signaled =
                        1
                            ;
  }
       break;
     default:
       name = rp->name;
       if (name[0] == '\0')
  name =
        ((void *)0)
            ;
       else
  name = substitute (lbp->buffer, rp->name, &rp->regs);
       if (rp->force_explicit_name)
  pfnote (name,
               1
                   , lbp->buffer, match, lineno, linecharno);
       else
  make_tag (name, strlen (name),
                                1
                                    ,
     lbp->buffer, match, lineno, linecharno);
       break;
     }
 }
  }
}
static char *
savestr (const char *cp)
{
  return savenstr (cp, strlen (cp));
}
static char *
savenstr (const char *cp, int len)
{
  char *dp = ((char *) xmalloc ((len + 1) * sizeof (char)));
  dp[len] = '\0';
  return memcpy (dp, cp, len);
}
static char *
skip_spaces (char *cp)
{
  while (c_isspace (*cp))
    cp++;
  return cp;
}
static char *
skip_non_spaces (char *cp)
{
  while (*cp != '\0' && !c_isspace (*cp))
    cp++;
  return cp;
}
static char *
skip_name (char *cp)
{
  while (! notinname (*cp))
    cp++;
  return cp;
}
static void
fatal (char const *format, ...)
{
  va_list ap;
 __builtin_va_start(
 ap
 ,
 format
 )
                      ;
  verror (format, ap);
 __builtin_va_end(
 ap
 )
            ;
  exit (
       1
                   );
}
static void
pfatal (const char *s1)
{
  perror (s1);
  exit (
       1
                   );
}
static void
suggest_asking_for_help (void)
{
  fprintf (
          stderr
                , "\tTry '%s --help' for a complete list of options.\n",
    progname);
  exit (
       1
                   );
}
static void
error (const char *format, ...)
{
  va_list ap;
 __builtin_va_start(
 ap
 ,
 format
 )
                      ;
  verror (format, ap);
 __builtin_va_end(
 ap
 )
            ;
}
static void
verror (char const *format, va_list ap)
{
  fprintf (
          stderr
                , "%s: ", progname);
  vfprintf (
           stderr
                 , format, ap);
  fprintf (
          stderr
                , "\n");
}
static char *
concat (const char *s1, const char *s2, const char *s3)
{
  int len1 = strlen (s1), len2 = strlen (s2), len3 = strlen (s3);
  char *result = ((char *) xmalloc ((len1 + len2 + len3 + 1) * sizeof (char)));
  strcpy (result, s1);
  strcpy (result + len1, s2);
  strcpy (result + len1 + len2, s3);
  return result;
}
static char *
etags_getcwd (void)
{
  int bufsize = 200;
  char *path = ((char *) xmalloc ((bufsize) * sizeof (char)));
  while (getcwd (path, bufsize) ==
                                  ((void *)0)
                                      )
    {
      if (
         (*__errno_location ())
               !=
                  34
                        )
 pfatal ("getcwd");
      bufsize *= 2;
      free (path);
      path = ((char *) xmalloc ((bufsize) * sizeof (char)));
    }
  canonicalize_filename (path);
  return path;
}
static char *
etags_mktmp (void)
{
  const char *tmpdir = getenv ("TMPDIR");
  const char *slash = "/";
  if (!tmpdir)
    tmpdir = "/tmp";
  if (tmpdir[strlen (tmpdir) - 1] == '/')
    slash = "";
  char *templt = concat (tmpdir, slash, "etXXXXXX");
  int fd = mkostemp (templt,
                            02000000
                                     );
  if (fd < 0 || close (fd) != 0)
    {
      int temp_errno =
                      (*__errno_location ())
                           ;
      free (templt);
     (*__errno_location ())
           = temp_errno;
      templt =
              ((void *)0)
                  ;
    }
  return templt;
}
static char *
relative_filename (char *file, char *dir)
{
  char *fp, *dp, *afn, *res;
  int i;
  afn = absolute_filename (file, cwd);
  fp = afn;
  dp = dir;
  while (*fp++ == *dp++)
    continue;
  fp--, dp--;
  do
    fp--, dp--;
  while (*fp != '/');
  i = 0;
  while ((dp =
              (__extension__ (__builtin_constant_p (
              '/'
              ) && !__builtin_constant_p (
              dp + 1
              ) && (
              '/'
              ) == '\0' ? (char *) __rawmemchr (
              dp + 1
              ,
              '/'
              ) : __builtin_strchr (
              dp + 1
              ,
              '/'
              )))
                                  ) !=
                                       ((void *)0)
                                           )
    i += 1;
  res = ((char *) xmalloc ((3*i + strlen (fp + 1) + 1) * sizeof (char)));
  char *z = res;
  while (i-- > 0)
    z = stpcpy (z, "../");
  strcpy (z, fp + 1);
  free (afn);
  return res;
}
static char *
absolute_filename (char *file, char *dir)
{
  char *slashp, *cp, *res;
  if (filename_is_absolute (file))
    res = savestr (file);
  else
    res = concat (dir, file, "");
  slashp =
          (__extension__ (__builtin_constant_p (
          '/'
          ) && !__builtin_constant_p (
          res
          ) && (
          '/'
          ) == '\0' ? (char *) __rawmemchr (
          res
          ,
          '/'
          ) : __builtin_strchr (
          res
          ,
          '/'
          )))
                           ;
  while (slashp !=
                  ((void *)0)
                       && slashp[0] != '\0')
    {
      if (slashp[1] == '.')
 {
   if (slashp[2] == '.'
       && (slashp[3] == '/' || slashp[3] == '\0'))
     {
       cp = slashp;
       do
  cp--;
       while (cp >= res && !filename_is_absolute (cp));
       if (cp < res)
  cp = slashp;
              memmove (cp, slashp + 3, strlen (slashp + 2));
       slashp = cp;
       continue;
     }
   else if (slashp[2] == '/' || slashp[2] == '\0')
     {
       memmove (slashp, slashp + 2, strlen (slashp + 1));
       continue;
     }
 }
      slashp =
              (__extension__ (__builtin_constant_p (
              '/'
              ) && !__builtin_constant_p (
              slashp + 1
              ) && (
              '/'
              ) == '\0' ? (char *) __rawmemchr (
              slashp + 1
              ,
              '/'
              ) : __builtin_strchr (
              slashp + 1
              ,
              '/'
              )))
                                      ;
    }
  if (res[0] == '\0')
    {
      free (res);
      return savestr ("/");
    }
  else
    return res;
}
static char *
absolute_dirname (char *file, char *dir)
{
  char *slashp, *res;
  char save;
  slashp = strrchr (file, '/');
  if (slashp ==
               ((void *)0)
                   )
    return savestr (dir);
  save = slashp[1];
  slashp[1] = '\0';
  res = absolute_filename (file, dir);
  slashp[1] = save;
  return res;
}
static
      _Bool
filename_is_absolute (char *fn)
{
  return (fn[0] == '/'
   );
}
static void
canonicalize_filename (register char *fn)
{
  register char* cp;
  for (cp = fn; *cp != '\0'; cp++, fn++)
    if (*cp == '/')
      {
 *fn = '/';
 while (cp[1] == '/')
   cp++;
      }
    else
      *fn = *cp;
  *fn = '\0';
}
static void
linebuffer_init (linebuffer *lbp)
{
  lbp->size = (
              0
                   ) ? 3 : 200;
  lbp->buffer = ((char *) xmalloc ((lbp->size) * sizeof (char)));
  lbp->buffer[0] = '\0';
  lbp->len = 0;
}
static void
linebuffer_setlen (linebuffer *lbp, int toksize)
{
  while (lbp->size <= toksize)
    {
      lbp->size *= 2;
      ((lbp->buffer) = (char *) xrealloc (lbp->buffer, (lbp->size) * sizeof (char)));
    }
  lbp->len = toksize;
}
static void *
xmalloc (size_t size)
{
  void *result = malloc (size);
  if (result ==
               ((void *)0)
                   )
    fatal ("virtual memory exhausted");
  return result;
}
static void *
xrealloc (void *ptr, size_t size)
{
  void *result = realloc (ptr, size);
  if (result ==
               ((void *)0)
                   )
    fatal ("virtual memory exhausted");
  return result;
}
