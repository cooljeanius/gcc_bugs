# 1 "n1fv_64.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "n1fv_64.c"
# 24 "n1fv_64.c"
# 1 "../../../dft/codelet-dft.h" 1
# 30 "../../../dft/codelet-dft.h"
# 1 "../../../kernel/ifftw.h" 1
# 26 "../../../kernel/ifftw.h"
# 1 "../../../config.h" 1
# 27 "../../../kernel/ifftw.h" 2

# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 352 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 365 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 366 "/usr/include/sys/cdefs.h" 2 3 4
# 353 "/usr/include/features.h" 2 3 4
# 376 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 377 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 1 3 4
# 211 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 34 "/usr/include/stdlib.h" 2 3 4


# 96 "/usr/include/stdlib.h" 3 4


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


# 140 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__)) ;




extern double atof (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (__const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern float strtof (__const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern long double strtold (__const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern long int strtol (__const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern unsigned long int strtoul (__const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




__extension__
extern long long int strtoq (__const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtouq (__const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





__extension__
extern long long int strtoll (__const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtoull (__const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

# 277 "/usr/include/stdlib.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__)) atof (__const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__)) atoi (__const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__)) atol (__const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}




__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__)) atoll (__const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}

# 311 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__)) ;


extern long int a64l (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/sys/types.h" 1 3 4
# 29 "/usr/include/sys/types.h" 3 4


# 1 "/usr/include/bits/types.h" 1 3 4
# 28 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


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




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;







__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
# 131 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 132 "/usr/include/bits/types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __u_quad_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __quad_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __u_quad_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;

__extension__ typedef int __daddr_t;
__extension__ typedef long int __swblk_t;
__extension__ typedef int __key_t;


__extension__ typedef int __clockid_t;


__extension__ typedef void * __timer_t;


__extension__ typedef long int __blksize_t;




__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;


__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;


__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;

__extension__ typedef int __ssize_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


__extension__ typedef int __intptr_t;


__extension__ typedef unsigned int __socklen_t;
# 32 "/usr/include/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 62 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 100 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;




typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 133 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 74 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 92 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 104 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 134 "/usr/include/sys/types.h" 2 3 4
# 147 "/usr/include/sys/types.h" 3 4
# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 1 3 4
# 148 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 195 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 217 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 61 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 62 "/usr/include/endian.h" 2 3 4
# 218 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 32 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 24 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 35 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
# 45 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 69 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 47 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 67 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 99 "/usr/include/sys/select.h" 3 4

# 109 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 121 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);



# 221 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 30 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__));


__extension__ extern __inline __attribute__ ((__gnu_inline__)) unsigned int
__attribute__ ((__nothrow__)) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) unsigned int
__attribute__ ((__nothrow__)) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) unsigned long long int
__attribute__ ((__nothrow__)) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}
# 224 "/usr/include/sys/types.h" 2 3 4
# 235 "/usr/include/sys/types.h" 3 4
typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 38 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


typedef union
{
  char __size[36];
  long int __align;
} pthread_attr_t;


typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;




typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;


    int __kind;
    unsigned int __nusers;
    __extension__ union
    {
      int __spins;
      __pthread_slist_t __list;
    };
  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  long int __align;
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
  long int __align;
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
# 141 "/usr/include/bits/pthreadtypes.h" 3 4
    unsigned char __flags;
    unsigned char __shared;
    unsigned char __pad1;
    unsigned char __pad2;

    int __writer;
  } __data;
  char __size[32];
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
  char __size[20];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4



# 321 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));







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
       int32_t *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__));







extern double drand48 (void) __attribute__ ((__nothrow__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__));



# 1 "/usr/include/alloca.h" 1 3 4
# 25 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 1 3 4
# 26 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__));






# 498 "/usr/include/stdlib.h" 2 3 4




extern void *valloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern void abort (void) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 553 "/usr/include/stdlib.h" 3 4






extern void _Exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));






extern char *getenv (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern char *__secure_getenv (__const char *__name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern int putenv (char *__string) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (__const char *__name, __const char *__value, int __replace)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (__const char *__name) __attribute__ ((__nothrow__));






extern int clearenv (void) __attribute__ ((__nothrow__));
# 604 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 615 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 637 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 658 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 707 "/usr/include/stdlib.h" 3 4





extern int system (__const char *__command) ;

# 729 "/usr/include/stdlib.h" 3 4
extern char *realpath (__const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__)) ;






typedef int (*__compar_fn_t) (__const void *, __const void *);
# 747 "/usr/include/stdlib.h" 3 4



extern void *bsearch (__const void *__key, __const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 766 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;

# 802 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));







extern int mblen (__const char *__s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int mbtowc (wchar_t *__restrict __pwc,
     __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__)) ;



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__));

extern size_t wcstombs (char *__restrict __s,
   __const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__));








extern int rpmatch (__const char *__response) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 907 "/usr/include/stdlib.h" 3 4
extern int posix_openpt (int __oflag) ;
# 942 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 958 "/usr/include/stdlib.h" 3 4

# 29 "../../../kernel/ifftw.h" 2
# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 102 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 30 "../../../kernel/ifftw.h" 2
# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 31 "../../../kernel/ifftw.h" 2






# 1 "/usr/include/stdint.h" 1 3 4
# 27 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 49 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;





__extension__
typedef unsigned long long int uint64_t;






typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;



__extension__
typedef long long int int_least64_t;



typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;



__extension__
typedef unsigned long long int uint_least64_t;






typedef signed char int_fast8_t;





typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;



typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
# 126 "/usr/include/stdint.h" 3 4
typedef int intptr_t;


typedef unsigned int uintptr_t;
# 138 "/usr/include/stdint.h" 3 4
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
# 38 "../../../kernel/ifftw.h" 2



# 1 "/usr/include/inttypes.h" 1 3 4
# 35 "/usr/include/inttypes.h" 3 4
typedef unsigned int __gwchar_t;
# 274 "/usr/include/inttypes.h" 3 4

# 288 "/usr/include/inttypes.h" 3 4
typedef struct
  {
    long long int quot;
    long long int rem;
  } imaxdiv_t;





extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__)) __attribute__ ((__const__));


extern intmax_t strtoimax (__const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__));


extern uintmax_t strtoumax (__const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__));


extern intmax_t wcstoimax (__const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__));


extern uintmax_t wcstoumax (__const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__));
# 379 "/usr/include/inttypes.h" 3 4
__extension__
extern long long int __strtoll_internal (__const char *__restrict __nptr,
      char **__restrict __endptr,
      int __base, int __group)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__)) strtoimax (__const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtoll_internal (nptr, endptr, base, 0);
}

__extension__
extern unsigned long long int __strtoull_internal (__const char *
         __restrict __nptr,
         char **
         __restrict __endptr,
         int __base,
         int __group)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__)) strtoumax (__const char *__restrict nptr, char **__restrict endptr, int base)

{
  return __strtoull_internal (nptr, endptr, base, 0);
}

__extension__
extern long long int __wcstoll_internal (__const __gwchar_t *
      __restrict __nptr,
      __gwchar_t **__restrict __endptr,
      int __base, int __group)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) intmax_t
__attribute__ ((__nothrow__)) wcstoimax (__const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstoll_internal (nptr, endptr, base, 0);
}


__extension__
extern unsigned long long int __wcstoull_internal (__const __gwchar_t *
         __restrict __nptr,
         __gwchar_t **
         __restrict __endptr,
         int __base,
         int __group)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern __inline __attribute__ ((__gnu_inline__)) uintmax_t
__attribute__ ((__nothrow__)) wcstoumax (__const __gwchar_t *__restrict nptr, __gwchar_t **__restrict endptr, int base)

{
  return __wcstoull_internal (nptr, endptr, base, 0);
}





# 42 "../../../kernel/ifftw.h" 2
# 59 "../../../kernel/ifftw.h"
  typedef float R;
# 74 "../../../kernel/ifftw.h"
typedef ptrdiff_t INT;







extern void fftwf_extract_reim(int sign, R *c, R **r, R **i);
# 97 "../../../kernel/ifftw.h"
typedef struct problem_s problem;
typedef struct plan_s plan;
typedef struct solver_s solver;
typedef struct planner_s planner;
typedef struct printer_s printer;
typedef struct scanner_s scanner;
# 184 "../../../kernel/ifftw.h"
extern void fftwf_assertion_failed(const char *s,
          int line, const char *file);
# 199 "../../../kernel/ifftw.h"
extern void fftwf_debug(const char *format, ...);




extern void *fftwf_kernel_malloc(size_t n);
extern void fftwf_kernel_free(void *p);





enum malloc_tag {
     EVERYTHING,
     PLANS,
     SOLVERS,
     PROBLEMS,
     BUFFERS,
     HASHT,
     TENSORS,
     PLANNERS,
     SLVDESCS,
     TWIDDLES,
     STRIDES,
     OTHER,
     MALLOC_WHAT_LAST
};

extern void fftwf_ifree(void *ptr);
extern void fftwf_ifree0(void *ptr);
# 240 "../../../kernel/ifftw.h"
extern void *fftwf_malloc_plain(size_t sz);
# 264 "../../../kernel/ifftw.h"
# 1 "/usr/include/sys/time.h" 1 3 4
# 27 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/sys/time.h" 2 3 4
# 39 "/usr/include/sys/time.h" 3 4

# 57 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 73 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (__const struct timeval *__tv,
    __const struct timezone *__tz)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int adjtime (__const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__));




extern int setitimer (__itimer_which_t __which,
        __const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__));




extern int utimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, __const struct timeval __tvp[2]) __attribute__ ((__nothrow__));
# 191 "/usr/include/sys/time.h" 3 4

# 265 "../../../kernel/ifftw.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 30 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/armv5tel-brewer-linux-gnueabi/4.4.6/include/stddef.h" 1 3 4
# 39 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 43 "/usr/include/time.h" 2 3 4
# 58 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  __const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 180 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   __const char *__restrict __format,
   __const struct tm *__restrict __tp) __attribute__ ((__nothrow__));

# 215 "/usr/include/time.h" 3 4
# 1 "/usr/include/xlocale.h" 1 3 4
# 28 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 216 "/usr/include/time.h" 2 3 4

extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     __const char *__restrict __format,
     __const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__));
# 230 "/usr/include/time.h" 3 4



extern struct tm *gmtime (__const time_t *__timer) __attribute__ ((__nothrow__));



extern struct tm *localtime (__const time_t *__timer) __attribute__ ((__nothrow__));





extern struct tm *gmtime_r (__const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__));



extern struct tm *localtime_r (__const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__));





extern char *asctime (__const struct tm *__tp) __attribute__ ((__nothrow__));


extern char *ctime (__const time_t *__timer) __attribute__ ((__nothrow__));







extern char *asctime_r (__const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__));


extern char *ctime_r (__const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__));



extern int daylight;
extern long int timezone;





extern int stime (__const time_t *__when) __attribute__ ((__nothrow__));
# 313 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__));


extern int dysize (int __year) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 328 "/usr/include/time.h" 3 4
extern int nanosleep (__const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__));


extern int clock_settime (clockid_t __clock_id, __const struct timespec *__tp)
     __attribute__ ((__nothrow__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       __const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__));


extern int timer_settime (timer_t __timerid, int __flags,
     __const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__));
# 417 "/usr/include/time.h" 3 4

# 266 "../../../kernel/ifftw.h" 2
# 282 "../../../kernel/ifftw.h"
   typedef struct timeval crude_time;





crude_time fftwf_get_crude_time(void);
double fftwf_elapsed_since(const planner *plnr, const problem *p,
   crude_time t0);
# 299 "../../../kernel/ifftw.h"
typedef struct {
     double add;
     double mul;
     double fma;
     double other;
} opcnt;

void fftwf_ops_zero(opcnt *dst);
void fftwf_ops_other(INT o, opcnt *dst);
void fftwf_ops_cpy(const opcnt *src, opcnt *dst);

void fftwf_ops_add(const opcnt *a, const opcnt *b, opcnt *dst);
void fftwf_ops_add2(const opcnt *a, opcnt *dst);


void fftwf_ops_madd(INT m, const opcnt *a, const opcnt *b, opcnt *dst);


void fftwf_ops_madd2(INT m, const opcnt *a, opcnt *dst);




INT fftwf_imax(INT a, INT b);
INT fftwf_imin(INT a, INT b);



INT fftwf_iabs(INT a);
# 336 "../../../kernel/ifftw.h"
typedef unsigned int md5uint;




typedef md5uint md5sig[4];

typedef struct {
     md5sig s;


     unsigned char c[64];
     unsigned l;

} md5;

void fftwf_md5begin(md5 *p);
void fftwf_md5putb(md5 *p, const void *d_, size_t len);
void fftwf_md5puts(md5 *p, const char *s);
void fftwf_md5putc(md5 *p, unsigned char c);
void fftwf_md5int(md5 *p, int i);
void fftwf_md5INT(md5 *p, INT i);
void fftwf_md5unsigned(md5 *p, unsigned i);
void fftwf_md5end(md5 *p);






typedef struct {
     INT n;
     INT is;
     INT os;
} iodim;

typedef struct {
     int rnk;

     iodim dims[1];





} tensor;
# 393 "../../../kernel/ifftw.h"
typedef enum { INPLACE_IS, INPLACE_OS } inplace_kind;

tensor *fftwf_mktensor(int rnk);
tensor *fftwf_mktensor_0d(void);
tensor *fftwf_mktensor_1d(INT n, INT is, INT os);
tensor *fftwf_mktensor_2d(INT n0, INT is0, INT os0,
         INT n1, INT is1, INT os1);
tensor *fftwf_mktensor_3d(INT n0, INT is0, INT os0,
         INT n1, INT is1, INT os1,
         INT n2, INT is2, INT os2);
tensor *fftwf_mktensor_4d(INT n0, INT is0, INT os0,
         INT n1, INT is1, INT os1,
         INT n2, INT is2, INT os2,
         INT n3, INT is3, INT os3);
tensor *fftwf_mktensor_5d(INT n0, INT is0, INT os0,
         INT n1, INT is1, INT os1,
         INT n2, INT is2, INT os2,
         INT n3, INT is3, INT os3,
         INT n4, INT is4, INT os4);
INT fftwf_tensor_sz(const tensor *sz);
void fftwf_tensor_md5(md5 *p, const tensor *t);
INT fftwf_tensor_max_index(const tensor *sz);
INT fftwf_tensor_min_istride(const tensor *sz);
INT fftwf_tensor_min_ostride(const tensor *sz);
INT fftwf_tensor_min_stride(const tensor *sz);
int fftwf_tensor_inplace_strides(const tensor *sz);
int fftwf_tensor_inplace_strides2(const tensor *a, const tensor *b);
int fftwf_tensor_strides_decrease(const tensor *sz, const tensor *vecsz,
                               inplace_kind k);
tensor *fftwf_tensor_copy(const tensor *sz);
int fftwf_tensor_kosherp(const tensor *x);

tensor *fftwf_tensor_copy_inplace(const tensor *sz, inplace_kind k);
tensor *fftwf_tensor_copy_except(const tensor *sz, int except_dim);
tensor *fftwf_tensor_copy_sub(const tensor *sz, int start_dim, int rnk);
tensor *fftwf_tensor_compress(const tensor *sz);
tensor *fftwf_tensor_compress_contiguous(const tensor *sz);
tensor *fftwf_tensor_append(const tensor *a, const tensor *b);
void fftwf_tensor_split(const tensor *sz, tensor **a, int a_rnk, tensor **b);
int fftwf_tensor_tornk1(const tensor *t, INT *n, INT *is, INT *os);
void fftwf_tensor_destroy(tensor *sz);
void fftwf_tensor_destroy2(tensor *a, tensor *b);
void fftwf_tensor_destroy4(tensor *a, tensor *b, tensor *c, tensor *d);
void fftwf_tensor_print(const tensor *sz, printer *p);
int fftwf_dimcmp(const iodim *a, const iodim *b);
int fftwf_tensor_equal(const tensor *a, const tensor *b);
int fftwf_tensor_inplace_locations(const tensor *sz, const tensor *vecsz);



enum {

     PROBLEM_UNSOLVABLE,

     PROBLEM_DFT,
     PROBLEM_RDFT,
     PROBLEM_RDFT2,


     PROBLEM_MPI_DFT,
     PROBLEM_MPI_RDFT,
     PROBLEM_MPI_RDFT2,
     PROBLEM_MPI_TRANSPOSE,

     PROBLEM_LAST
};

typedef struct {
     int problem_kind;
     void (*hash) (const problem *ego, md5 *p);
     void (*zero) (const problem *ego);
     void (*print) (const problem *ego, printer *p);
     void (*destroy) (problem *ego);
} problem_adt;

struct problem_s {
     const problem_adt *adt;
};

problem *fftwf_mkproblem(size_t sz, const problem_adt *adt);
void fftwf_problem_destroy(problem *ego);
problem *fftwf_mkproblem_unsolvable(void);



struct printer_s {
     void (*print)(printer *p, const char *format, ...);
     void (*vprint)(printer *p, const char *format, va_list ap);
     void (*putchr)(printer *p, char c);
     void (*cleanup)(printer *p);
     int indent;
     int indent_incr;
};

printer *fftwf_mkprinter(size_t size,
        void (*putchr)(printer *p, char c),
        void (*cleanup)(printer *p));
extern void fftwf_printer_destroy(printer *p);



struct scanner_s {
     int (*scan)(scanner *sc, const char *format, ...);
     int (*vscan)(scanner *sc, const char *format, va_list ap);
     int (*getchr)(scanner *sc);
     int ungotc;
};

scanner *fftwf_mkscanner(size_t size, int (*getchr)(scanner *sc));
void fftwf_scanner_destroy(scanner *sc);




enum wakefulness {
     SLEEPY,
     AWAKE_ZERO,
     AWAKE_SQRTN_TABLE,
     AWAKE_SINCOS
};

typedef struct {
     void (*solve)(const plan *ego, const problem *p);
     void (*awake)(plan *ego, enum wakefulness wakefulness);
     void (*print)(const plan *ego, printer *p);
     void (*destroy)(plan *ego);
} plan_adt;

struct plan_s {
     const plan_adt *adt;
     opcnt ops;
     double pcost;
     enum wakefulness wakefulness;
     int could_prune_now_p;
};

plan *fftwf_mkplan(size_t size, const plan_adt *adt);
void fftwf_plan_destroy_internal(plan *ego);
extern void fftwf_plan_awake(plan *ego, enum wakefulness wakefulness);
void fftwf_plan_null_destroy(plan *ego);



typedef struct {
     int problem_kind;
     plan *(*mkplan)(const solver *ego, const problem *p, planner *plnr);
     void (*destroy)(solver *ego);
} solver_adt;

struct solver_s {
     const solver_adt *adt;
     int refcnt;
};

solver *fftwf_mksolver(size_t size, const solver_adt *adt);
void fftwf_solver_use(solver *ego);
void fftwf_solver_destroy(solver *ego);
void fftwf_solver_register(planner *plnr, solver *s);







typedef struct slvdesc_s {
     solver *slv;
     const char *reg_nam;
     unsigned nam_hash;
     int reg_id;
     int next_for_same_problem_kind;
} slvdesc;

typedef struct solution_s solution;
# 580 "../../../kernel/ifftw.h"
typedef struct {
     unsigned l:20;
     unsigned hash_info:3;

     unsigned timelimit_impatience:9;
     unsigned u:20;





     unsigned slvndx:12;
} flags_t;


enum {
     BELIEVE_PCOST = 0x0001,
     ESTIMATE = 0x0002,
     NO_DFT_R2HC = 0x0004,
     NO_SLOW = 0x0008,
     NO_VRECURSE = 0x0010,
     NO_INDIRECT_OP = 0x0020,
     NO_LARGE_GENERIC = 0x0040,
     NO_RANK_SPLITS = 0x0080,
     NO_VRANK_SPLITS = 0x0100,
     NO_NONTHREADED = 0x0200,
     NO_BUFFERING = 0x0400,
     NO_FIXED_RADIX_LARGE_N = 0x0800,
     NO_DESTROY_INPUT = 0x1000,
     NO_SIMD = 0x2000,
     CONSERVE_MEMORY = 0x4000,
     NO_DHT_R2HC = 0x8000,
     NO_UGLY = 0x10000,
     ALLOW_PRUNING = 0x20000
};


enum {
     BLESSING = 0x1,
     H_VALID = 0x2,
     H_LIVE = 0x4
};
# 650 "../../../kernel/ifftw.h"
typedef enum { FORGET_ACCURSED, FORGET_EVERYTHING } amnesia;

typedef enum {

     WISDOM_NORMAL,


     WISDOM_ONLY,


     WISDOM_IS_BOGUS,


     WISDOM_IGNORE_INFEASIBLE,


     WISDOM_IGNORE_ALL
} wisdom_state_t;

typedef struct {
     void (*register_solver)(planner *ego, solver *s);
     plan *(*mkplan)(planner *ego, const problem *p);
     void (*forget)(planner *ego, amnesia a);
     void (*exprt)(planner *ego, printer *p);

     int (*imprt)(planner *ego, scanner *sc);
} planner_adt;


typedef struct {
     solution *solutions;
     unsigned hashsiz, nelem;


     int lookup, succ_lookup, lookup_iter;
     int insert, insert_iter, insert_unknown;
     int nrehash;
} hashtab;

typedef enum { COST_SUM, COST_MAX } cost_kind;

struct planner_s {
     const planner_adt *adt;
     void (*hook)(struct planner_s *plnr, plan *pln,
    const problem *p, int optimalp);
     double (*cost_hook)(const problem *p, double t, cost_kind k);


     slvdesc *slvdescs;
     unsigned nslvdesc, slvdescsiz;
     const char *cur_reg_nam;
     int cur_reg_id;
     int slvdescs_for_problem_kind[PROBLEM_LAST];

     wisdom_state_t wisdom_state;

     hashtab htab_blessed;
     hashtab htab_unblessed;

     int nthr;
     flags_t flags;

     crude_time start_time;
     double timelimit;
     int timed_out;
     int need_timeout_check;


     int nplan;
     double pcost, epcost;
     int nprob;
};

planner *fftwf_mkplanner(void);
void fftwf_planner_destroy(planner *ego);
# 761 "../../../kernel/ifftw.h"
plan *fftwf_mkplan_d(planner *ego, problem *p);
plan *fftwf_mkplan_f_d(planner *ego, problem *p,
      unsigned l_set, unsigned u_set, unsigned u_reset);
# 773 "../../../kernel/ifftw.h"
extern const INT fftwf_an_INT_guaranteed_to_be_zero;
# 785 "../../../kernel/ifftw.h"
typedef INT stride;
# 803 "../../../kernel/ifftw.h"
struct solvtab_s { void (*reg)(planner *); const char *reg_nam; };
typedef struct solvtab_s solvtab[];
void fftwf_solvtab_exec(const solvtab tbl, planner *p);





int fftwf_pickdim(int which_dim, const int *buddies, int nbuddies,
        const tensor *sz, int oop, int *dp);




enum { TW_COS = 0, TW_SIN = 1, TW_CEXP = 2, TW_NEXT = 3,
       TW_FULL = 4, TW_HALF = 5 };

typedef struct {
     unsigned char op;
     signed char v;
     short i;
} tw_instr;

typedef struct twid_s {
     R *W;
     INT n, r, m;
     int refcnt;
     const tw_instr *instr;
     struct twid_s *cdr;
     enum wakefulness wakefulness;
} twid;

INT fftwf_twiddle_length(INT r, const tw_instr *p);
void fftwf_twiddle_awake(enum wakefulness wakefulness,
        twid **pp, const tw_instr *instr, INT n, INT r, INT m);






   typedef double trigreal;


typedef struct triggen_s triggen;

struct triggen_s {
     void (*cexp)(triggen *t, INT m, R *result);
     void (*cexpl)(triggen *t, INT m, trigreal *result);
     void (*rotate)(triggen *p, INT m, R xr, R xi, R *res);

     INT twshft;
     INT twradix;
     INT twmsk;
     trigreal *W0, *W1;
     INT n;
};

triggen *fftwf_mktriggen(enum wakefulness wakefulness, INT n);
void fftwf_triggen_destroy(triggen *p);







INT fftwf_safe_mulmod(INT x, INT y, INT p);
INT fftwf_power_mod(INT n, INT m, INT p);
INT fftwf_find_generator(INT p);
INT fftwf_first_divisor(INT n);
int fftwf_is_prime(INT n);
INT fftwf_next_prime(INT n);
int fftwf_factors_into(INT n, const INT *primes);
INT fftwf_choose_radix(INT r, INT n);
INT fftwf_isqrt(INT n);
INT fftwf_modulo(INT a, INT n);





typedef struct rader_tls rader_tl;

void fftwf_rader_tl_insert(INT k1, INT k2, INT k3, R *W, rader_tl **tl);
R *fftwf_rader_tl_find(INT k1, INT k2, INT k3, rader_tl *t);
void fftwf_rader_tl_delete(R *W, rader_tl **tl);







INT fftwf_compute_tilesz(INT vl, int how_many_tiles_in_cache);

void fftwf_tile2d(INT n0l, INT n0u, INT n1l, INT n1u, INT tilesz,
        void (*f)(INT n0l, INT n0u, INT n1l, INT n1u, void *args),
        void *args);
void fftwf_cpy1d(R *I, R *O, INT n0, INT is0, INT os0, INT vl);
void fftwf_cpy2d(R *I, R *O,
       INT n0, INT is0, INT os0,
       INT n1, INT is1, INT os1,
       INT vl);
void fftwf_cpy2d_ci(R *I, R *O,
   INT n0, INT is0, INT os0,
   INT n1, INT is1, INT os1,
   INT vl);
void fftwf_cpy2d_co(R *I, R *O,
   INT n0, INT is0, INT os0,
   INT n1, INT is1, INT os1,
   INT vl);
void fftwf_cpy2d_tiled(R *I, R *O,
      INT n0, INT is0, INT os0,
      INT n1, INT is1, INT os1,
      INT vl);
void fftwf_cpy2d_tiledbuf(R *I, R *O,
         INT n0, INT is0, INT os0,
         INT n1, INT is1, INT os1,
         INT vl);
void fftwf_cpy2d_pair(R *I0, R *I1, R *O0, R *O1,
     INT n0, INT is0, INT os0,
     INT n1, INT is1, INT os1);
void fftwf_cpy2d_pair_ci(R *I0, R *I1, R *O0, R *O1,
        INT n0, INT is0, INT os0,
        INT n1, INT is1, INT os1);
void fftwf_cpy2d_pair_co(R *I0, R *I1, R *O0, R *O1,
        INT n0, INT is0, INT os0,
        INT n1, INT is1, INT os1);

void fftwf_transpose(R *I, INT n, INT s0, INT s1, INT vl);
void fftwf_transpose_tiled(R *I, INT n, INT s0, INT s1, INT vl);
void fftwf_transpose_tiledbuf(R *I, INT n, INT s0, INT s1, INT vl);

typedef void (*transpose_func)(R *I, INT n, INT s0, INT s1, INT vl);
typedef void (*cpy2d_func)(R *I, R *O,
      INT n0, INT is0, INT os0,
      INT n1, INT is1, INT os1,
      INT vl);
# 952 "../../../kernel/ifftw.h"
void fftwf_null_awake(plan *ego, enum wakefulness wakefulness);
double fftwf_iestimate_cost(const planner *, const plan *, const problem *);

double fftwf_measure_execution_time(const planner *plnr,
     plan *pln, const problem *p);
int fftwf_alignment_of(R *p);
unsigned fftwf_hash(const char *s);
INT fftwf_nbuf(INT n, INT vl, INT maxnbuf);
int fftwf_nbuf_redundant(INT n, INT vl, int which,
        const INT *maxnbuf, int nmaxnbuf);
INT fftwf_bufdist(INT n, INT vl);
int fftwf_toobig(INT n);
int fftwf_ct_uglyp(INT min_n, INT v, INT n, INT r);


R *fftwf_taint(R *p, INT s);
R *fftwf_join_taint(R *p1, R *p2);
# 994 "../../../kernel/ifftw.h"
typedef R E;
# 31 "../../../dft/codelet-dft.h" 2






typedef struct kdft_desc_s kdft_desc;

typedef struct {
     int (*okp)(
   const kdft_desc *desc,
   const R *ri, const R *ii, const R *ro, const R *io,
   INT is, INT os, INT vl, INT ivs, INT ovs,
   const planner *plnr);
     INT vl;
} kdft_genus;

struct kdft_desc_s {
     INT sz;
     const char *nam;
     opcnt ops;
     const kdft_genus *genus;
     INT is;
     INT os;
     INT ivs;
     INT ovs;
};

typedef void (*kdft) (const R *ri, const R *ii, R *ro, R *io,
                      stride is, stride os, INT vl, INT ivs, INT ovs);
void fftwf_kdft_register(planner *p, kdft codelet, const kdft_desc *desc);


typedef struct ct_desc_s ct_desc;

typedef struct {
     int (*okp)(
   const struct ct_desc_s *desc,
   const R *rio, const R *iio,
   INT rs, INT vs, INT m, INT mb, INT me, INT ms,
   const planner *plnr);
     INT vl;
} ct_genus;

struct ct_desc_s {
     INT radix;
     const char *nam;
     const tw_instr *tw;
     const ct_genus *genus;
     opcnt ops;
     INT rs;
     INT vs;
     INT ms;
};

typedef void (*kdftw) (R *rioarray, R *iioarray, const R *W,
         stride ios, INT mb, INT me, INT ms);
void fftwf_kdft_dit_register(planner *p, kdftw codelet, const ct_desc *desc);
void fftwf_kdft_dif_register(planner *p, kdftw codelet, const ct_desc *desc);


typedef void (*kdftwsq) (R *rioarray, R *iioarray,
    const R *W, stride is, stride vs,
    INT mb, INT me, INT ms);
void fftwf_kdft_difsq_register(planner *p, kdftwsq codelet, const ct_desc *desc);


extern const solvtab fftwf_solvtab_dft_standard;


extern const solvtab fftwf_solvtab_dft_simd;
# 25 "n1fv_64.c" 2
# 770 "n1fv_64.c"
# 1 "../../../dft/simd/n1f.h" 1
# 21 "../../../dft/simd/n1f.h"
# 1 "../../../simd/simd.h" 1
# 44 "../../../simd/simd.h"
# 1 "../../../simd/simd-neon.h" 1
# 32 "../../../simd/simd-neon.h"
# 1 "../../../simd/arm_neon.h" 1
# 41 "../../../simd/arm_neon.h"
typedef __builtin_neon_qi int8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_hi int16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_si int32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_di int64x1_t;
typedef __builtin_neon_sf float32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_poly8 poly8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_poly16 poly16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_uqi uint8x8_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_uhi uint16x4_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_usi uint32x2_t __attribute__ ((__vector_size__ (8)));
typedef __builtin_neon_udi uint64x1_t;
typedef __builtin_neon_qi int8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_hi int16x8_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_si int32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_di int64x2_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_sf float32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_poly8 poly8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_poly16 poly16x8_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_uqi uint8x16_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_uhi uint16x8_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_usi uint32x4_t __attribute__ ((__vector_size__ (16)));
typedef __builtin_neon_udi uint64x2_t __attribute__ ((__vector_size__ (16)));

typedef __builtin_neon_sf float32_t;
typedef __builtin_neon_poly8 poly8_t;
typedef __builtin_neon_poly16 poly16_t;

typedef struct int8x8x2_t
{
  int8x8_t val[2];
} int8x8x2_t;

typedef struct int8x16x2_t
{
  int8x16_t val[2];
} int8x16x2_t;

typedef struct int16x4x2_t
{
  int16x4_t val[2];
} int16x4x2_t;

typedef struct int16x8x2_t
{
  int16x8_t val[2];
} int16x8x2_t;

typedef struct int32x2x2_t
{
  int32x2_t val[2];
} int32x2x2_t;

typedef struct int32x4x2_t
{
  int32x4_t val[2];
} int32x4x2_t;

typedef struct int64x1x2_t
{
  int64x1_t val[2];
} int64x1x2_t;

typedef struct int64x2x2_t
{
  int64x2_t val[2];
} int64x2x2_t;

typedef struct uint8x8x2_t
{
  uint8x8_t val[2];
} uint8x8x2_t;

typedef struct uint8x16x2_t
{
  uint8x16_t val[2];
} uint8x16x2_t;

typedef struct uint16x4x2_t
{
  uint16x4_t val[2];
} uint16x4x2_t;

typedef struct uint16x8x2_t
{
  uint16x8_t val[2];
} uint16x8x2_t;

typedef struct uint32x2x2_t
{
  uint32x2_t val[2];
} uint32x2x2_t;

typedef struct uint32x4x2_t
{
  uint32x4_t val[2];
} uint32x4x2_t;

typedef struct uint64x1x2_t
{
  uint64x1_t val[2];
} uint64x1x2_t;

typedef struct uint64x2x2_t
{
  uint64x2_t val[2];
} uint64x2x2_t;

typedef struct float32x2x2_t
{
  float32x2_t val[2];
} float32x2x2_t;

typedef struct float32x4x2_t
{
  float32x4_t val[2];
} float32x4x2_t;

typedef struct poly8x8x2_t
{
  poly8x8_t val[2];
} poly8x8x2_t;

typedef struct poly8x16x2_t
{
  poly8x16_t val[2];
} poly8x16x2_t;

typedef struct poly16x4x2_t
{
  poly16x4_t val[2];
} poly16x4x2_t;

typedef struct poly16x8x2_t
{
  poly16x8_t val[2];
} poly16x8x2_t;

typedef struct int8x8x3_t
{
  int8x8_t val[3];
} int8x8x3_t;

typedef struct int8x16x3_t
{
  int8x16_t val[3];
} int8x16x3_t;

typedef struct int16x4x3_t
{
  int16x4_t val[3];
} int16x4x3_t;

typedef struct int16x8x3_t
{
  int16x8_t val[3];
} int16x8x3_t;

typedef struct int32x2x3_t
{
  int32x2_t val[3];
} int32x2x3_t;

typedef struct int32x4x3_t
{
  int32x4_t val[3];
} int32x4x3_t;

typedef struct int64x1x3_t
{
  int64x1_t val[3];
} int64x1x3_t;

typedef struct int64x2x3_t
{
  int64x2_t val[3];
} int64x2x3_t;

typedef struct uint8x8x3_t
{
  uint8x8_t val[3];
} uint8x8x3_t;

typedef struct uint8x16x3_t
{
  uint8x16_t val[3];
} uint8x16x3_t;

typedef struct uint16x4x3_t
{
  uint16x4_t val[3];
} uint16x4x3_t;

typedef struct uint16x8x3_t
{
  uint16x8_t val[3];
} uint16x8x3_t;

typedef struct uint32x2x3_t
{
  uint32x2_t val[3];
} uint32x2x3_t;

typedef struct uint32x4x3_t
{
  uint32x4_t val[3];
} uint32x4x3_t;

typedef struct uint64x1x3_t
{
  uint64x1_t val[3];
} uint64x1x3_t;

typedef struct uint64x2x3_t
{
  uint64x2_t val[3];
} uint64x2x3_t;

typedef struct float32x2x3_t
{
  float32x2_t val[3];
} float32x2x3_t;

typedef struct float32x4x3_t
{
  float32x4_t val[3];
} float32x4x3_t;

typedef struct poly8x8x3_t
{
  poly8x8_t val[3];
} poly8x8x3_t;

typedef struct poly8x16x3_t
{
  poly8x16_t val[3];
} poly8x16x3_t;

typedef struct poly16x4x3_t
{
  poly16x4_t val[3];
} poly16x4x3_t;

typedef struct poly16x8x3_t
{
  poly16x8_t val[3];
} poly16x8x3_t;

typedef struct int8x8x4_t
{
  int8x8_t val[4];
} int8x8x4_t;

typedef struct int8x16x4_t
{
  int8x16_t val[4];
} int8x16x4_t;

typedef struct int16x4x4_t
{
  int16x4_t val[4];
} int16x4x4_t;

typedef struct int16x8x4_t
{
  int16x8_t val[4];
} int16x8x4_t;

typedef struct int32x2x4_t
{
  int32x2_t val[4];
} int32x2x4_t;

typedef struct int32x4x4_t
{
  int32x4_t val[4];
} int32x4x4_t;

typedef struct int64x1x4_t
{
  int64x1_t val[4];
} int64x1x4_t;

typedef struct int64x2x4_t
{
  int64x2_t val[4];
} int64x2x4_t;

typedef struct uint8x8x4_t
{
  uint8x8_t val[4];
} uint8x8x4_t;

typedef struct uint8x16x4_t
{
  uint8x16_t val[4];
} uint8x16x4_t;

typedef struct uint16x4x4_t
{
  uint16x4_t val[4];
} uint16x4x4_t;

typedef struct uint16x8x4_t
{
  uint16x8_t val[4];
} uint16x8x4_t;

typedef struct uint32x2x4_t
{
  uint32x2_t val[4];
} uint32x2x4_t;

typedef struct uint32x4x4_t
{
  uint32x4_t val[4];
} uint32x4x4_t;

typedef struct uint64x1x4_t
{
  uint64x1_t val[4];
} uint64x1x4_t;

typedef struct uint64x2x4_t
{
  uint64x2_t val[4];
} uint64x2x4_t;

typedef struct float32x2x4_t
{
  float32x2_t val[4];
} float32x2x4_t;

typedef struct float32x4x4_t
{
  float32x4_t val[4];
} float32x4x4_t;

typedef struct poly8x8x4_t
{
  poly8x8_t val[4];
} poly8x8x4_t;

typedef struct poly8x16x4_t
{
  poly8x16_t val[4];
} poly8x16x4_t;

typedef struct poly16x4x4_t
{
  poly16x4_t val[4];
} poly16x4x4_t;

typedef struct poly16x8x4_t
{
  poly16x8_t val[4];
} poly16x8x4_t;


__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vadd_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vadddi (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vadd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vaddv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vadd_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vadddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddv2di (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vaddq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vaddv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddlv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddlv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddlv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddlv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddlv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddlv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vaddw_s8 (int16x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vaddwv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vaddw_s16 (int32x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vaddwv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vaddw_s32 (int64x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vaddwv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vaddw_u8 (uint16x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vaddwv8qi ((int16x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vaddw_u16 (uint32x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vaddwv4hi ((int32x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vaddw_u32 (uint64x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vaddwv2si ((int64x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vhadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vhadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vhadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhaddv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vhadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vhadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vhadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vhaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vhaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vhaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhaddv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vhaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vhaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vhaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrhadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhaddv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrhadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhaddv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrhadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhaddv2si (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrhadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrhadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrhadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhaddv2si ((int32x2_t) __a, (int32x2_t) __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrhaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhaddv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrhaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhaddv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrhaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhaddv4si (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrhaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrhaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrhaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhaddv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqaddv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqadd_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqadddi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqadd_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqadddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqaddq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqaddv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqaddq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqaddv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqaddq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqaddv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqaddq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqaddv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqaddq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqaddv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqaddq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqaddv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqaddq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqaddv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqaddq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqaddv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vaddhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddhnv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vaddhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddhnv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vaddhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddhnv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vaddhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vaddhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddhnv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vaddhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddhnv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vraddhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vaddhnv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vraddhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vaddhnv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vraddhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vaddhnv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vraddhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vaddhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vraddhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vaddhnv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vraddhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vaddhnv2di ((int64x2_t) __a, (int64x2_t) __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmul_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vmulv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vmulv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vmulv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vmulv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmul_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vmulv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vmulv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vmulv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmul_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly8x8_t)__builtin_neon_vmulv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmulq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vmulv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmulv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmulv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vmulv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmulq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vmulv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmulv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmulv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmulq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (poly8x16_t)__builtin_neon_vmulv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulhv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulhv2si (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulhv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulhv4si (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulhv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulhv2si (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulhv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulhv4si (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmull_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmullv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmullv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vmullv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmull_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmullv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmullv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vmullv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vmull_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly16x8_t)__builtin_neon_vmullv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmullv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqdmullv2si (__a, __b, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmla_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vmlav8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vmlav4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vmlav2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vmlav2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmla_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vmlav8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vmlav4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vmlav2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmlaq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vmlav16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlav8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlav4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_f32 (float32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vmlav4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmlaq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vmlav16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlav8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlav4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlal_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlalv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vmlalv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlal_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlalv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlalv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlalv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlalv2si (__a, __b, __c, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmls_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vmlsv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vmlsv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vmlsv2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vmlsv2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmls_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vmlsv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vmlsv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vmlsv2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmlsq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vmlsv16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlsv8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlsv4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_f32 (float32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vmlsv4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmlsq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vmlsv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlsv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlsv4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsl_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vmlslv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vmlslv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vmlslv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsl_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vmlslv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlslv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlslv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlslv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlslv2si (__a, __b, __c, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsub_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vsubdi (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vsub_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vsubv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsub_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vsubdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsubv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsubv2di (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vsubq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vsubv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsubv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsublv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsublv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsublv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsublv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsublv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsublv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsubw_s8 (int16x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vsubwv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsubw_s16 (int32x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vsubwv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsubw_s32 (int64x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vsubwv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsubw_u8 (uint16x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vsubwv8qi ((int16x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsubw_u16 (uint32x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vsubwv4hi ((int32x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsubw_u32 (uint64x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vsubwv2si ((int64x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vhsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vhsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vhsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vhsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vhsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vhsubv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vhsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vhsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vhsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vhsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vhsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vhsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vhsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vhsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vhsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vhsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vhsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vhsubv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vhsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vhsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vhsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vhsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vhsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vhsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqsub_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqsubv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqsub_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqsubv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqsub_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqsubv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqsub_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqsubdi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqsub_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqsubv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqsub_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqsubv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqsub_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqsubv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqsub_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqsubdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqsubq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqsubv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqsubq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqsubv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqsubq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqsubv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqsubq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqsubv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqsubq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqsubv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqsubq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqsubv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqsubq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqsubv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqsubq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqsubv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsubhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubhnv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsubhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubhnv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsubhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubhnv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsubhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsubhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubhnv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsubhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubhnv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrsubhn_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int8x8_t)__builtin_neon_vsubhnv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrsubhn_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int16x4_t)__builtin_neon_vsubhnv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrsubhn_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int32x2_t)__builtin_neon_vsubhnv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrsubhn_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vsubhnv8hi ((int16x8_t) __a, (int16x8_t) __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrsubhn_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vsubhnv4si ((int32x4_t) __a, (int32x4_t) __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsubhn_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vsubhnv2di ((int64x2_t) __a, (int64x2_t) __b, 4);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vceq_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vceqv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vceq_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vceqv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vceq_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vceqv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vceq_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vceqv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vceqq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vceqv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vceqq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vceqv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vceqq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vceqv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vceqq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vceqv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcge_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcge_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcge_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcge_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcge_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgeq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgeq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgeq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgeq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgeq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcle_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi (__b, __a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcle_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcle_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgev8qi ((int8x8_t) __b, (int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcle_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgev4hi ((int16x4_t) __b, (int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcle_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgev2si ((int32x2_t) __b, (int32x2_t) __a, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcleq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi (__b, __a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcleq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4sf (__b, __a, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcleq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgev16qi ((int8x16_t) __b, (int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcleq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgev8hi ((int16x8_t) __b, (int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcleq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgev4si ((int32x4_t) __b, (int32x4_t) __a, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcgt_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcgt_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcgt_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcgt_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcgt_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgtq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgtq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcgtq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcgtq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcgtq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclt_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi (__b, __a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclt_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si (__b, __a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclt_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vcgtv8qi ((int8x8_t) __b, (int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclt_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vcgtv4hi ((int16x4_t) __b, (int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclt_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcgtv2si ((int32x2_t) __b, (int32x2_t) __a, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcltq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi (__b, __a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcltq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si (__b, __a, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4sf (__b, __a, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcltq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vcgtv16qi ((int8x16_t) __b, (int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcltq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vcgtv8hi ((int16x8_t) __b, (int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcltq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcgtv4si ((int32x4_t) __b, (int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcage_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagev2sf (__a, __b, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcageq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagev4sf (__a, __b, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcale_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagev2sf (__b, __a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcaleq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagev4sf (__b, __a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcagt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagtv2sf (__a, __b, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcagtq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagtv4sf (__a, __b, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcalt_f32 (float32x2_t __a, float32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vcagtv2sf (__b, __a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcaltq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vcagtv4sf (__b, __a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_s8 (int8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vtst_s16 (int16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vtstv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vtst_s32 (int32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vtstv2si (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vtst_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vtstv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vtst_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vtstv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtst_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtstv8qi ((int8x8_t) __a, (int8x8_t) __b, 2);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vtstq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vtstv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vtstq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vtstv4si (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vtstq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vtstv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vtstq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vtstv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vtstq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vtstv16qi ((int8x16_t) __a, (int8x16_t) __b, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vabd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vabdv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vabd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vabdv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vabd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vabdv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vabd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vabdv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vabd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vabdv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vabd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vabdv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vabd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vabdv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabdq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vabdv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabdq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vabdv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabdq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vabdv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vabdq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vabdv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vabdq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vabdv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabdq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vabdv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabdq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vabdv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabdl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int16x8_t)__builtin_neon_vabdlv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabdl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int32x4_t)__builtin_neon_vabdlv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vabdl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int64x2_t)__builtin_neon_vabdlv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabdl_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vabdlv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabdl_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vabdlv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vabdl_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vabdlv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vaba_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vabav8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vaba_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vabav4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vaba_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vabav2si (__a, __b, __c, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vaba_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vabav8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vaba_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vabav4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vaba_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vabav2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabaq_s8 (int8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vabav16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabaq_s16 (int16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vabav8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabaq_s32 (int32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vabav4si (__a, __b, __c, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vabaq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vabav16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabaq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vabav8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabaq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vabav4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabal_s8 (int16x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int16x8_t)__builtin_neon_vabalv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabal_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int32x4_t)__builtin_neon_vabalv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vabal_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int64x2_t)__builtin_neon_vabalv2si (__a, __b, __c, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vabal_u8 (uint16x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vabalv8qi ((int16x8_t) __a, (int8x8_t) __b, (int8x8_t) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vabal_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vabalv4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vabal_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vabalv2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmax_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vmaxv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmax_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vmaxv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmax_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vmaxv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmax_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vmaxv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmax_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vmaxv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmax_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vmaxv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmax_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vmaxv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmaxq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vmaxv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmaxq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vmaxv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmaxq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vmaxv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmaxq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vmaxv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmaxq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vmaxv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmaxq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vmaxv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmaxq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vmaxv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmin_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vminv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmin_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vminv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmin_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vminv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmin_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vminv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmin_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vminv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmin_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vminv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmin_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vminv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vminq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vminv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vminq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vminv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vminq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vminv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vminq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vminv4sf (__a, __b, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vminq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vminv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vminq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vminv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vminq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vminv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpadd_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpaddv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpadd_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpaddv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpadd_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpaddv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpadd_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpaddv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpadd_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpaddv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpadd_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpaddv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpadd_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpaddv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpaddl_s8 (int8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vpaddlv8qi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpaddl_s16 (int16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vpaddlv4hi (__a, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vpaddl_s32 (int32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vpaddlv2si (__a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpaddl_u8 (uint8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vpaddlv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpaddl_u16 (uint16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vpaddlv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vpaddl_u32 (uint32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vpaddlv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vpaddlq_s8 (int8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vpaddlv16qi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vpaddlq_s16 (int16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vpaddlv8hi (__a, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vpaddlq_s32 (int32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vpaddlv4si (__a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vpaddlq_u8 (uint8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vpaddlv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vpaddlq_u16 (uint16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vpaddlv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vpaddlq_u32 (uint32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vpaddlv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpadal_s8 (int16x4_t __a, int8x8_t __b)
{
  return (int16x4_t)__builtin_neon_vpadalv8qi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpadal_s16 (int32x2_t __a, int16x4_t __b)
{
  return (int32x2_t)__builtin_neon_vpadalv4hi (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vpadal_s32 (int64x1_t __a, int32x2_t __b)
{
  return (int64x1_t)__builtin_neon_vpadalv2si (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpadal_u8 (uint16x4_t __a, uint8x8_t __b)
{
  return (uint16x4_t)__builtin_neon_vpadalv8qi ((int16x4_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpadal_u16 (uint32x2_t __a, uint16x4_t __b)
{
  return (uint32x2_t)__builtin_neon_vpadalv4hi ((int32x2_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vpadal_u32 (uint64x1_t __a, uint32x2_t __b)
{
  return (uint64x1_t)__builtin_neon_vpadalv2si ((int64x1_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vpadalq_s8 (int16x8_t __a, int8x16_t __b)
{
  return (int16x8_t)__builtin_neon_vpadalv16qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vpadalq_s16 (int32x4_t __a, int16x8_t __b)
{
  return (int32x4_t)__builtin_neon_vpadalv8hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vpadalq_s32 (int64x2_t __a, int32x4_t __b)
{
  return (int64x2_t)__builtin_neon_vpadalv4si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vpadalq_u8 (uint16x8_t __a, uint8x16_t __b)
{
  return (uint16x8_t)__builtin_neon_vpadalv16qi ((int16x8_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vpadalq_u16 (uint32x4_t __a, uint16x8_t __b)
{
  return (uint32x4_t)__builtin_neon_vpadalv8hi ((int32x4_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vpadalq_u32 (uint64x2_t __a, uint32x4_t __b)
{
  return (uint64x2_t)__builtin_neon_vpadalv4si ((int64x2_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpmax_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpmaxv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpmax_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpmaxv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpmax_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpmaxv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpmax_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpmaxv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpmax_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpmaxv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpmax_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpmaxv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpmax_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpmaxv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vpmin_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vpminv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vpmin_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vpminv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vpmin_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vpminv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vpmin_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vpminv2sf (__a, __b, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vpmin_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vpminv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vpmin_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vpminv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vpmin_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vpminv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrecps_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vrecpsv2sf (__a, __b, 3);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrecpsq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vrecpsv4sf (__a, __b, 3);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrsqrts_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x2_t)__builtin_neon_vrsqrtsv2sf (__a, __b, 3);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrsqrtsq_f32 (float32x4_t __a, float32x4_t __b)
{
  return (float32x4_t)__builtin_neon_vrsqrtsv4sf (__a, __b, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vshlv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vshlv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vshlv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vshldi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vshlv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vshlv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vshlv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vshldi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vshlv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vshlv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vshlv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vshlv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vshlv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vshlv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vshlv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vshlv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vshlv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vshlv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vshlv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vshldi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vshlv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vshlv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vshlv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vshldi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vshlv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vshlv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vshlv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vshlv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vshlv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vshlv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vshlv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vshlv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqshlv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqshlv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqshlv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqshldi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqshlv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqshlv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqshlv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqshldi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqshlv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqshlv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqshlv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqshlv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqshlv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqshlv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqshlv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqshlv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqrshl_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vqshlv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrshl_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vqshlv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrshl_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vqshlv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqrshl_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vqshldi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshl_u8 (uint8x8_t __a, int8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vqshlv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshl_u16 (uint16x4_t __a, int16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vqshlv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshl_u32 (uint32x2_t __a, int32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vqshlv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqrshl_u64 (uint64x1_t __a, int64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vqshldi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqrshlq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vqshlv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrshlq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vqshlv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrshlq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vqshlv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqrshlq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vqshlv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqrshlq_u8 (uint8x16_t __a, int8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vqshlv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqrshlq_u16 (uint16x8_t __a, int16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vqshlv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqrshlq_u32 (uint32x4_t __a, int32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vqshlv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqrshlq_u64 (uint64x2_t __a, int64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vqshlv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshr_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshr_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshr_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshr_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshr_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshr_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshr_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshr_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshr_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshr_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshr_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshr_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshr_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshr_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshr_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshr_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshrq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshr_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshrq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshr_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshrq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshr_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshrq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshr_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshrq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshr_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshrq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshr_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshrq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshr_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshrq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshr_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshr_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshr_nv8qi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshr_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshr_nv4hi (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshr_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshr_nv2si (__a, __b, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrshr_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshr_ndi (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshr_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshr_nv8qi ((int8x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshr_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshr_nv4hi ((int16x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshr_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshr_nv2si ((int32x2_t) __a, __b, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrshr_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshr_ndi ((int64x1_t) __a, __b, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrshrq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshr_nv16qi (__a, __b, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrshrq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshr_nv8hi (__a, __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrshrq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshr_nv4si (__a, __b, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrshrq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshr_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrshrq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshr_nv16qi ((int8x16_t) __a, __b, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrshrq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshr_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrshrq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshr_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrshrq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshr_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshrn_nv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshrn_nv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshrn_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshrn_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshrn_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshrn_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshrn_nv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshrn_nv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshrn_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshrn_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshrn_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshrn_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshrn_nv8hi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshrn_nv4si (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshrn_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrn_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrn_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrn_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqrshrn_n_s16 (int16x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshrn_nv8hi (__a, __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrshrn_n_s32 (int32x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshrn_nv4si (__a, __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrshrn_n_s64 (int64x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshrn_nv2di (__a, __b, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshrn_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrn_nv8hi ((int16x8_t) __a, __b, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshrn_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrn_nv4si ((int32x4_t) __a, __b, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshrn_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrn_nv2di ((int64x2_t) __a, __b, 4);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshrun_n_s16 (int16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrun_nv8hi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshrun_n_s32 (int32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrun_nv4si (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshrun_n_s64 (int64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrun_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqrshrun_n_s16 (int16x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshrun_nv8hi (__a, __b, 5);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqrshrun_n_s32 (int32x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshrun_nv4si (__a, __b, 5);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqrshrun_n_s64 (int64x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshrun_nv2di (__a, __b, 5);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vshl_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vshl_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vshl_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vshl_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vshl_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vshl_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vshl_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vshl_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vshl_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vshl_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vshl_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vshl_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vshl_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vshl_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vshl_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vshl_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vshlq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vshl_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshlq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshl_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshlq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshl_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshlq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshl_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vshlq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vshl_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshlq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshl_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshlq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshl_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshlq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshl_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqshl_n_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vqshl_nv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqshl_n_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vqshl_nv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqshl_n_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vqshl_nv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vqshl_n_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vqshl_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshl_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshl_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshl_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshl_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshl_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshl_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshl_n_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vqshl_ndi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqshlq_n_s8 (int8x16_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vqshl_nv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqshlq_n_s16 (int16x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vqshl_nv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqshlq_n_s32 (int32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vqshl_nv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqshlq_n_s64 (int64x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vqshl_nv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshlq_n_u8 (uint8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vqshl_nv16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshlq_n_u16 (uint16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vqshl_nv8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshlq_n_u32 (uint32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vqshl_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshlq_n_u64 (uint64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vqshl_nv2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqshlu_n_s8 (int8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vqshlu_nv8qi (__a, __b, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqshlu_n_s16 (int16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vqshlu_nv4hi (__a, __b, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqshlu_n_s32 (int32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vqshlu_nv2si (__a, __b, 1);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vqshlu_n_s64 (int64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vqshlu_ndi (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vqshluq_n_s8 (int8x16_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vqshlu_nv16qi (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vqshluq_n_s16 (int16x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vqshlu_nv8hi (__a, __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vqshluq_n_s32 (int32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vqshlu_nv4si (__a, __b, 1);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vqshluq_n_s64 (int64x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vqshlu_nv2di (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vshll_n_s8 (int8x8_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vshll_nv8qi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vshll_n_s16 (int16x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vshll_nv4hi (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vshll_n_s32 (int32x2_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vshll_nv2si (__a, __b, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vshll_n_u8 (uint8x8_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vshll_nv8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vshll_n_u16 (uint16x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vshll_nv4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vshll_n_u32 (uint32x2_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vshll_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsra_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsra_nv8qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsra_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsra_nv4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsra_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsra_nv2si (__a, __b, __c, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsra_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsra_ndi (__a, __b, __c, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsra_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsra_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsra_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsra_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsra_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsra_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsra_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsra_ndi ((int64x1_t) __a, (int64x1_t) __b, __c, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsraq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsra_nv16qi (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsraq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsra_nv8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsraq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsra_nv4si (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsraq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsra_nv2di (__a, __b, __c, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsraq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsra_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsraq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsra_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsraq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsra_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsraq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsra_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrsra_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsra_nv8qi (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrsra_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsra_nv4hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrsra_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsra_nv2si (__a, __b, __c, 5);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vrsra_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsra_ndi (__a, __b, __c, 5);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrsra_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsra_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c, 4);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrsra_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsra_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 4);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsra_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsra_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c, 4);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vrsra_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsra_ndi ((int64x1_t) __a, (int64x1_t) __b, __c, 4);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrsraq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsra_nv16qi (__a, __b, __c, 5);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrsraq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsra_nv8hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrsraq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsra_nv4si (__a, __b, __c, 5);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vrsraq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsra_nv2di (__a, __b, __c, 5);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrsraq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsra_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c, 4);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrsraq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsra_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c, 4);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrsraq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsra_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c, 4);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vrsraq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsra_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c, 4);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsri_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsri_nv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsri_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsri_nv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsri_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsri_nv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsri_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsri_ndi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsri_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsri_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsri_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsri_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsri_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsri_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsri_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsri_ndi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vsri_n_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vsri_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vsri_n_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vsri_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsriq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsri_nv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsriq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsri_nv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsriq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsri_nv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsriq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsri_nv2di (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsriq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsri_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsriq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsri_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsriq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsri_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsriq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsri_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsriq_n_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vsri_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsriq_n_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vsri_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vsli_n_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vsli_nv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vsli_n_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vsli_nv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vsli_n_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vsli_nv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vsli_n_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vsli_ndi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vsli_n_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vsli_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vsli_n_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vsli_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vsli_n_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vsli_nv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vsli_n_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vsli_ndi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vsli_n_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vsli_nv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vsli_n_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vsli_nv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsliq_n_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vsli_nv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsliq_n_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vsli_nv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsliq_n_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vsli_nv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsliq_n_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vsli_nv2di (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsliq_n_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vsli_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsliq_n_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vsli_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsliq_n_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vsli_nv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsliq_n_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vsli_nv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsliq_n_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vsli_nv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsliq_n_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vsli_nv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vabs_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vabsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vabs_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vabsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vabs_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vabsv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vabs_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vabsv2sf (__a, 3);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vabsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vabsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vabsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vabsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vabsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vabsv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vabsq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vabsv4sf (__a, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqabs_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqabsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqabs_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqabsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqabs_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqabsv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqabsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vqabsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqabsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vqabsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqabsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vqabsv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vneg_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vnegv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vneg_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vnegv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vneg_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vnegv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vneg_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vnegv2sf (__a, 3);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vnegq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vnegv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vnegq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vnegv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vnegq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vnegv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vnegq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vnegv4sf (__a, 3);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqneg_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqnegv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqneg_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqnegv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqneg_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqnegv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vqnegq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vqnegv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqnegq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vqnegv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqnegq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vqnegv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmvn_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vmvnv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmvn_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vmvnv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmvn_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vmvnv2si (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmvn_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vmvnv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmvn_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vmvnv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmvn_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vmvnv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmvn_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vmvnv8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmvnq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vmvnv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmvnq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vmvnv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmvnq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vmvnv4si (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmvnq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vmvnv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmvnq_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vmvnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmvnq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vmvnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmvnq_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vmvnv16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcls_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vclsv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vcls_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vclsv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcls_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vclsv2si (__a, 1);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vclsq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vclsv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vclsq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vclsv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vclsq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vclsv4si (__a, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vclz_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vclzv8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vclz_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vclzv4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vclz_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vclzv2si (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vclz_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vclzv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vclz_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vclzv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vclz_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vclzv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vclzq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vclzv16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vclzq_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vclzv8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vclzq_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vclzv4si (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vclzq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vclzv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vclzq_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vclzv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vclzq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vclzv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcnt_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vcntv8qi (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcnt_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vcntv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vcnt_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vcntv8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vcntq_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vcntv16qi (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcntq_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vcntv16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vcntq_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vcntv16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrecpe_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vrecpev2sf (__a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrecpe_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vrecpev2si ((int32x2_t) __a, 0);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrecpeq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vrecpev4sf (__a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrecpeq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vrecpev4si ((int32x4_t) __a, 0);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrsqrte_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vrsqrtev2sf (__a, 3);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrsqrte_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vrsqrtev2si ((int32x2_t) __a, 0);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrsqrteq_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vrsqrtev4sf (__a, 3);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrsqrteq_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vrsqrtev4si ((int32x4_t) __a, 0);
}

__extension__ static __inline int8_t __attribute__ ((__always_inline__))
vget_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8_t)__builtin_neon_vget_lanev8qi (__a, __b, 1);
}

__extension__ static __inline int16_t __attribute__ ((__always_inline__))
vget_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16_t)__builtin_neon_vget_lanev4hi (__a, __b, 1);
}

__extension__ static __inline int32_t __attribute__ ((__always_inline__))
vget_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32_t)__builtin_neon_vget_lanev2si (__a, __b, 1);
}

__extension__ static __inline float32_t __attribute__ ((__always_inline__))
vget_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32_t)__builtin_neon_vget_lanev2sf (__a, __b, 3);
}

__extension__ static __inline uint8_t __attribute__ ((__always_inline__))
vget_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8_t)__builtin_neon_vget_lanev8qi ((int8x8_t) __a, __b, 0);
}

__extension__ static __inline uint16_t __attribute__ ((__always_inline__))
vget_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16_t)__builtin_neon_vget_lanev4hi ((int16x4_t) __a, __b, 0);
}

__extension__ static __inline uint32_t __attribute__ ((__always_inline__))
vget_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32_t)__builtin_neon_vget_lanev2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline poly8_t __attribute__ ((__always_inline__))
vget_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8_t)__builtin_neon_vget_lanev8qi ((int8x8_t) __a, __b, 2);
}

__extension__ static __inline poly16_t __attribute__ ((__always_inline__))
vget_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16_t)__builtin_neon_vget_lanev4hi ((int16x4_t) __a, __b, 2);
}

__extension__ static __inline int64_t __attribute__ ((__always_inline__))
vget_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64_t)__builtin_neon_vget_lanedi (__a, __b, 1);
}

__extension__ static __inline uint64_t __attribute__ ((__always_inline__))
vget_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64_t)__builtin_neon_vget_lanedi ((int64x1_t) __a, __b, 0);
}

__extension__ static __inline int8_t __attribute__ ((__always_inline__))
vgetq_lane_s8 (int8x16_t __a, const int __b)
{
  return (int8_t)__builtin_neon_vget_lanev16qi (__a, __b, 1);
}

__extension__ static __inline int16_t __attribute__ ((__always_inline__))
vgetq_lane_s16 (int16x8_t __a, const int __b)
{
  return (int16_t)__builtin_neon_vget_lanev8hi (__a, __b, 1);
}

__extension__ static __inline int32_t __attribute__ ((__always_inline__))
vgetq_lane_s32 (int32x4_t __a, const int __b)
{
  return (int32_t)__builtin_neon_vget_lanev4si (__a, __b, 1);
}

__extension__ static __inline float32_t __attribute__ ((__always_inline__))
vgetq_lane_f32 (float32x4_t __a, const int __b)
{
  return (float32_t)__builtin_neon_vget_lanev4sf (__a, __b, 3);
}

__extension__ static __inline uint8_t __attribute__ ((__always_inline__))
vgetq_lane_u8 (uint8x16_t __a, const int __b)
{
  return (uint8_t)__builtin_neon_vget_lanev16qi ((int8x16_t) __a, __b, 0);
}

__extension__ static __inline uint16_t __attribute__ ((__always_inline__))
vgetq_lane_u16 (uint16x8_t __a, const int __b)
{
  return (uint16_t)__builtin_neon_vget_lanev8hi ((int16x8_t) __a, __b, 0);
}

__extension__ static __inline uint32_t __attribute__ ((__always_inline__))
vgetq_lane_u32 (uint32x4_t __a, const int __b)
{
  return (uint32_t)__builtin_neon_vget_lanev4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline poly8_t __attribute__ ((__always_inline__))
vgetq_lane_p8 (poly8x16_t __a, const int __b)
{
  return (poly8_t)__builtin_neon_vget_lanev16qi ((int8x16_t) __a, __b, 2);
}

__extension__ static __inline poly16_t __attribute__ ((__always_inline__))
vgetq_lane_p16 (poly16x8_t __a, const int __b)
{
  return (poly16_t)__builtin_neon_vget_lanev8hi ((int16x8_t) __a, __b, 2);
}

__extension__ static __inline int64_t __attribute__ ((__always_inline__))
vgetq_lane_s64 (int64x2_t __a, const int __b)
{
  return (int64_t)__builtin_neon_vget_lanev2di (__a, __b, 1);
}

__extension__ static __inline uint64_t __attribute__ ((__always_inline__))
vgetq_lane_u64 (uint64x2_t __a, const int __b)
{
  return (uint64_t)__builtin_neon_vget_lanev2di ((int64x2_t) __a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vset_lane_s8 (int8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vset_lane_s16 (int16_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vset_lane_s32 (int32_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vset_lanev2si ((__builtin_neon_si) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vset_lane_f32 (float32_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vset_lanev2sf (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vset_lane_u8 (uint8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vset_lane_u16 (uint16_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vset_lane_u32 (uint32_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vset_lanev2si ((__builtin_neon_si) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vset_lane_p8 (poly8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vset_lanev8qi ((__builtin_neon_qi) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vset_lane_p16 (poly16_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vset_lanev4hi ((__builtin_neon_hi) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vset_lane_s64 (int64_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vset_lanedi ((__builtin_neon_di) __a, __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vset_lane_u64 (uint64_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vset_lanedi ((__builtin_neon_di) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vsetq_lane_s8 (int8_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vsetq_lane_s16 (int16_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vsetq_lane_s32 (int32_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vset_lanev4si ((__builtin_neon_si) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vsetq_lane_f32 (float32_t __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vset_lanev4sf (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vsetq_lane_u8 (uint8_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vsetq_lane_u16 (uint16_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vsetq_lane_u32 (uint32_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vset_lanev4si ((__builtin_neon_si) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vsetq_lane_p8 (poly8_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vset_lanev16qi ((__builtin_neon_qi) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vsetq_lane_p16 (poly16_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vset_lanev8hi ((__builtin_neon_hi) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vsetq_lane_s64 (int64_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vset_lanev2di ((__builtin_neon_di) __a, __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vsetq_lane_u64 (uint64_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vset_lanev2di ((__builtin_neon_di) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vcreate_s8 (uint64_t __a)
{
  return (int8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vcreate_s16 (uint64_t __a)
{
  return (int16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcreate_s32 (uint64_t __a)
{
  return (int32x2_t)__builtin_neon_vcreatev2si ((__builtin_neon_di) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vcreate_s64 (uint64_t __a)
{
  return (int64x1_t)__builtin_neon_vcreatedi ((__builtin_neon_di) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcreate_f32 (uint64_t __a)
{
  return (float32x2_t)__builtin_neon_vcreatev2sf ((__builtin_neon_di) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vcreate_u8 (uint64_t __a)
{
  return (uint8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vcreate_u16 (uint64_t __a)
{
  return (uint16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcreate_u32 (uint64_t __a)
{
  return (uint32x2_t)__builtin_neon_vcreatev2si ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vcreate_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vcreatedi ((__builtin_neon_di) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vcreate_p8 (uint64_t __a)
{
  return (poly8x8_t)__builtin_neon_vcreatev8qi ((__builtin_neon_di) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vcreate_p16 (uint64_t __a)
{
  return (poly16x4_t)__builtin_neon_vcreatev4hi ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vdup_n_s8 (int8_t __a)
{
  return (int8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vdup_n_s16 (int16_t __a)
{
  return (int16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vdup_n_s32 (int32_t __a)
{
  return (int32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vdup_n_f32 (float32_t __a)
{
  return (float32x2_t)__builtin_neon_vdup_nv2sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vdup_n_u8 (uint8_t __a)
{
  return (uint8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vdup_n_u16 (uint16_t __a)
{
  return (uint16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vdup_n_u32 (uint32_t __a)
{
  return (uint32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vdup_n_p8 (poly8_t __a)
{
  return (poly8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vdup_n_p16 (poly16_t __a)
{
  return (poly16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vdup_n_s64 (int64_t __a)
{
  return (int64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vdup_n_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vdupq_n_s8 (int8_t __a)
{
  return (int8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vdupq_n_s16 (int16_t __a)
{
  return (int16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vdupq_n_s32 (int32_t __a)
{
  return (int32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vdupq_n_f32 (float32_t __a)
{
  return (float32x4_t)__builtin_neon_vdup_nv4sf (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vdupq_n_u8 (uint8_t __a)
{
  return (uint8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vdupq_n_u16 (uint16_t __a)
{
  return (uint16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vdupq_n_u32 (uint32_t __a)
{
  return (uint32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vdupq_n_p8 (poly8_t __a)
{
  return (poly8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vdupq_n_p16 (poly16_t __a)
{
  return (poly16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vdupq_n_s64 (int64_t __a)
{
  return (int64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vdupq_n_u64 (uint64_t __a)
{
  return (uint64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmov_n_s8 (int8_t __a)
{
  return (int8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmov_n_s16 (int16_t __a)
{
  return (int16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmov_n_s32 (int32_t __a)
{
  return (int32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmov_n_f32 (float32_t __a)
{
  return (float32x2_t)__builtin_neon_vdup_nv2sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmov_n_u8 (uint8_t __a)
{
  return (uint8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmov_n_u16 (uint16_t __a)
{
  return (uint16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmov_n_u32 (uint32_t __a)
{
  return (uint32x2_t)__builtin_neon_vdup_nv2si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vmov_n_p8 (poly8_t __a)
{
  return (poly8x8_t)__builtin_neon_vdup_nv8qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vmov_n_p16 (poly16_t __a)
{
  return (poly16x4_t)__builtin_neon_vdup_nv4hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vmov_n_s64 (int64_t __a)
{
  return (int64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vmov_n_u64 (uint64_t __a)
{
  return (uint64x1_t)__builtin_neon_vdup_ndi ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vmovq_n_s8 (int8_t __a)
{
  return (int8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmovq_n_s16 (int16_t __a)
{
  return (int16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmovq_n_s32 (int32_t __a)
{
  return (int32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmovq_n_f32 (float32_t __a)
{
  return (float32x4_t)__builtin_neon_vdup_nv4sf (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vmovq_n_u8 (uint8_t __a)
{
  return (uint8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmovq_n_u16 (uint16_t __a)
{
  return (uint16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmovq_n_u32 (uint32_t __a)
{
  return (uint32x4_t)__builtin_neon_vdup_nv4si ((__builtin_neon_si) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vmovq_n_p8 (poly8_t __a)
{
  return (poly8x16_t)__builtin_neon_vdup_nv16qi ((__builtin_neon_qi) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vmovq_n_p16 (poly16_t __a)
{
  return (poly16x8_t)__builtin_neon_vdup_nv8hi ((__builtin_neon_hi) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmovq_n_s64 (int64_t __a)
{
  return (int64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmovq_n_u64 (uint64_t __a)
{
  return (uint64x2_t)__builtin_neon_vdup_nv2di ((__builtin_neon_di) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vdup_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8x8_t)__builtin_neon_vdup_lanev8qi (__a, __b);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vdup_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16x4_t)__builtin_neon_vdup_lanev4hi (__a, __b);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vdup_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vdup_lanev2si (__a, __b);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vdup_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vdup_lanev2sf (__a, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vdup_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x8_t)__builtin_neon_vdup_lanev8qi ((int8x8_t) __a, __b);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vdup_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x4_t)__builtin_neon_vdup_lanev4hi ((int16x4_t) __a, __b);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vdup_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vdup_lanev2si ((int32x2_t) __a, __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vdup_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8x8_t)__builtin_neon_vdup_lanev8qi ((int8x8_t) __a, __b);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vdup_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16x4_t)__builtin_neon_vdup_lanev4hi ((int16x4_t) __a, __b);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vdup_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64x1_t)__builtin_neon_vdup_lanedi (__a, __b);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vdup_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x1_t)__builtin_neon_vdup_lanedi ((int64x1_t) __a, __b);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vdupq_lane_s8 (int8x8_t __a, const int __b)
{
  return (int8x16_t)__builtin_neon_vdup_lanev16qi (__a, __b);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vdupq_lane_s16 (int16x4_t __a, const int __b)
{
  return (int16x8_t)__builtin_neon_vdup_lanev8hi (__a, __b);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vdupq_lane_s32 (int32x2_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vdup_lanev4si (__a, __b);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vdupq_lane_f32 (float32x2_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vdup_lanev4sf (__a, __b);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vdupq_lane_u8 (uint8x8_t __a, const int __b)
{
  return (uint8x16_t)__builtin_neon_vdup_lanev16qi ((int8x8_t) __a, __b);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vdupq_lane_u16 (uint16x4_t __a, const int __b)
{
  return (uint16x8_t)__builtin_neon_vdup_lanev8hi ((int16x4_t) __a, __b);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vdupq_lane_u32 (uint32x2_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vdup_lanev4si ((int32x2_t) __a, __b);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vdupq_lane_p8 (poly8x8_t __a, const int __b)
{
  return (poly8x16_t)__builtin_neon_vdup_lanev16qi ((int8x8_t) __a, __b);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vdupq_lane_p16 (poly16x4_t __a, const int __b)
{
  return (poly16x8_t)__builtin_neon_vdup_lanev8hi ((int16x4_t) __a, __b);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vdupq_lane_s64 (int64x1_t __a, const int __b)
{
  return (int64x2_t)__builtin_neon_vdup_lanev2di (__a, __b);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vdupq_lane_u64 (uint64x1_t __a, const int __b)
{
  return (uint64x2_t)__builtin_neon_vdup_lanev2di ((int64x1_t) __a, __b);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vcombine_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x16_t)__builtin_neon_vcombinev8qi (__a, __b);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vcombine_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x8_t)__builtin_neon_vcombinev4hi (__a, __b);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcombine_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x4_t)__builtin_neon_vcombinev2si (__a, __b);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vcombine_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x2_t)__builtin_neon_vcombinedi (__a, __b);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcombine_f32 (float32x2_t __a, float32x2_t __b)
{
  return (float32x4_t)__builtin_neon_vcombinev2sf (__a, __b);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vcombine_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x16_t)__builtin_neon_vcombinev8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vcombine_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x8_t)__builtin_neon_vcombinev4hi ((int16x4_t) __a, (int16x4_t) __b);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcombine_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x4_t)__builtin_neon_vcombinev2si ((int32x2_t) __a, (int32x2_t) __b);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vcombine_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x2_t)__builtin_neon_vcombinedi ((int64x1_t) __a, (int64x1_t) __b);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vcombine_p8 (poly8x8_t __a, poly8x8_t __b)
{
  return (poly8x16_t)__builtin_neon_vcombinev8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vcombine_p16 (poly16x4_t __a, poly16x4_t __b)
{
  return (poly16x8_t)__builtin_neon_vcombinev4hi ((int16x4_t) __a, (int16x4_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vget_high_s8 (int8x16_t __a)
{
  return (int8x8_t)__builtin_neon_vget_highv16qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vget_high_s16 (int16x8_t __a)
{
  return (int16x4_t)__builtin_neon_vget_highv8hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vget_high_s32 (int32x4_t __a)
{
  return (int32x2_t)__builtin_neon_vget_highv4si (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vget_high_s64 (int64x2_t __a)
{
  return (int64x1_t)__builtin_neon_vget_highv2di (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vget_high_f32 (float32x4_t __a)
{
  return (float32x2_t)__builtin_neon_vget_highv4sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vget_high_u8 (uint8x16_t __a)
{
  return (uint8x8_t)__builtin_neon_vget_highv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vget_high_u16 (uint16x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vget_highv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vget_high_u32 (uint32x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vget_highv4si ((int32x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vget_high_u64 (uint64x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vget_highv2di ((int64x2_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vget_high_p8 (poly8x16_t __a)
{
  return (poly8x8_t)__builtin_neon_vget_highv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vget_high_p16 (poly16x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vget_highv8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vget_low_s8 (int8x16_t __a)
{
  return (int8x8_t)__builtin_neon_vget_lowv16qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vget_low_s16 (int16x8_t __a)
{
  return (int16x4_t)__builtin_neon_vget_lowv8hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vget_low_s32 (int32x4_t __a)
{
  return (int32x2_t)__builtin_neon_vget_lowv4si (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vget_low_s64 (int64x2_t __a)
{
  return (int64x1_t)__builtin_neon_vget_lowv2di (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vget_low_f32 (float32x4_t __a)
{
  return (float32x2_t)__builtin_neon_vget_lowv4sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vget_low_u8 (uint8x16_t __a)
{
  return (uint8x8_t)__builtin_neon_vget_lowv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vget_low_u16 (uint16x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vget_lowv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vget_low_u32 (uint32x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vget_lowv4si ((int32x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vget_low_u64 (uint64x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vget_lowv2di ((int64x2_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vget_low_p8 (poly8x16_t __a)
{
  return (poly8x8_t)__builtin_neon_vget_lowv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vget_low_p16 (poly16x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vget_lowv8hi ((int16x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcvt_s32_f32 (float32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vcvtv2sf (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_f32_s32 (int32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vcvtv2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_f32_u32 (uint32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vcvtv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcvt_u32_f32 (float32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vcvtv2sf (__a, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcvtq_s32_f32 (float32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vcvtv4sf (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_f32_s32 (int32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vcvtv4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_f32_u32 (uint32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vcvtv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcvtq_u32_f32 (float32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vcvtv4sf (__a, 0);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vcvt_n_s32_f32 (float32x2_t __a, const int __b)
{
  return (int32x2_t)__builtin_neon_vcvt_nv2sf (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_n_f32_s32 (int32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vcvt_nv2si (__a, __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vcvt_n_f32_u32 (uint32x2_t __a, const int __b)
{
  return (float32x2_t)__builtin_neon_vcvt_nv2si ((int32x2_t) __a, __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vcvt_n_u32_f32 (float32x2_t __a, const int __b)
{
  return (uint32x2_t)__builtin_neon_vcvt_nv2sf (__a, __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vcvtq_n_s32_f32 (float32x4_t __a, const int __b)
{
  return (int32x4_t)__builtin_neon_vcvt_nv4sf (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_n_f32_s32 (int32x4_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vcvt_nv4si (__a, __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vcvtq_n_f32_u32 (uint32x4_t __a, const int __b)
{
  return (float32x4_t)__builtin_neon_vcvt_nv4si ((int32x4_t) __a, __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vcvtq_n_u32_f32 (float32x4_t __a, const int __b)
{
  return (uint32x4_t)__builtin_neon_vcvt_nv4sf (__a, __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vmovn_s16 (int16x8_t __a)
{
  return (int8x8_t)__builtin_neon_vmovnv8hi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmovn_s32 (int32x4_t __a)
{
  return (int16x4_t)__builtin_neon_vmovnv4si (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmovn_s64 (int64x2_t __a)
{
  return (int32x2_t)__builtin_neon_vmovnv2di (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vmovn_u16 (uint16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vmovnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmovn_u32 (uint32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vmovnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmovn_u64 (uint64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vmovnv2di ((int64x2_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vqmovn_s16 (int16x8_t __a)
{
  return (int8x8_t)__builtin_neon_vqmovnv8hi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqmovn_s32 (int32x4_t __a)
{
  return (int16x4_t)__builtin_neon_vqmovnv4si (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqmovn_s64 (int64x2_t __a)
{
  return (int32x2_t)__builtin_neon_vqmovnv2di (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqmovn_u16 (uint16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vqmovnv8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqmovn_u32 (uint32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vqmovnv4si ((int32x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqmovn_u64 (uint64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vqmovnv2di ((int64x2_t) __a, 0);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vqmovun_s16 (int16x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vqmovunv8hi (__a, 1);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vqmovun_s32 (int32x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vqmovunv4si (__a, 1);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vqmovun_s64 (int64x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vqmovunv2di (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmovl_s8 (int8x8_t __a)
{
  return (int16x8_t)__builtin_neon_vmovlv8qi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmovl_s16 (int16x4_t __a)
{
  return (int32x4_t)__builtin_neon_vmovlv4hi (__a, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmovl_s32 (int32x2_t __a)
{
  return (int64x2_t)__builtin_neon_vmovlv2si (__a, 1);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmovl_u8 (uint8x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vmovlv8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmovl_u16 (uint16x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vmovlv4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmovl_u32 (uint32x2_t __a)
{
  return (uint64x2_t)__builtin_neon_vmovlv2si ((int32x2_t) __a, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl1_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vtbl1v8qi (__a, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl1_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vtbl1v8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl1_p8 (poly8x8_t __a, uint8x8_t __b)
{
  return (poly8x8_t)__builtin_neon_vtbl1v8qi ((int8x8_t) __a, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl2_s8 (int8x8x2_t __a, int8x8_t __b)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl2_u8 (uint8x8x2_t __a, uint8x8_t __b)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl2_p8 (poly8x8x2_t __a, uint8x8_t __b)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl2v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl3_s8 (int8x8x3_t __a, int8x8_t __b)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl3_u8 (uint8x8x3_t __a, uint8x8_t __b)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl3_p8 (poly8x8x3_t __a, uint8x8_t __b)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl3v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbl4_s8 (int8x8x4_t __a, int8x8_t __b)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (int8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, __b);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbl4_u8 (uint8x8x4_t __a, uint8x8_t __b)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (uint8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbl4_p8 (poly8x8x4_t __a, uint8x8_t __b)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __au = { __a };
  return (poly8x8_t)__builtin_neon_vtbl4v8qi (__au.__o, (int8x8_t) __b);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx1_s8 (int8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vtbx1v8qi (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx1_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vtbx1v8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx1_p8 (poly8x8_t __a, poly8x8_t __b, uint8x8_t __c)
{
  return (poly8x8_t)__builtin_neon_vtbx1v8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx2_s8 (int8x8_t __a, int8x8x2_t __b, int8x8_t __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx2v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx2_u8 (uint8x8_t __a, uint8x8x2_t __b, uint8x8_t __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx2v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx2_p8 (poly8x8_t __a, poly8x8x2_t __b, uint8x8_t __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx2v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx3_s8 (int8x8_t __a, int8x8x3_t __b, int8x8_t __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx3v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx3_u8 (uint8x8_t __a, uint8x8x3_t __b, uint8x8_t __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx3v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx3_p8 (poly8x8_t __a, poly8x8x3_t __b, uint8x8_t __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx3v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vtbx4_s8 (int8x8_t __a, int8x8x4_t __b, int8x8_t __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (int8x8_t)__builtin_neon_vtbx4v8qi (__a, __bu.__o, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vtbx4_u8 (uint8x8_t __a, uint8x8x4_t __b, uint8x8_t __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (uint8x8_t)__builtin_neon_vtbx4v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vtbx4_p8 (poly8x8_t __a, poly8x8x4_t __b, uint8x8_t __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  return (poly8x8_t)__builtin_neon_vtbx4v8qi ((int8x8_t) __a, __bu.__o, (int8x8_t) __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vmul_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vmul_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_lane_f32 (float32x2_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vmul_lanev2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_lane_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vmul_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_lane_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vmul_lanev2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vmul_lanev8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vmul_lanev4si (__a, __b, __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_lane_f32 (float32x4_t __a, float32x2_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vmul_lanev4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_lane_u16 (uint16x8_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vmul_lanev8hi ((int16x8_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_lane_u32 (uint32x4_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vmul_lanev4si ((int32x4_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_lane_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int16x4_t)__builtin_neon_vmla_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_lane_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int32x2_t)__builtin_neon_vmla_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_lane_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c, const int __d)
{
  return (float32x2_t)__builtin_neon_vmla_lanev2sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_lane_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x4_t)__builtin_neon_vmla_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_lane_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x2_t)__builtin_neon_vmla_lanev2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_lane_s16 (int16x8_t __a, int16x8_t __b, int16x4_t __c, const int __d)
{
  return (int16x8_t)__builtin_neon_vmla_lanev8hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_s32 (int32x4_t __a, int32x4_t __b, int32x2_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmla_lanev4si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_f32 (float32x4_t __a, float32x4_t __b, float32x2_t __c, const int __d)
{
  return (float32x4_t)__builtin_neon_vmla_lanev4sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_lane_u16 (uint16x8_t __a, uint16x8_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x8_t)__builtin_neon_vmla_lanev8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_lane_u32 (uint32x4_t __a, uint32x4_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmla_lanev4si ((int32x4_t) __a, (int32x4_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmlal_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vmlal_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_lane_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmlal_lanev4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_lane_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint64x2_t)__builtin_neon_vmlal_lanev2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vqdmlal_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vqdmlal_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_lane_s16 (int16x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int16x4_t)__builtin_neon_vmls_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_lane_s32 (int32x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int32x2_t)__builtin_neon_vmls_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_lane_f32 (float32x2_t __a, float32x2_t __b, float32x2_t __c, const int __d)
{
  return (float32x2_t)__builtin_neon_vmls_lanev2sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_lane_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x4_t)__builtin_neon_vmls_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_lane_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x2_t)__builtin_neon_vmls_lanev2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_lane_s16 (int16x8_t __a, int16x8_t __b, int16x4_t __c, const int __d)
{
  return (int16x8_t)__builtin_neon_vmls_lanev8hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_s32 (int32x4_t __a, int32x4_t __b, int32x2_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmls_lanev4si (__a, __b, __c, __d, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_f32 (float32x4_t __a, float32x4_t __b, float32x2_t __c, const int __d)
{
  return (float32x4_t)__builtin_neon_vmls_lanev4sf (__a, __b, __c, __d, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_lane_u16 (uint16x8_t __a, uint16x8_t __b, uint16x4_t __c, const int __d)
{
  return (uint16x8_t)__builtin_neon_vmls_lanev8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_lane_u32 (uint32x4_t __a, uint32x4_t __b, uint32x2_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmls_lanev4si ((int32x4_t) __a, (int32x4_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vmlsl_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vmlsl_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_lane_u16 (uint32x4_t __a, uint16x4_t __b, uint16x4_t __c, const int __d)
{
  return (uint32x4_t)__builtin_neon_vmlsl_lanev4hi ((int32x4_t) __a, (int16x4_t) __b, (int16x4_t) __c, __d, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_lane_u32 (uint64x2_t __a, uint32x2_t __b, uint32x2_t __c, const int __d)
{
  return (uint64x2_t)__builtin_neon_vmlsl_lanev2si ((int64x2_t) __a, (int32x2_t) __b, (int32x2_t) __c, __d, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_lane_s16 (int32x4_t __a, int16x4_t __b, int16x4_t __c, const int __d)
{
  return (int32x4_t)__builtin_neon_vqdmlsl_lanev4hi (__a, __b, __c, __d, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_lane_s32 (int64x2_t __a, int32x2_t __b, int32x2_t __c, const int __d)
{
  return (int64x2_t)__builtin_neon_vqdmlsl_lanev2si (__a, __b, __c, __d, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vmull_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vmull_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_lane_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vmull_lanev4hi ((int16x4_t) __a, (int16x4_t) __b, __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_lane_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vmull_lanev2si ((int32x2_t) __a, (int32x2_t) __b, __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmull_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vqdmull_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vqdmulh_lanev8hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmulh_lanev4si (__a, __b, __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vqdmulh_lanev4hi (__a, __b, __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vqdmulh_lanev2si (__a, __b, __c, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_lane_s16 (int16x8_t __a, int16x4_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vqdmulh_lanev8hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_lane_s32 (int32x4_t __a, int32x2_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vqdmulh_lanev4si (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_lane_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vqdmulh_lanev4hi (__a, __b, __c, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_lane_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vqdmulh_lanev2si (__a, __b, __c, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmul_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vmul_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmul_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vmul_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmul_n_f32 (float32x2_t __a, float32_t __b)
{
  return (float32x2_t)__builtin_neon_vmul_nv2sf (__a, __b, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmul_n_u16 (uint16x4_t __a, uint16_t __b)
{
  return (uint16x4_t)__builtin_neon_vmul_nv4hi ((int16x4_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmul_n_u32 (uint32x2_t __a, uint32_t __b)
{
  return (uint32x2_t)__builtin_neon_vmul_nv2si ((int32x2_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmulq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vmul_nv8hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmulq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vmul_nv4si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmulq_n_f32 (float32x4_t __a, float32_t __b)
{
  return (float32x4_t)__builtin_neon_vmul_nv4sf (__a, __b, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmulq_n_u16 (uint16x8_t __a, uint16_t __b)
{
  return (uint16x8_t)__builtin_neon_vmul_nv8hi ((int16x8_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmulq_n_u32 (uint32x4_t __a, uint32_t __b)
{
  return (uint32x4_t)__builtin_neon_vmul_nv4si ((int32x4_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmull_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int32x4_t)__builtin_neon_vmull_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmull_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int64x2_t)__builtin_neon_vmull_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmull_n_u16 (uint16x4_t __a, uint16_t __b)
{
  return (uint32x4_t)__builtin_neon_vmull_nv4hi ((int16x4_t) __a, (__builtin_neon_hi) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmull_n_u32 (uint32x2_t __a, uint32_t __b)
{
  return (uint64x2_t)__builtin_neon_vmull_nv2si ((int32x2_t) __a, (__builtin_neon_si) __b, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmull_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmull_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmull_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int64x2_t)__builtin_neon_vqdmull_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqdmulhq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulh_nv8hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmulhq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulh_nv4si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqdmulh_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulh_nv4hi (__a, (__builtin_neon_hi) __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqdmulh_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulh_nv2si (__a, (__builtin_neon_si) __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vqrdmulhq_n_s16 (int16x8_t __a, int16_t __b)
{
  return (int16x8_t)__builtin_neon_vqdmulh_nv8hi (__a, (__builtin_neon_hi) __b, 5);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqrdmulhq_n_s32 (int32x4_t __a, int32_t __b)
{
  return (int32x4_t)__builtin_neon_vqdmulh_nv4si (__a, (__builtin_neon_si) __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vqrdmulh_n_s16 (int16x4_t __a, int16_t __b)
{
  return (int16x4_t)__builtin_neon_vqdmulh_nv4hi (__a, (__builtin_neon_hi) __b, 5);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vqrdmulh_n_s32 (int32x2_t __a, int32_t __b)
{
  return (int32x2_t)__builtin_neon_vqdmulh_nv2si (__a, (__builtin_neon_si) __b, 5);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmla_n_s16 (int16x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int16x4_t)__builtin_neon_vmla_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmla_n_s32 (int32x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int32x2_t)__builtin_neon_vmla_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmla_n_f32 (float32x2_t __a, float32x2_t __b, float32_t __c)
{
  return (float32x2_t)__builtin_neon_vmla_nv2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmla_n_u16 (uint16x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint16x4_t)__builtin_neon_vmla_nv4hi ((int16x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmla_n_u32 (uint32x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint32x2_t)__builtin_neon_vmla_nv2si ((int32x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlaq_n_s16 (int16x8_t __a, int16x8_t __b, int16_t __c)
{
  return (int16x8_t)__builtin_neon_vmla_nv8hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlaq_n_s32 (int32x4_t __a, int32x4_t __b, int32_t __c)
{
  return (int32x4_t)__builtin_neon_vmla_nv4si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlaq_n_f32 (float32x4_t __a, float32x4_t __b, float32_t __c)
{
  return (float32x4_t)__builtin_neon_vmla_nv4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlaq_n_u16 (uint16x8_t __a, uint16x8_t __b, uint16_t __c)
{
  return (uint16x8_t)__builtin_neon_vmla_nv8hi ((int16x8_t) __a, (int16x8_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlaq_n_u32 (uint32x4_t __a, uint32x4_t __b, uint32_t __c)
{
  return (uint32x4_t)__builtin_neon_vmla_nv4si ((int32x4_t) __a, (int32x4_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlal_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vmlal_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlal_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vmlal_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlal_n_u16 (uint32x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlal_nv4hi ((int32x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlal_n_u32 (uint64x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlal_nv2si ((int64x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlal_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlal_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlal_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlal_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vmls_n_s16 (int16x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int16x4_t)__builtin_neon_vmls_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vmls_n_s32 (int32x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int32x2_t)__builtin_neon_vmls_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vmls_n_f32 (float32x2_t __a, float32x2_t __b, float32_t __c)
{
  return (float32x2_t)__builtin_neon_vmls_nv2sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vmls_n_u16 (uint16x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint16x4_t)__builtin_neon_vmls_nv4hi ((int16x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vmls_n_u32 (uint32x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint32x2_t)__builtin_neon_vmls_nv2si ((int32x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vmlsq_n_s16 (int16x8_t __a, int16x8_t __b, int16_t __c)
{
  return (int16x8_t)__builtin_neon_vmls_nv8hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsq_n_s32 (int32x4_t __a, int32x4_t __b, int32_t __c)
{
  return (int32x4_t)__builtin_neon_vmls_nv4si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vmlsq_n_f32 (float32x4_t __a, float32x4_t __b, float32_t __c)
{
  return (float32x4_t)__builtin_neon_vmls_nv4sf (__a, __b, __c, 3);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vmlsq_n_u16 (uint16x8_t __a, uint16x8_t __b, uint16_t __c)
{
  return (uint16x8_t)__builtin_neon_vmls_nv8hi ((int16x8_t) __a, (int16x8_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsq_n_u32 (uint32x4_t __a, uint32x4_t __b, uint32_t __c)
{
  return (uint32x4_t)__builtin_neon_vmls_nv4si ((int32x4_t) __a, (int32x4_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vmlsl_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vmlsl_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vmlsl_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vmlsl_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vmlsl_n_u16 (uint32x4_t __a, uint16x4_t __b, uint16_t __c)
{
  return (uint32x4_t)__builtin_neon_vmlsl_nv4hi ((int32x4_t) __a, (int16x4_t) __b, (__builtin_neon_hi) __c, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vmlsl_n_u32 (uint64x2_t __a, uint32x2_t __b, uint32_t __c)
{
  return (uint64x2_t)__builtin_neon_vmlsl_nv2si ((int64x2_t) __a, (int32x2_t) __b, (__builtin_neon_si) __c, 0);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vqdmlsl_n_s16 (int32x4_t __a, int16x4_t __b, int16_t __c)
{
  return (int32x4_t)__builtin_neon_vqdmlsl_nv4hi (__a, __b, (__builtin_neon_hi) __c, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vqdmlsl_n_s32 (int64x2_t __a, int32x2_t __b, int32_t __c)
{
  return (int64x2_t)__builtin_neon_vqdmlsl_nv2si (__a, __b, (__builtin_neon_si) __c, 1);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vext_s8 (int8x8_t __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vextv8qi (__a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vext_s16 (int16x4_t __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vextv4hi (__a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vext_s32 (int32x2_t __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vextv2si (__a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vext_s64 (int64x1_t __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vextdi (__a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vext_f32 (float32x2_t __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vextv2sf (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vext_u8 (uint8x8_t __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vextv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vext_u16 (uint16x4_t __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vextv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vext_u32 (uint32x2_t __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vextv2si ((int32x2_t) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vext_u64 (uint64x1_t __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vextdi ((int64x1_t) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vext_p8 (poly8x8_t __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vextv8qi ((int8x8_t) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vext_p16 (poly16x4_t __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vextv4hi ((int16x4_t) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vextq_s8 (int8x16_t __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vextv16qi (__a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vextq_s16 (int16x8_t __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vextv8hi (__a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vextq_s32 (int32x4_t __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vextv4si (__a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vextq_s64 (int64x2_t __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vextv2di (__a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vextq_f32 (float32x4_t __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vextv4sf (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vextq_u8 (uint8x16_t __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vextv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vextq_u16 (uint16x8_t __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vextv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vextq_u32 (uint32x4_t __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vextv4si ((int32x4_t) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vextq_u64 (uint64x2_t __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vextv2di ((int64x2_t) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vextq_p8 (poly8x16_t __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vextv16qi ((int8x16_t) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vextq_p16 (poly16x8_t __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vextv8hi ((int16x8_t) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev64_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vrev64v8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrev64_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vrev64v4hi (__a, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vrev64_s32 (int32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vrev64v2si (__a, 1);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vrev64_f32 (float32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vrev64v2sf (__a, 3);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev64_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vrev64v8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrev64_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vrev64v4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vrev64_u32 (uint32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vrev64v2si ((int32x2_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev64_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vrev64v8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vrev64_p16 (poly16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vrev64v4hi ((int16x4_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev64q_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vrev64v16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrev64q_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vrev64v8hi (__a, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vrev64q_s32 (int32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vrev64v4si (__a, 1);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vrev64q_f32 (float32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vrev64v4sf (__a, 3);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev64q_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vrev64v16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrev64q_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vrev64v8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vrev64q_u32 (uint32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vrev64v4si ((int32x4_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev64q_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vrev64v16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vrev64q_p16 (poly16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vrev64v8hi ((int16x8_t) __a, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev32_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vrev32v8qi (__a, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vrev32_s16 (int16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vrev32v4hi (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev32_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vrev32v8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vrev32_u16 (uint16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vrev32v4hi ((int16x4_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev32_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vrev32v8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vrev32_p16 (poly16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vrev32v4hi ((int16x4_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev32q_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vrev32v16qi (__a, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vrev32q_s16 (int16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vrev32v8hi (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev32q_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vrev32v16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vrev32q_u16 (uint16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vrev32v8hi ((int16x8_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev32q_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vrev32v16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vrev32q_p16 (poly16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vrev32v8hi ((int16x8_t) __a, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vrev16_s8 (int8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vrev16v8qi (__a, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vrev16_u8 (uint8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vrev16v8qi ((int8x8_t) __a, 0);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vrev16_p8 (poly8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vrev16v8qi ((int8x8_t) __a, 2);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vrev16q_s8 (int8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vrev16v16qi (__a, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vrev16q_u8 (uint8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vrev16v16qi ((int8x16_t) __a, 0);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vrev16q_p8 (poly8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vrev16v16qi ((int8x16_t) __a, 2);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vbsl_s8 (uint8x8_t __a, int8x8_t __b, int8x8_t __c)
{
  return (int8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vbsl_s16 (uint16x4_t __a, int16x4_t __b, int16x4_t __c)
{
  return (int16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vbsl_s32 (uint32x2_t __a, int32x2_t __b, int32x2_t __c)
{
  return (int32x2_t)__builtin_neon_vbslv2si ((int32x2_t) __a, __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vbsl_s64 (uint64x1_t __a, int64x1_t __b, int64x1_t __c)
{
  return (int64x1_t)__builtin_neon_vbsldi ((int64x1_t) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vbsl_f32 (uint32x2_t __a, float32x2_t __b, float32x2_t __c)
{
  return (float32x2_t)__builtin_neon_vbslv2sf ((int32x2_t) __a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vbsl_u8 (uint8x8_t __a, uint8x8_t __b, uint8x8_t __c)
{
  return (uint8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vbsl_u16 (uint16x4_t __a, uint16x4_t __b, uint16x4_t __c)
{
  return (uint16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vbsl_u32 (uint32x2_t __a, uint32x2_t __b, uint32x2_t __c)
{
  return (uint32x2_t)__builtin_neon_vbslv2si ((int32x2_t) __a, (int32x2_t) __b, (int32x2_t) __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vbsl_u64 (uint64x1_t __a, uint64x1_t __b, uint64x1_t __c)
{
  return (uint64x1_t)__builtin_neon_vbsldi ((int64x1_t) __a, (int64x1_t) __b, (int64x1_t) __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vbsl_p8 (uint8x8_t __a, poly8x8_t __b, poly8x8_t __c)
{
  return (poly8x8_t)__builtin_neon_vbslv8qi ((int8x8_t) __a, (int8x8_t) __b, (int8x8_t) __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vbsl_p16 (uint16x4_t __a, poly16x4_t __b, poly16x4_t __c)
{
  return (poly16x4_t)__builtin_neon_vbslv4hi ((int16x4_t) __a, (int16x4_t) __b, (int16x4_t) __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vbslq_s8 (uint8x16_t __a, int8x16_t __b, int8x16_t __c)
{
  return (int8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vbslq_s16 (uint16x8_t __a, int16x8_t __b, int16x8_t __c)
{
  return (int16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vbslq_s32 (uint32x4_t __a, int32x4_t __b, int32x4_t __c)
{
  return (int32x4_t)__builtin_neon_vbslv4si ((int32x4_t) __a, __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vbslq_s64 (uint64x2_t __a, int64x2_t __b, int64x2_t __c)
{
  return (int64x2_t)__builtin_neon_vbslv2di ((int64x2_t) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vbslq_f32 (uint32x4_t __a, float32x4_t __b, float32x4_t __c)
{
  return (float32x4_t)__builtin_neon_vbslv4sf ((int32x4_t) __a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vbslq_u8 (uint8x16_t __a, uint8x16_t __b, uint8x16_t __c)
{
  return (uint8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vbslq_u16 (uint16x8_t __a, uint16x8_t __b, uint16x8_t __c)
{
  return (uint16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vbslq_u32 (uint32x4_t __a, uint32x4_t __b, uint32x4_t __c)
{
  return (uint32x4_t)__builtin_neon_vbslv4si ((int32x4_t) __a, (int32x4_t) __b, (int32x4_t) __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vbslq_u64 (uint64x2_t __a, uint64x2_t __b, uint64x2_t __c)
{
  return (uint64x2_t)__builtin_neon_vbslv2di ((int64x2_t) __a, (int64x2_t) __b, (int64x2_t) __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vbslq_p8 (uint8x16_t __a, poly8x16_t __b, poly8x16_t __c)
{
  return (poly8x16_t)__builtin_neon_vbslv16qi ((int8x16_t) __a, (int8x16_t) __b, (int8x16_t) __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vbslq_p16 (uint16x8_t __a, poly16x8_t __b, poly16x8_t __c)
{
  return (poly16x8_t)__builtin_neon_vbslv8hi ((int16x8_t) __a, (int16x8_t) __b, (int16x8_t) __c);
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vtrn_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __builtin_neon_vtrnv8qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vtrn_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __builtin_neon_vtrnv4hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vtrn_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __builtin_neon_vtrnv2si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vtrn_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __builtin_neon_vtrnv2sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vtrn_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __builtin_neon_vtrnv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vtrn_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __builtin_neon_vtrnv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vtrn_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __builtin_neon_vtrnv2si ((int32x2_t *) &__rv.val[0], (int32x2_t) __a, (int32x2_t) __b);
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vtrn_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __builtin_neon_vtrnv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vtrn_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __builtin_neon_vtrnv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vtrnq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __builtin_neon_vtrnv16qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vtrnq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __builtin_neon_vtrnv8hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vtrnq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __builtin_neon_vtrnv4si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vtrnq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __builtin_neon_vtrnv4sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vtrnq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __builtin_neon_vtrnv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vtrnq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __builtin_neon_vtrnv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vtrnq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __builtin_neon_vtrnv4si ((int32x4_t *) &__rv.val[0], (int32x4_t) __a, (int32x4_t) __b);
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vtrnq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __builtin_neon_vtrnv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vtrnq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __builtin_neon_vtrnv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vzip_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __builtin_neon_vzipv8qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vzip_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __builtin_neon_vzipv4hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vzip_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __builtin_neon_vzipv2si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vzip_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __builtin_neon_vzipv2sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vzip_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __builtin_neon_vzipv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vzip_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __builtin_neon_vzipv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vzip_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __builtin_neon_vzipv2si ((int32x2_t *) &__rv.val[0], (int32x2_t) __a, (int32x2_t) __b);
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vzip_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __builtin_neon_vzipv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vzip_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __builtin_neon_vzipv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vzipq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __builtin_neon_vzipv16qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vzipq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __builtin_neon_vzipv8hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vzipq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __builtin_neon_vzipv4si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vzipq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __builtin_neon_vzipv4sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vzipq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __builtin_neon_vzipv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vzipq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __builtin_neon_vzipv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vzipq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __builtin_neon_vzipv4si ((int32x4_t *) &__rv.val[0], (int32x4_t) __a, (int32x4_t) __b);
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vzipq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __builtin_neon_vzipv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vzipq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __builtin_neon_vzipv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vuzp_s8 (int8x8_t __a, int8x8_t __b)
{
  int8x8x2_t __rv;
  __builtin_neon_vuzpv8qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vuzp_s16 (int16x4_t __a, int16x4_t __b)
{
  int16x4x2_t __rv;
  __builtin_neon_vuzpv4hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vuzp_s32 (int32x2_t __a, int32x2_t __b)
{
  int32x2x2_t __rv;
  __builtin_neon_vuzpv2si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vuzp_f32 (float32x2_t __a, float32x2_t __b)
{
  float32x2x2_t __rv;
  __builtin_neon_vuzpv2sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vuzp_u8 (uint8x8_t __a, uint8x8_t __b)
{
  uint8x8x2_t __rv;
  __builtin_neon_vuzpv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vuzp_u16 (uint16x4_t __a, uint16x4_t __b)
{
  uint16x4x2_t __rv;
  __builtin_neon_vuzpv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vuzp_u32 (uint32x2_t __a, uint32x2_t __b)
{
  uint32x2x2_t __rv;
  __builtin_neon_vuzpv2si ((int32x2_t *) &__rv.val[0], (int32x2_t) __a, (int32x2_t) __b);
  return __rv;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vuzp_p8 (poly8x8_t __a, poly8x8_t __b)
{
  poly8x8x2_t __rv;
  __builtin_neon_vuzpv8qi ((int8x8_t *) &__rv.val[0], (int8x8_t) __a, (int8x8_t) __b);
  return __rv;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vuzp_p16 (poly16x4_t __a, poly16x4_t __b)
{
  poly16x4x2_t __rv;
  __builtin_neon_vuzpv4hi ((int16x4_t *) &__rv.val[0], (int16x4_t) __a, (int16x4_t) __b);
  return __rv;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vuzpq_s8 (int8x16_t __a, int8x16_t __b)
{
  int8x16x2_t __rv;
  __builtin_neon_vuzpv16qi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vuzpq_s16 (int16x8_t __a, int16x8_t __b)
{
  int16x8x2_t __rv;
  __builtin_neon_vuzpv8hi (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vuzpq_s32 (int32x4_t __a, int32x4_t __b)
{
  int32x4x2_t __rv;
  __builtin_neon_vuzpv4si (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vuzpq_f32 (float32x4_t __a, float32x4_t __b)
{
  float32x4x2_t __rv;
  __builtin_neon_vuzpv4sf (&__rv.val[0], __a, __b);
  return __rv;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vuzpq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  uint8x16x2_t __rv;
  __builtin_neon_vuzpv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vuzpq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  uint16x8x2_t __rv;
  __builtin_neon_vuzpv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vuzpq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  uint32x4x2_t __rv;
  __builtin_neon_vuzpv4si ((int32x4_t *) &__rv.val[0], (int32x4_t) __a, (int32x4_t) __b);
  return __rv;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vuzpq_p8 (poly8x16_t __a, poly8x16_t __b)
{
  poly8x16x2_t __rv;
  __builtin_neon_vuzpv16qi ((int8x16_t *) &__rv.val[0], (int8x16_t) __a, (int8x16_t) __b);
  return __rv;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vuzpq_p16 (poly16x8_t __a, poly16x8_t __b)
{
  poly16x8x2_t __rv;
  __builtin_neon_vuzpv8hi ((int16x8_t *) &__rv.val[0], (int16x8_t) __a, (int16x8_t) __b);
  return __rv;
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_s8 (const int8_t * __a)
{
  return (int8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_s16 (const int16_t * __a)
{
  return (int16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_s32 (const int32_t * __a)
{
  return (int32x2_t)__builtin_neon_vld1v2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_s64 (const int64_t * __a)
{
  return (int64x1_t)__builtin_neon_vld1di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_f32 (const float32_t * __a)
{
  return (float32x2_t)__builtin_neon_vld1v2sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_u8 (const uint8_t * __a)
{
  return (uint8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_u16 (const uint16_t * __a)
{
  return (uint16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_u32 (const uint32_t * __a)
{
  return (uint32x2_t)__builtin_neon_vld1v2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_u64 (const uint64_t * __a)
{
  return (uint64x1_t)__builtin_neon_vld1di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_p8 (const poly8_t * __a)
{
  return (poly8x8_t)__builtin_neon_vld1v8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_p16 (const poly16_t * __a)
{
  return (poly16x4_t)__builtin_neon_vld1v4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_s8 (const int8_t * __a)
{
  return (int8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_s16 (const int16_t * __a)
{
  return (int16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_s32 (const int32_t * __a)
{
  return (int32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_s64 (const int64_t * __a)
{
  return (int64x2_t)__builtin_neon_vld1v2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_f32 (const float32_t * __a)
{
  return (float32x4_t)__builtin_neon_vld1v4sf (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_u8 (const uint8_t * __a)
{
  return (uint8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_u16 (const uint16_t * __a)
{
  return (uint16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_u32 (const uint32_t * __a)
{
  return (uint32x4_t)__builtin_neon_vld1v4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_u64 (const uint64_t * __a)
{
  return (uint64x2_t)__builtin_neon_vld1v2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_p8 (const poly8_t * __a)
{
  return (poly8x16_t)__builtin_neon_vld1v16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_p16 (const poly16_t * __a)
{
  return (poly16x8_t)__builtin_neon_vld1v8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_lane_s8 (const int8_t * __a, int8x8_t __b, const int __c)
{
  return (int8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_lane_s16 (const int16_t * __a, int16x4_t __b, const int __c)
{
  return (int16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_lane_s32 (const int32_t * __a, int32x2_t __b, const int __c)
{
  return (int32x2_t)__builtin_neon_vld1_lanev2si ((const __builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_lane_f32 (const float32_t * __a, float32x2_t __b, const int __c)
{
  return (float32x2_t)__builtin_neon_vld1_lanev2sf (__a, __b, __c);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_lane_u8 (const uint8_t * __a, uint8x8_t __b, const int __c)
{
  return (uint8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_lane_u16 (const uint16_t * __a, uint16x4_t __b, const int __c)
{
  return (uint16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_lane_u32 (const uint32_t * __a, uint32x2_t __b, const int __c)
{
  return (uint32x2_t)__builtin_neon_vld1_lanev2si ((const __builtin_neon_si *) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_lane_p8 (const poly8_t * __a, poly8x8_t __b, const int __c)
{
  return (poly8x8_t)__builtin_neon_vld1_lanev8qi ((const __builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_lane_p16 (const poly16_t * __a, poly16x4_t __b, const int __c)
{
  return (poly16x4_t)__builtin_neon_vld1_lanev4hi ((const __builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_lane_s64 (const int64_t * __a, int64x1_t __b, const int __c)
{
  return (int64x1_t)__builtin_neon_vld1_lanedi ((const __builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_lane_u64 (const uint64_t * __a, uint64x1_t __b, const int __c)
{
  return (uint64x1_t)__builtin_neon_vld1_lanedi ((const __builtin_neon_di *) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_lane_s8 (const int8_t * __a, int8x16_t __b, const int __c)
{
  return (int8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_lane_s16 (const int16_t * __a, int16x8_t __b, const int __c)
{
  return (int16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_lane_s32 (const int32_t * __a, int32x4_t __b, const int __c)
{
  return (int32x4_t)__builtin_neon_vld1_lanev4si ((const __builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_lane_f32 (const float32_t * __a, float32x4_t __b, const int __c)
{
  return (float32x4_t)__builtin_neon_vld1_lanev4sf (__a, __b, __c);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_lane_u8 (const uint8_t * __a, uint8x16_t __b, const int __c)
{
  return (uint8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_lane_u16 (const uint16_t * __a, uint16x8_t __b, const int __c)
{
  return (uint16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_lane_u32 (const uint32_t * __a, uint32x4_t __b, const int __c)
{
  return (uint32x4_t)__builtin_neon_vld1_lanev4si ((const __builtin_neon_si *) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_lane_p8 (const poly8_t * __a, poly8x16_t __b, const int __c)
{
  return (poly8x16_t)__builtin_neon_vld1_lanev16qi ((const __builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_lane_p16 (const poly16_t * __a, poly16x8_t __b, const int __c)
{
  return (poly16x8_t)__builtin_neon_vld1_lanev8hi ((const __builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_lane_s64 (const int64_t * __a, int64x2_t __b, const int __c)
{
  return (int64x2_t)__builtin_neon_vld1_lanev2di ((const __builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_lane_u64 (const uint64_t * __a, uint64x2_t __b, const int __c)
{
  return (uint64x2_t)__builtin_neon_vld1_lanev2di ((const __builtin_neon_di *) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vld1_dup_s8 (const int8_t * __a)
{
  return (int8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vld1_dup_s16 (const int16_t * __a)
{
  return (int16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vld1_dup_s32 (const int32_t * __a)
{
  return (int32x2_t)__builtin_neon_vld1_dupv2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vld1_dup_f32 (const float32_t * __a)
{
  return (float32x2_t)__builtin_neon_vld1_dupv2sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vld1_dup_u8 (const uint8_t * __a)
{
  return (uint8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vld1_dup_u16 (const uint16_t * __a)
{
  return (uint16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vld1_dup_u32 (const uint32_t * __a)
{
  return (uint32x2_t)__builtin_neon_vld1_dupv2si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vld1_dup_p8 (const poly8_t * __a)
{
  return (poly8x8_t)__builtin_neon_vld1_dupv8qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vld1_dup_p16 (const poly16_t * __a)
{
  return (poly16x4_t)__builtin_neon_vld1_dupv4hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vld1_dup_s64 (const int64_t * __a)
{
  return (int64x1_t)__builtin_neon_vld1_dupdi ((const __builtin_neon_di *) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vld1_dup_u64 (const uint64_t * __a)
{
  return (uint64x1_t)__builtin_neon_vld1_dupdi ((const __builtin_neon_di *) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vld1q_dup_s8 (const int8_t * __a)
{
  return (int8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vld1q_dup_s16 (const int16_t * __a)
{
  return (int16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vld1q_dup_s32 (const int32_t * __a)
{
  return (int32x4_t)__builtin_neon_vld1_dupv4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vld1q_dup_f32 (const float32_t * __a)
{
  return (float32x4_t)__builtin_neon_vld1_dupv4sf (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vld1q_dup_u8 (const uint8_t * __a)
{
  return (uint8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vld1q_dup_u16 (const uint16_t * __a)
{
  return (uint16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vld1q_dup_u32 (const uint32_t * __a)
{
  return (uint32x4_t)__builtin_neon_vld1_dupv4si ((const __builtin_neon_si *) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vld1q_dup_p8 (const poly8_t * __a)
{
  return (poly8x16_t)__builtin_neon_vld1_dupv16qi ((const __builtin_neon_qi *) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vld1q_dup_p16 (const poly16_t * __a)
{
  return (poly16x8_t)__builtin_neon_vld1_dupv8hi ((const __builtin_neon_hi *) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vld1q_dup_s64 (const int64_t * __a)
{
  return (int64x2_t)__builtin_neon_vld1_dupv2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vld1q_dup_u64 (const uint64_t * __a)
{
  return (uint64x2_t)__builtin_neon_vld1_dupv2di ((const __builtin_neon_di *) __a);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s8 (int8_t * __a, int8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s16 (int16_t * __a, int16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s32 (int32_t * __a, int32x2_t __b)
{
  __builtin_neon_vst1v2si ((__builtin_neon_si *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_s64 (int64_t * __a, int64x1_t __b)
{
  __builtin_neon_vst1di ((__builtin_neon_di *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_f32 (float32_t * __a, float32x2_t __b)
{
  __builtin_neon_vst1v2sf (__a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u8 (uint8_t * __a, uint8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u16 (uint16_t * __a, uint16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u32 (uint32_t * __a, uint32x2_t __b)
{
  __builtin_neon_vst1v2si ((__builtin_neon_si *) __a, (int32x2_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_u64 (uint64_t * __a, uint64x1_t __b)
{
  __builtin_neon_vst1di ((__builtin_neon_di *) __a, (int64x1_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_p8 (poly8_t * __a, poly8x8_t __b)
{
  __builtin_neon_vst1v8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_p16 (poly16_t * __a, poly16x4_t __b)
{
  __builtin_neon_vst1v4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s8 (int8_t * __a, int8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s16 (int16_t * __a, int16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s32 (int32_t * __a, int32x4_t __b)
{
  __builtin_neon_vst1v4si ((__builtin_neon_si *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_s64 (int64_t * __a, int64x2_t __b)
{
  __builtin_neon_vst1v2di ((__builtin_neon_di *) __a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_f32 (float32_t * __a, float32x4_t __b)
{
  __builtin_neon_vst1v4sf (__a, __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u8 (uint8_t * __a, uint8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u16 (uint16_t * __a, uint16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u32 (uint32_t * __a, uint32x4_t __b)
{
  __builtin_neon_vst1v4si ((__builtin_neon_si *) __a, (int32x4_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_u64 (uint64_t * __a, uint64x2_t __b)
{
  __builtin_neon_vst1v2di ((__builtin_neon_di *) __a, (int64x2_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_p8 (poly8_t * __a, poly8x16_t __b)
{
  __builtin_neon_vst1v16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_p16 (poly16_t * __a, poly16x8_t __b)
{
  __builtin_neon_vst1v8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s8 (int8_t * __a, int8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s16 (int16_t * __a, int16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s32 (int32_t * __a, int32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2si ((__builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_f32 (float32_t * __a, float32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2sf (__a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u8 (uint8_t * __a, uint8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u16 (uint16_t * __a, uint16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u32 (uint32_t * __a, uint32x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2si ((__builtin_neon_si *) __a, (int32x2_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_p8 (poly8_t * __a, poly8x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8qi ((__builtin_neon_qi *) __a, (int8x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_p16 (poly16_t * __a, poly16x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4hi ((__builtin_neon_hi *) __a, (int16x4_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_s64 (int64_t * __a, int64x1_t __b, const int __c)
{
  __builtin_neon_vst1_lanedi ((__builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1_lane_u64 (uint64_t * __a, uint64x1_t __b, const int __c)
{
  __builtin_neon_vst1_lanedi ((__builtin_neon_di *) __a, (int64x1_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s8 (int8_t * __a, int8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s16 (int16_t * __a, int16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s32 (int32_t * __a, int32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4si ((__builtin_neon_si *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_f32 (float32_t * __a, float32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4sf (__a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u8 (uint8_t * __a, uint8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u16 (uint16_t * __a, uint16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u32 (uint32_t * __a, uint32x4_t __b, const int __c)
{
  __builtin_neon_vst1_lanev4si ((__builtin_neon_si *) __a, (int32x4_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_p8 (poly8_t * __a, poly8x16_t __b, const int __c)
{
  __builtin_neon_vst1_lanev16qi ((__builtin_neon_qi *) __a, (int8x16_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_p16 (poly16_t * __a, poly16x8_t __b, const int __c)
{
  __builtin_neon_vst1_lanev8hi ((__builtin_neon_hi *) __a, (int16x8_t) __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_s64 (int64_t * __a, int64x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2di ((__builtin_neon_di *) __a, __b, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst1q_lane_u64 (uint64_t * __a, uint64x2_t __b, const int __c)
{
  __builtin_neon_vst1_lanev2di ((__builtin_neon_di *) __a, (int64x2_t) __b, __c);
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_s8 (const int8_t * __a)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_s16 (const int16_t * __a)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_s32 (const int32_t * __a)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_f32 (const float32_t * __a)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_u8 (const uint8_t * __a)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_u16 (const uint16_t * __a)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_u32 (const uint32_t * __a)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_p8 (const poly8_t * __a)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_p16 (const poly16_t * __a)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x2_t __attribute__ ((__always_inline__))
vld2_s64 (const int64_t * __a)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x2_t __attribute__ ((__always_inline__))
vld2_u64 (const uint64_t * __a)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x2_t __attribute__ ((__always_inline__))
vld2q_s8 (const int8_t * __a)
{
  union { int8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vld2q_s16 (const int16_t * __a)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vld2q_s32 (const int32_t * __a)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vld2q_f32 (const float32_t * __a)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x2_t __attribute__ ((__always_inline__))
vld2q_u8 (const uint8_t * __a)
{
  union { uint8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vld2q_u16 (const uint16_t * __a)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vld2q_u32 (const uint32_t * __a)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x2_t __attribute__ ((__always_inline__))
vld2q_p8 (const poly8_t * __a)
{
  union { poly8x16x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vld2q_p16 (const poly16_t * __a)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_s8 (const int8_t * __a, int8x8x2_t __b, const int __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_s16 (const int16_t * __a, int16x4x2_t __b, const int __c)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_s32 (const int32_t * __a, int32x2x2_t __b, const int __c)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_f32 (const float32_t * __a, float32x2x2_t __b, const int __c)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_u8 (const uint8_t * __a, uint8x8x2_t __b, const int __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_u16 (const uint16_t * __a, uint16x4x2_t __b, const int __c)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_lane_u32 (const uint32_t * __a, uint32x2x2_t __b, const int __c)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_lane_p8 (const poly8_t * __a, poly8x8x2_t __b, const int __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_lane_p16 (const poly16_t * __a, poly16x4x2_t __b, const int __c)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_s16 (const int16_t * __a, int16x8x2_t __b, const int __c)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_s32 (const int32_t * __a, int32x4x2_t __b, const int __c)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_f32 (const float32_t * __a, float32x4x2_t __b, const int __c)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_u16 (const uint16_t * __a, uint16x8x2_t __b, const int __c)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x2_t __attribute__ ((__always_inline__))
vld2q_lane_u32 (const uint32_t * __a, uint32x4x2_t __b, const int __c)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x2_t __attribute__ ((__always_inline__))
vld2q_lane_p16 (const poly16_t * __a, poly16x8x2_t __b, const int __c)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld2_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_s8 (const int8_t * __a)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_s16 (const int16_t * __a)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_s32 (const int32_t * __a)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_f32 (const float32_t * __a)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x2_t __attribute__ ((__always_inline__))
vld2_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x2_t __attribute__ ((__always_inline__))
vld2_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x2_t __attribute__ ((__always_inline__))
vld2_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x2_t __attribute__ ((__always_inline__))
vld2_dup_s64 (const int64_t * __a)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x2_t __attribute__ ((__always_inline__))
vld2_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __rv;
  __rv.__o = __builtin_neon_vld2_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s8 (int8_t * __a, int8x8x2_t __b)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s16 (int16_t * __a, int16x4x2_t __b)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s32 (int32_t * __a, int32x2x2_t __b)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_f32 (float32_t * __a, float32x2x2_t __b)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u8 (uint8_t * __a, uint8x8x2_t __b)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u16 (uint16_t * __a, uint16x4x2_t __b)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u32 (uint32_t * __a, uint32x2x2_t __b)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_p8 (poly8_t * __a, poly8x8x2_t __b)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_p16 (poly16_t * __a, poly16x4x2_t __b)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_s64 (int64_t * __a, int64x1x2_t __b)
{
  union { int64x1x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_u64 (uint64_t * __a, uint64x1x2_t __b)
{
  union { uint64x1x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s8 (int8_t * __a, int8x16x2_t __b)
{
  union { int8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s16 (int16_t * __a, int16x8x2_t __b)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_s32 (int32_t * __a, int32x4x2_t __b)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_f32 (float32_t * __a, float32x4x2_t __b)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u8 (uint8_t * __a, uint8x16x2_t __b)
{
  union { uint8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u16 (uint16_t * __a, uint16x8x2_t __b)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_u32 (uint32_t * __a, uint32x4x2_t __b)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_p8 (poly8_t * __a, poly8x16x2_t __b)
{
  union { poly8x16x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_p16 (poly16_t * __a, poly16x8x2_t __b)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s8 (int8_t * __a, int8x8x2_t __b, const int __c)
{
  union { int8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s16 (int16_t * __a, int16x4x2_t __b, const int __c)
{
  union { int16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_s32 (int32_t * __a, int32x2x2_t __b, const int __c)
{
  union { int32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_f32 (float32_t * __a, float32x2x2_t __b, const int __c)
{
  union { float32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u8 (uint8_t * __a, uint8x8x2_t __b, const int __c)
{
  union { uint8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u16 (uint16_t * __a, uint16x4x2_t __b, const int __c)
{
  union { uint16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_u32 (uint32_t * __a, uint32x2x2_t __b, const int __c)
{
  union { uint32x2x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_p8 (poly8_t * __a, poly8x8x2_t __b, const int __c)
{
  union { poly8x8x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2_lane_p16 (poly16_t * __a, poly16x4x2_t __b, const int __c)
{
  union { poly16x4x2_t __i; __builtin_neon_ti __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_s16 (int16_t * __a, int16x8x2_t __b, const int __c)
{
  union { int16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_s32 (int32_t * __a, int32x4x2_t __b, const int __c)
{
  union { int32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_f32 (float32_t * __a, float32x4x2_t __b, const int __c)
{
  union { float32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_u16 (uint16_t * __a, uint16x8x2_t __b, const int __c)
{
  union { uint16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_u32 (uint32_t * __a, uint32x4x2_t __b, const int __c)
{
  union { uint32x4x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst2q_lane_p16 (poly16_t * __a, poly16x8x2_t __b, const int __c)
{
  union { poly16x8x2_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst2_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_s8 (const int8_t * __a)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_s16 (const int16_t * __a)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_s32 (const int32_t * __a)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_f32 (const float32_t * __a)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_u8 (const uint8_t * __a)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_u16 (const uint16_t * __a)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_u32 (const uint32_t * __a)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_p8 (const poly8_t * __a)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_p16 (const poly16_t * __a)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x3_t __attribute__ ((__always_inline__))
vld3_s64 (const int64_t * __a)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x3_t __attribute__ ((__always_inline__))
vld3_u64 (const uint64_t * __a)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x3_t __attribute__ ((__always_inline__))
vld3q_s8 (const int8_t * __a)
{
  union { int8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x3_t __attribute__ ((__always_inline__))
vld3q_s16 (const int16_t * __a)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x3_t __attribute__ ((__always_inline__))
vld3q_s32 (const int32_t * __a)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x3_t __attribute__ ((__always_inline__))
vld3q_f32 (const float32_t * __a)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x3_t __attribute__ ((__always_inline__))
vld3q_u8 (const uint8_t * __a)
{
  union { uint8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x3_t __attribute__ ((__always_inline__))
vld3q_u16 (const uint16_t * __a)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x3_t __attribute__ ((__always_inline__))
vld3q_u32 (const uint32_t * __a)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x3_t __attribute__ ((__always_inline__))
vld3q_p8 (const poly8_t * __a)
{
  union { poly8x16x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x3_t __attribute__ ((__always_inline__))
vld3q_p16 (const poly16_t * __a)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_s8 (const int8_t * __a, int8x8x3_t __b, const int __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_s16 (const int16_t * __a, int16x4x3_t __b, const int __c)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_s32 (const int32_t * __a, int32x2x3_t __b, const int __c)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_f32 (const float32_t * __a, float32x2x3_t __b, const int __c)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_u8 (const uint8_t * __a, uint8x8x3_t __b, const int __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_u16 (const uint16_t * __a, uint16x4x3_t __b, const int __c)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_lane_u32 (const uint32_t * __a, uint32x2x3_t __b, const int __c)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_lane_p8 (const poly8_t * __a, poly8x8x3_t __b, const int __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_lane_p16 (const poly16_t * __a, poly16x4x3_t __b, const int __c)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_s16 (const int16_t * __a, int16x8x3_t __b, const int __c)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_s32 (const int32_t * __a, int32x4x3_t __b, const int __c)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_f32 (const float32_t * __a, float32x4x3_t __b, const int __c)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_u16 (const uint16_t * __a, uint16x8x3_t __b, const int __c)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x3_t __attribute__ ((__always_inline__))
vld3q_lane_u32 (const uint32_t * __a, uint32x4x3_t __b, const int __c)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x3_t __attribute__ ((__always_inline__))
vld3q_lane_p16 (const poly16_t * __a, poly16x8x3_t __b, const int __c)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __rv;
  __rv.__o = __builtin_neon_vld3_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_s8 (const int8_t * __a)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_s16 (const int16_t * __a)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_s32 (const int32_t * __a)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_f32 (const float32_t * __a)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x3_t __attribute__ ((__always_inline__))
vld3_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x3_t __attribute__ ((__always_inline__))
vld3_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x3_t __attribute__ ((__always_inline__))
vld3_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x3_t __attribute__ ((__always_inline__))
vld3_dup_s64 (const int64_t * __a)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x3_t __attribute__ ((__always_inline__))
vld3_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __rv;
  __rv.__o = __builtin_neon_vld3_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s8 (int8_t * __a, int8x8x3_t __b)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s16 (int16_t * __a, int16x4x3_t __b)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s32 (int32_t * __a, int32x2x3_t __b)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_f32 (float32_t * __a, float32x2x3_t __b)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u8 (uint8_t * __a, uint8x8x3_t __b)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u16 (uint16_t * __a, uint16x4x3_t __b)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u32 (uint32_t * __a, uint32x2x3_t __b)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_p8 (poly8_t * __a, poly8x8x3_t __b)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_p16 (poly16_t * __a, poly16x4x3_t __b)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_s64 (int64_t * __a, int64x1x3_t __b)
{
  union { int64x1x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_u64 (uint64_t * __a, uint64x1x3_t __b)
{
  union { uint64x1x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s8 (int8_t * __a, int8x16x3_t __b)
{
  union { int8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s16 (int16_t * __a, int16x8x3_t __b)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_s32 (int32_t * __a, int32x4x3_t __b)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_f32 (float32_t * __a, float32x4x3_t __b)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u8 (uint8_t * __a, uint8x16x3_t __b)
{
  union { uint8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u16 (uint16_t * __a, uint16x8x3_t __b)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_u32 (uint32_t * __a, uint32x4x3_t __b)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_p8 (poly8_t * __a, poly8x16x3_t __b)
{
  union { poly8x16x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_p16 (poly16_t * __a, poly16x8x3_t __b)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s8 (int8_t * __a, int8x8x3_t __b, const int __c)
{
  union { int8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s16 (int16_t * __a, int16x4x3_t __b, const int __c)
{
  union { int16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_s32 (int32_t * __a, int32x2x3_t __b, const int __c)
{
  union { int32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_f32 (float32_t * __a, float32x2x3_t __b, const int __c)
{
  union { float32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u8 (uint8_t * __a, uint8x8x3_t __b, const int __c)
{
  union { uint8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u16 (uint16_t * __a, uint16x4x3_t __b, const int __c)
{
  union { uint16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_u32 (uint32_t * __a, uint32x2x3_t __b, const int __c)
{
  union { uint32x2x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_p8 (poly8_t * __a, poly8x8x3_t __b, const int __c)
{
  union { poly8x8x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3_lane_p16 (poly16_t * __a, poly16x4x3_t __b, const int __c)
{
  union { poly16x4x3_t __i; __builtin_neon_ei __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_s16 (int16_t * __a, int16x8x3_t __b, const int __c)
{
  union { int16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_s32 (int32_t * __a, int32x4x3_t __b, const int __c)
{
  union { int32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_f32 (float32_t * __a, float32x4x3_t __b, const int __c)
{
  union { float32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_u16 (uint16_t * __a, uint16x8x3_t __b, const int __c)
{
  union { uint16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_u32 (uint32_t * __a, uint32x4x3_t __b, const int __c)
{
  union { uint32x4x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst3q_lane_p16 (poly16_t * __a, poly16x8x3_t __b, const int __c)
{
  union { poly16x8x3_t __i; __builtin_neon_ci __o; } __bu = { __b };
  __builtin_neon_vst3_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_s8 (const int8_t * __a)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_s16 (const int16_t * __a)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_s32 (const int32_t * __a)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_f32 (const float32_t * __a)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_u8 (const uint8_t * __a)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_u16 (const uint16_t * __a)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_u32 (const uint32_t * __a)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_p8 (const poly8_t * __a)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_p16 (const poly16_t * __a)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x4_t __attribute__ ((__always_inline__))
vld4_s64 (const int64_t * __a)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x4_t __attribute__ ((__always_inline__))
vld4_u64 (const uint64_t * __a)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4di ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x16x4_t __attribute__ ((__always_inline__))
vld4q_s8 (const int8_t * __a)
{
  union { int8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x8x4_t __attribute__ ((__always_inline__))
vld4q_s16 (const int16_t * __a)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x4x4_t __attribute__ ((__always_inline__))
vld4q_s32 (const int32_t * __a)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x4x4_t __attribute__ ((__always_inline__))
vld4q_f32 (const float32_t * __a)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x16x4_t __attribute__ ((__always_inline__))
vld4q_u8 (const uint8_t * __a)
{
  union { uint8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x8x4_t __attribute__ ((__always_inline__))
vld4q_u16 (const uint16_t * __a)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x4x4_t __attribute__ ((__always_inline__))
vld4q_u32 (const uint32_t * __a)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v4si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x16x4_t __attribute__ ((__always_inline__))
vld4q_p8 (const poly8_t * __a)
{
  union { poly8x16x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v16qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x8x4_t __attribute__ ((__always_inline__))
vld4q_p16 (const poly16_t * __a)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4v8hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_s8 (const int8_t * __a, int8x8x4_t __b, const int __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_s16 (const int16_t * __a, int16x4x4_t __b, const int __c)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_s32 (const int32_t * __a, int32x2x4_t __b, const int __c)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_f32 (const float32_t * __a, float32x2x4_t __b, const int __c)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_u8 (const uint8_t * __a, uint8x8x4_t __b, const int __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_u16 (const uint16_t * __a, uint16x4x4_t __b, const int __c)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_lane_u32 (const uint32_t * __a, uint32x2x4_t __b, const int __c)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev2si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_lane_p8 (const poly8_t * __a, poly8x8x4_t __b, const int __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8qi ((const __builtin_neon_qi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_lane_p16 (const poly16_t * __a, poly16x4x4_t __b, const int __c)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_s16 (const int16_t * __a, int16x8x4_t __b, const int __c)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_s32 (const int32_t * __a, int32x4x4_t __b, const int __c)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline float32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_f32 (const float32_t * __a, float32x4x4_t __b, const int __c)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4sf (__a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_u16 (const uint16_t * __a, uint16x8x4_t __b, const int __c)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline uint32x4x4_t __attribute__ ((__always_inline__))
vld4q_lane_u32 (const uint32_t * __a, uint32x4x4_t __b, const int __c)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev4si ((const __builtin_neon_si *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline poly16x8x4_t __attribute__ ((__always_inline__))
vld4q_lane_p16 (const poly16_t * __a, poly16x8x4_t __b, const int __c)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_lanev8hi ((const __builtin_neon_hi *) __a, __bu.__o, __c);
  return __rv.__i;
}

__extension__ static __inline int8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_s8 (const int8_t * __a)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline int16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_s16 (const int16_t * __a)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_s32 (const int32_t * __a)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline float32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_f32 (const float32_t * __a)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2sf (__a);
  return __rv.__i;
}

__extension__ static __inline uint8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_u8 (const uint8_t * __a)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_u16 (const uint16_t * __a)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline uint32x2x4_t __attribute__ ((__always_inline__))
vld4_dup_u32 (const uint32_t * __a)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv2si ((const __builtin_neon_si *) __a);
  return __rv.__i;
}

__extension__ static __inline poly8x8x4_t __attribute__ ((__always_inline__))
vld4_dup_p8 (const poly8_t * __a)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv8qi ((const __builtin_neon_qi *) __a);
  return __rv.__i;
}

__extension__ static __inline poly16x4x4_t __attribute__ ((__always_inline__))
vld4_dup_p16 (const poly16_t * __a)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupv4hi ((const __builtin_neon_hi *) __a);
  return __rv.__i;
}

__extension__ static __inline int64x1x4_t __attribute__ ((__always_inline__))
vld4_dup_s64 (const int64_t * __a)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline uint64x1x4_t __attribute__ ((__always_inline__))
vld4_dup_u64 (const uint64_t * __a)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __rv;
  __rv.__o = __builtin_neon_vld4_dupdi ((const __builtin_neon_di *) __a);
  return __rv.__i;
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s8 (int8_t * __a, int8x8x4_t __b)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s16 (int16_t * __a, int16x4x4_t __b)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s32 (int32_t * __a, int32x2x4_t __b)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_f32 (float32_t * __a, float32x2x4_t __b)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u8 (uint8_t * __a, uint8x8x4_t __b)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u16 (uint16_t * __a, uint16x4x4_t __b)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u32 (uint32_t * __a, uint32x2x4_t __b)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v2si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_p8 (poly8_t * __a, poly8x8x4_t __b)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v8qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_p16 (poly16_t * __a, poly16x4x4_t __b)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4v4hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_s64 (int64_t * __a, int64x1x4_t __b)
{
  union { int64x1x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_u64 (uint64_t * __a, uint64x1x4_t __b)
{
  union { uint64x1x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4di ((__builtin_neon_di *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s8 (int8_t * __a, int8x16x4_t __b)
{
  union { int8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s16 (int16_t * __a, int16x8x4_t __b)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_s32 (int32_t * __a, int32x4x4_t __b)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_f32 (float32_t * __a, float32x4x4_t __b)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4sf (__a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u8 (uint8_t * __a, uint8x16x4_t __b)
{
  union { uint8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u16 (uint16_t * __a, uint16x8x4_t __b)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_u32 (uint32_t * __a, uint32x4x4_t __b)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v4si ((__builtin_neon_si *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_p8 (poly8_t * __a, poly8x16x4_t __b)
{
  union { poly8x16x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v16qi ((__builtin_neon_qi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_p16 (poly16_t * __a, poly16x8x4_t __b)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4v8hi ((__builtin_neon_hi *) __a, __bu.__o);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s8 (int8_t * __a, int8x8x4_t __b, const int __c)
{
  union { int8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s16 (int16_t * __a, int16x4x4_t __b, const int __c)
{
  union { int16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_s32 (int32_t * __a, int32x2x4_t __b, const int __c)
{
  union { int32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_f32 (float32_t * __a, float32x2x4_t __b, const int __c)
{
  union { float32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u8 (uint8_t * __a, uint8x8x4_t __b, const int __c)
{
  union { uint8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u16 (uint16_t * __a, uint16x4x4_t __b, const int __c)
{
  union { uint16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_u32 (uint32_t * __a, uint32x2x4_t __b, const int __c)
{
  union { uint32x2x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev2si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_p8 (poly8_t * __a, poly8x8x4_t __b, const int __c)
{
  union { poly8x8x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8qi ((__builtin_neon_qi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4_lane_p16 (poly16_t * __a, poly16x4x4_t __b, const int __c)
{
  union { poly16x4x4_t __i; __builtin_neon_oi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_s16 (int16_t * __a, int16x8x4_t __b, const int __c)
{
  union { int16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_s32 (int32_t * __a, int32x4x4_t __b, const int __c)
{
  union { int32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_f32 (float32_t * __a, float32x4x4_t __b, const int __c)
{
  union { float32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4sf (__a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_u16 (uint16_t * __a, uint16x8x4_t __b, const int __c)
{
  union { uint16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_u32 (uint32_t * __a, uint32x4x4_t __b, const int __c)
{
  union { uint32x4x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev4si ((__builtin_neon_si *) __a, __bu.__o, __c);
}

__extension__ static __inline void __attribute__ ((__always_inline__))
vst4q_lane_p16 (poly16_t * __a, poly16x8x4_t __b, const int __c)
{
  union { poly16x8x4_t __i; __builtin_neon_xi __o; } __bu = { __b };
  __builtin_neon_vst4_lanev8hi ((__builtin_neon_hi *) __a, __bu.__o, __c);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vand_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vandv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vand_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vandv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vand_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vandv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vand_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vanddi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vand_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vandv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vand_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vandv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vand_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vandv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vand_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vanddi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vandq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vandv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vandq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vandv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vandq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vandv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vandq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vandv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vandq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vandv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vandq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vandv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vandq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vandv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vandq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vandv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vorr_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vorrv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vorr_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vorrv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vorr_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vorrv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vorr_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vorrdi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vorr_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vorrv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vorr_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vorrv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vorr_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vorrv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vorr_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vorrdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vorrq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vorrv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vorrq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vorrv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vorrq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vorrv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vorrq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vorrv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vorrq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vorrv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vorrq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vorrv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vorrq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vorrv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vorrq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vorrv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
veor_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_veorv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
veor_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_veorv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
veor_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_veorv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
veor_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_veordi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
veor_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_veorv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
veor_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_veorv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
veor_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_veorv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
veor_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_veordi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
veorq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_veorv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
veorq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_veorv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
veorq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_veorv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
veorq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_veorv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
veorq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_veorv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
veorq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_veorv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
veorq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_veorv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
veorq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_veorv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vbic_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vbicv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vbic_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vbicv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vbic_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vbicv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vbic_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vbicdi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vbic_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vbicv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vbic_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vbicv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vbic_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vbicv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vbic_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vbicdi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vbicq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vbicv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vbicq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vbicv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vbicq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vbicv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vbicq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vbicv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vbicq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vbicv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vbicq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vbicv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vbicq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vbicv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vbicq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vbicv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vorn_s8 (int8x8_t __a, int8x8_t __b)
{
  return (int8x8_t)__builtin_neon_vornv8qi (__a, __b, 1);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vorn_s16 (int16x4_t __a, int16x4_t __b)
{
  return (int16x4_t)__builtin_neon_vornv4hi (__a, __b, 1);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vorn_s32 (int32x2_t __a, int32x2_t __b)
{
  return (int32x2_t)__builtin_neon_vornv2si (__a, __b, 1);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vorn_s64 (int64x1_t __a, int64x1_t __b)
{
  return (int64x1_t)__builtin_neon_vorndi (__a, __b, 1);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vorn_u8 (uint8x8_t __a, uint8x8_t __b)
{
  return (uint8x8_t)__builtin_neon_vornv8qi ((int8x8_t) __a, (int8x8_t) __b, 0);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vorn_u16 (uint16x4_t __a, uint16x4_t __b)
{
  return (uint16x4_t)__builtin_neon_vornv4hi ((int16x4_t) __a, (int16x4_t) __b, 0);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vorn_u32 (uint32x2_t __a, uint32x2_t __b)
{
  return (uint32x2_t)__builtin_neon_vornv2si ((int32x2_t) __a, (int32x2_t) __b, 0);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vorn_u64 (uint64x1_t __a, uint64x1_t __b)
{
  return (uint64x1_t)__builtin_neon_vorndi ((int64x1_t) __a, (int64x1_t) __b, 0);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vornq_s8 (int8x16_t __a, int8x16_t __b)
{
  return (int8x16_t)__builtin_neon_vornv16qi (__a, __b, 1);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vornq_s16 (int16x8_t __a, int16x8_t __b)
{
  return (int16x8_t)__builtin_neon_vornv8hi (__a, __b, 1);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vornq_s32 (int32x4_t __a, int32x4_t __b)
{
  return (int32x4_t)__builtin_neon_vornv4si (__a, __b, 1);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vornq_s64 (int64x2_t __a, int64x2_t __b)
{
  return (int64x2_t)__builtin_neon_vornv2di (__a, __b, 1);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vornq_u8 (uint8x16_t __a, uint8x16_t __b)
{
  return (uint8x16_t)__builtin_neon_vornv16qi ((int8x16_t) __a, (int8x16_t) __b, 0);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vornq_u16 (uint16x8_t __a, uint16x8_t __b)
{
  return (uint16x8_t)__builtin_neon_vornv8hi ((int16x8_t) __a, (int16x8_t) __b, 0);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vornq_u32 (uint32x4_t __a, uint32x4_t __b)
{
  return (uint32x4_t)__builtin_neon_vornv4si ((int32x4_t) __a, (int32x4_t) __b, 0);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vornq_u64 (uint64x2_t __a, uint64x2_t __b)
{
  return (uint64x2_t)__builtin_neon_vornv2di ((int64x2_t) __a, (int64x2_t) __b, 0);
}


__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s8 (int8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv8qi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s16 (int16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s32 (int32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_s64 (int64x1_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_f32 (float32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u8 (uint8x8_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u16 (uint16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u32 (uint32x2_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_u64 (uint64x1_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline poly8x8_t __attribute__ ((__always_inline__))
vreinterpret_p8_p16 (poly16x4_t __a)
{
  return (poly8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s8 (int8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv16qi (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s16 (int16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s32 (int32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_s64 (int64x2_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_f32 (float32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u8 (uint8x16_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u16 (uint16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u32 (uint32x4_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_u64 (uint64x2_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline poly8x16_t __attribute__ ((__always_inline__))
vreinterpretq_p8_p16 (poly16x8_t __a)
{
  return (poly8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s8 (int8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s16 (int16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv4hi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s32 (int32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_s64 (int64x1_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_f32 (float32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u8 (uint8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u16 (uint16x4_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u32 (uint32x2_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_u64 (uint64x1_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline poly16x4_t __attribute__ ((__always_inline__))
vreinterpret_p16_p8 (poly8x8_t __a)
{
  return (poly16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s8 (int8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s16 (int16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv8hi (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s32 (int32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_s64 (int64x2_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_f32 (float32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u8 (uint8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u16 (uint16x8_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u32 (uint32x4_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_u64 (uint64x2_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline poly16x8_t __attribute__ ((__always_inline__))
vreinterpretq_p16_p8 (poly8x16_t __a)
{
  return (poly16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s8 (int8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s16 (int16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s32 (int32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv2si (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_s64 (int64x1_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfdi (__a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u8 (uint8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi ((int8x8_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u16 (uint16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi ((int16x4_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u32 (uint32x2_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv2si ((int32x2_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_u64 (uint64x1_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfdi ((int64x1_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_p8 (poly8x8_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv8qi ((int8x8_t) __a);
}

__extension__ static __inline float32x2_t __attribute__ ((__always_inline__))
vreinterpret_f32_p16 (poly16x4_t __a)
{
  return (float32x2_t)__builtin_neon_vreinterpretv2sfv4hi ((int16x4_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s8 (int8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s16 (int16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s32 (int32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv4si (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_s64 (int64x2_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv2di (__a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u8 (uint8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi ((int8x16_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u16 (uint16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi ((int16x8_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u32 (uint32x4_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv4si ((int32x4_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_u64 (uint64x2_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv2di ((int64x2_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_p8 (poly8x16_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv16qi ((int8x16_t) __a);
}

__extension__ static __inline float32x4_t __attribute__ ((__always_inline__))
vreinterpretq_f32_p16 (poly16x8_t __a)
{
  return (float32x4_t)__builtin_neon_vreinterpretv4sfv8hi ((int16x8_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s8 (int8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s16 (int16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_s32 (int32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2si (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_f32 (float32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2sf (__a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u8 (uint8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u16 (uint16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u32 (uint32x2_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv2si ((int32x2_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_u64 (uint64x1_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdidi ((int64x1_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_p8 (poly8x8_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int64x1_t __attribute__ ((__always_inline__))
vreinterpret_s64_p16 (poly16x4_t __a)
{
  return (int64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s8 (int8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s16 (int16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_s32 (int32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4si (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_f32 (float32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4sf (__a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u8 (uint8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u16 (uint16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u32 (uint32x4_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div4si ((int32x4_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_u64 (uint64x2_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div2di ((int64x2_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_p8 (poly8x16_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline int64x2_t __attribute__ ((__always_inline__))
vreinterpretq_s64_p16 (poly16x8_t __a)
{
  return (int64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s8 (int8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s16 (int16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s32 (int32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2si (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_s64 (int64x1_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdidi (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_f32 (float32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2sf (__a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u8 (uint8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u16 (uint16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_u32 (uint32x2_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_p8 (poly8x8_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint64x1_t __attribute__ ((__always_inline__))
vreinterpret_u64_p16 (poly16x4_t __a)
{
  return (uint64x1_t)__builtin_neon_vreinterpretdiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s8 (int8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s16 (int16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s32 (int32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4si (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_s64 (int64x2_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div2di (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_f32 (float32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4sf (__a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u8 (uint8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u16 (uint16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_u32 (uint32x4_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div4si ((int32x4_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_p8 (poly8x16_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div16qi ((int8x16_t) __a);
}

__extension__ static __inline uint64x2_t __attribute__ ((__always_inline__))
vreinterpretq_u64_p16 (poly16x8_t __a)
{
  return (uint64x2_t)__builtin_neon_vreinterpretv2div8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s16 (int16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s32 (int32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_s64 (int64x1_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_f32 (float32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u8 (uint8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u16 (uint16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u32 (uint32x2_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_u64 (uint64x1_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_p8 (poly8x8_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int8x8_t __attribute__ ((__always_inline__))
vreinterpret_s8_p16 (poly16x4_t __a)
{
  return (int8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s16 (int16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s32 (int32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_s64 (int64x2_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_f32 (float32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u8 (uint8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u16 (uint16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u32 (uint32x4_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_u64 (uint64x2_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_p8 (poly8x16_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int8x16_t __attribute__ ((__always_inline__))
vreinterpretq_s8_p16 (poly16x8_t __a)
{
  return (int8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s8 (int8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s32 (int32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_s64 (int64x1_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_f32 (float32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u8 (uint8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u16 (uint16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u32 (uint32x2_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_u64 (uint64x1_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_p8 (poly8x8_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline int16x4_t __attribute__ ((__always_inline__))
vreinterpret_s16_p16 (poly16x4_t __a)
{
  return (int16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s8 (int8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s32 (int32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_s64 (int64x2_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_f32 (float32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u8 (uint8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u16 (uint16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u32 (uint32x4_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_u64 (uint64x2_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_p8 (poly8x16_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline int16x8_t __attribute__ ((__always_inline__))
vreinterpretq_s16_p16 (poly16x8_t __a)
{
  return (int16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s8 (int8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s16 (int16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_s64 (int64x1_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2sidi (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_f32 (float32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv2sf (__a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u8 (uint8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u16 (uint16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u32 (uint32x2_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv2si ((int32x2_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_u64 (uint64x1_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2sidi ((int64x1_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_p8 (poly8x8_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline int32x2_t __attribute__ ((__always_inline__))
vreinterpret_s32_p16 (poly16x4_t __a)
{
  return (int32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s8 (int8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s16 (int16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_s64 (int64x2_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv2di (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_f32 (float32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv4sf (__a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u8 (uint8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u16 (uint16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u32 (uint32x4_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv4si ((int32x4_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_u64 (uint64x2_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv2di ((int64x2_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_p8 (poly8x16_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline int32x4_t __attribute__ ((__always_inline__))
vreinterpretq_s32_p16 (poly16x8_t __a)
{
  return (int32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s8 (int8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv8qi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s16 (int16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s32 (int32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2si (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_s64 (int64x1_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qidi (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_f32 (float32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2sf (__a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u16 (uint16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u32 (uint32x2_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_u64 (uint64x1_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qidi ((int64x1_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_p8 (poly8x8_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint8x8_t __attribute__ ((__always_inline__))
vreinterpret_u8_p16 (poly16x4_t __a)
{
  return (uint8x8_t)__builtin_neon_vreinterpretv8qiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s8 (int8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv16qi (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s16 (int16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s32 (int32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4si (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_s64 (int64x2_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv2di (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_f32 (float32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4sf (__a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u16 (uint16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u32 (uint32x4_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv4si ((int32x4_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_u64 (uint64x2_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv2di ((int64x2_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_p8 (poly8x16_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint8x16_t __attribute__ ((__always_inline__))
vreinterpretq_u8_p16 (poly16x8_t __a)
{
  return (uint8x16_t)__builtin_neon_vreinterpretv16qiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s8 (int8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s16 (int16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv4hi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s32 (int32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2si (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_s64 (int64x1_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hidi (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_f32 (float32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2sf (__a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u8 (uint8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u32 (uint32x2_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv2si ((int32x2_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_u64 (uint64x1_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hidi ((int64x1_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_p8 (poly8x8_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint16x4_t __attribute__ ((__always_inline__))
vreinterpret_u16_p16 (poly16x4_t __a)
{
  return (uint16x4_t)__builtin_neon_vreinterpretv4hiv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s8 (int8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s16 (int16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv8hi (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s32 (int32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4si (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_s64 (int64x2_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv2di (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_f32 (float32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4sf (__a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u8 (uint8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u32 (uint32x4_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv4si ((int32x4_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_u64 (uint64x2_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv2di ((int64x2_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_p8 (poly8x16_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint16x8_t __attribute__ ((__always_inline__))
vreinterpretq_u16_p16 (poly16x8_t __a)
{
  return (uint16x8_t)__builtin_neon_vreinterpretv8hiv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s8 (int8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s16 (int16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s32 (int32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv2si (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_s64 (int64x1_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2sidi (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_f32 (float32x2_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv2sf (__a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u8 (uint8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u16 (uint16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_u64 (uint64x1_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2sidi ((int64x1_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_p8 (poly8x8_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv8qi ((int8x8_t) __a);
}

__extension__ static __inline uint32x2_t __attribute__ ((__always_inline__))
vreinterpret_u32_p16 (poly16x4_t __a)
{
  return (uint32x2_t)__builtin_neon_vreinterpretv2siv4hi ((int16x4_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s8 (int8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s16 (int16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s32 (int32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv4si (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_s64 (int64x2_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv2di (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_f32 (float32x4_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv4sf (__a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u8 (uint8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u16 (uint16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_u64 (uint64x2_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv2di ((int64x2_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_p8 (poly8x16_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv16qi ((int8x16_t) __a);
}

__extension__ static __inline uint32x4_t __attribute__ ((__always_inline__))
vreinterpretq_u32_p16 (poly16x8_t __a)
{
  return (uint32x4_t)__builtin_neon_vreinterpretv4siv8hi ((int16x8_t) __a);
}
# 33 "../../../simd/simd-neon.h" 2
# 51 "../../../simd/simd-neon.h"
typedef float32x4_t V;
# 79 "../../../simd/simd-neon.h"
static inline V LD( const R *x, INT ivs, const R *aligned_like );
static inline void ST( R *x, V v, INT ovs, const R *aligned_like );
static inline V LDA( const R *x, INT ivs, const R *aligned_like );
static inline void STA( R *x, V v, INT ovs, const R *aligned_like );
# 95 "../../../simd/simd-neon.h"
static inline V VADD( V a, V b );
static inline V VSUB( V a, V b );
static inline V VMUL( V a, V b );
static inline V VFMA( V a, V b, V c );
static inline V VFMS( V a, V b, V c );
static inline V VFMAI( V b, V c );
static inline V VFNMS( V a, V b, V c );
static inline V VFMNMSI( V b, V c );
static inline V VCONJ(V x);
static inline V VBYI(V x);
static inline V VZMUL(V tx, V sr);
static inline V VZMULJ(V tx, V sr);
static inline V VZMULI(V tx, V sr);
static inline V VZMULIJ(V tx, V sr);
# 117 "../../../simd/simd-neon.h"
typedef float32x4x2_t V2;
typedef float32x2_t V3;


static inline V _flip_ri( V x );
static inline V _vxor( V x, V y );

static inline V2 _vtrn( V a, V b );

static inline V2 _vtrnx( V a, V b );
# 157 "../../../simd/simd-neon.h"
typedef struct { char b[sizeof(float32x2_t)]; } f32x2_sz;
typedef struct { char b[sizeof(float32x4_t)]; } f32x4_sz;
# 174 "../../../simd/simd-neon.h"
static inline V LD( const R *x, INT ivs, const R *aligned_like ) {
 V y;

 ;
 ;


 if ( ivs == 2 ) {

  if ( !((unsigned)aligned_like % 16) ) {

   __asm__ __volatile__(
    "vld1.32 {%q1}, [%0,:128] \n"
    : "+r" (x), "=&w" (y)
    : "m" (*((f32x4_sz *)x))
   );
  } else {

   __asm__ __volatile__(
    "vld1.32 {%q1}, [%0] \n"
    : "+r" (x), "=&w" (y)
    : "m" (*((f32x4_sz *)x))
   );
  }
 } else {
  if ( !ivs ) {




   __asm__ __volatile__(
    "vld1.32 {%e1}, [%0]     \n\t"
    "vmov.i64 %f1, #0        \n\t"
    "vorr %f1, %e1, %e1        \n"
    : "+r" (x), "=&w" (y)
    : "m" (*((f32x2_sz *)x))
   );
  } else {




   volatile R *xp = (R *)x;

   __asm__ __volatile__(
    "lsl %2, %2, %3              \n\t"
    "vld1.32 {%e0}, [%1,:64], %2 \n\t"
    "vld1.32 {%f0}, [%1]           \n"
    : "=&w" (y), "+r" (xp), "+r" (ivs)
    : "M" (2),
      "m" (*((f32x2_sz *)xp)),
      "m" (*((f32x4_sz *)(xp+2*ivs)))
   );

  }
 }

 return y;
}
static inline void ST( R *x, V v, INT ovs, const R *aligned_like ) {
 ;
 ;


 if ( ovs == 2 ) {

  if ( !((unsigned)aligned_like % 16) ) {

   __asm__ __volatile__(
    "vst1.32 {%q2}, [%0,:128]  \n\t"
    : "+r" (x), "=m" (*((f32x4_sz *)x))
    : "w" (v)
   );
  } else {

   __asm__ __volatile__(
    "vst1.32 {%q2}, [%0]  \n\t"
    : "+r" (x), "=m" (*((f32x4_sz *)x))
    : "w" (v)
   );
  }
 } else {
  if ( ! ovs ) {





   __asm__ __volatile__(
    "vst1.32 {%f2}, [%0]  \n\t"
    : "+r" (x), "=m" (*((f32x2_sz *)x))
    : "w" (v)
   );
  } else {




   volatile R *xp = x;

   __asm__ __volatile__(
    "lsl %1, %1, %5              \n\t"
    "vst1.32 {%e4}, [%0,:64], %1 \n\t"
    "vst1.32 {%f4}, [%0]           \n"
    : "+r" (xp), "+r" (ovs),
      "=m" (*((f32x2_sz *)xp)),
      "=m" (*((f32x4_sz *)(xp+2*ovs)))
    : "w" (v), "M" (2)
   );

  }
 }

}



static inline V LDA( const R *x, INT ivs, const R *aligned_like ) {
 (void)aligned_like;
 (void)ivs;

 V y;

 ;
 ;

 const f32x4_sz *pA = (f32x4_sz *)x;
 __asm__ __volatile__(
  "vld1.32 {%q0}, [%1,:128] \n"
  : "=w" (y)
  : "r" (x), "m" (*pA)
 );
 return y;
}
static inline void STA( R *x, V v, INT ovs, const R *aligned_like ) {
 (void)aligned_like;
 (void)ovs;

 ;
 ;

 f32x4_sz *pA = (f32x4_sz *)x;
 __asm__ __volatile__(
  "vst1.32 {%q1}, [%2,:128] \n"
  : "=m" (*pA)
  : "w" (v), "r" (x)
 );
}



static inline V VADD( V a, V b ) {
 V c;
 __asm__ __volatile__( "vadd.f32 %q0, %q1, %q2 \n" : "=w" (c) : "w" (a), "w" (b) );
 return c;
}
static inline V VSUB( V a, V b ) {
 V c;
 __asm__ __volatile__( "vsub.f32 %q0, %q1, %q2 \n" : "=w" (c) : "w" (a), "w" (b) );
 return c;
}
static inline V VMUL( V a, V b ) {
 V c;
 __asm__ __volatile__( "vmul.f32 %q0, %q1, %q2 \n" : "=w" (c) : "w" (a), "w" (b) );
 return c;
}
static inline V _vxor( V x, V y ) {
 V z;
 __asm__ __volatile__( "veor.8 %q0, %q1, %q2 \n" : "=w" (z) : "w" (x), "w" (y) );
 return z;
}
# 437 "../../../simd/simd-neon.h"
static inline void STN4(R *x, V v0, V v1, V v2, V v3, INT ovs) {
 (void)ovs;

 V2 t0, t1, t2, t3;

 t0 = _vtrn( v0, v2 );
 t1 = _vtrn( v1, v3 );
 t2 = _vtrn( t0.val[0], t1.val[0] );
 STA(x, t2.val[0], 0, 0);
 STA(x + ovs, t2.val[1], 0, 0);
 t3 = _vtrn( t0.val[1], t1.val[1] );
 STA(x + 2 * ovs, t3.val[0], 0, 0);
 STA(x + 3 * ovs, t3.val[1], 0, 0);
}

static inline V VFMA( V a, V b, V c ) {
 return VADD(c,VMUL(a,b));
}
static inline V VFMS( V a, V b, V c ) {
 return VSUB(VMUL(a,b),c);
}
static inline V VFMAI( V b, V c ) {
 return VADD(c,VBYI(b));
}
static inline V VFNMS( V a, V b, V c ) {
 return VSUB(c,VMUL(a,b));
}
static inline V VFMNMSI( V b, V c ) {
 return VSUB(c,VBYI(b));
}
# 476 "../../../simd/simd-neon.h"
static inline V VZMUL(V tx, V sr) {
 V2 tri = _vtrn(tx,tx);
 tri.val[0] = VMUL(tri.val[0], sr);
 sr = VBYI(sr);
 return VFMA( tri.val[1], sr, tri.val[0] );
}
static inline V VZMULJ(V tx, V sr) {
 V2 tri = _vtrn(tx,tx);
 tri.val[0] = VMUL(tri.val[0], sr);
 sr = VBYI(sr);
 return VFNMS(tri.val[1], sr, tri.val[0]);
}
static inline V VZMULI(V tx, V sr) {
 V2 tri = _vtrn(tx,tx);
 tri.val[1] = VMUL(tri.val[1], sr);
 sr = VBYI(sr);
 return VFMS( tri.val[0], sr, tri.val[1] );
}
static inline V VZMULIJ(V tx, V sr) {
 V2 tri = _vtrn(tx,tx);
 tri.val[1] = VMUL(tri.val[1], sr);
 sr = VBYI(sr);
 return VFMA( tri.val[0], sr, tri.val[1] );
}
static inline V VBYI(V x) {
 return _flip_ri( VCONJ(x) );
}
static inline V VCONJ(V x) {
 uint32x2_t m1 = vcreate_u32( (uint64_t) 0x0000000080000000 );
 V mask = ((float32x4_t)(vcombine_u32(m1, m1)));
 return _vxor( mask, x );
}
static inline V BYTW1(const R *t, V sr) {
 const V *twp = (const V *)t;
 V tx = twp[0];
 V2 tri = _vtrn( tx, tx );
 tri.val[0] = VMUL(tri.val[0], sr);
 sr = VBYI(sr);
 return VFMA( tri.val[1], sr, tri.val[0] );
}
static inline V BYTWJ1(const R *t, V sr) {
 const V *twp = (const V *)t;
 V tx = twp[0];
 V2 tri = _vtrn(tx, tx);
 tri.val[0] = VMUL(tri.val[0], sr);
 sr = VBYI(sr);
 return VFNMS( tri.val[1], sr, tri.val[0] );
}
static inline V BYTW2(const R *t, V sr) {
 const V *twp = (const V *)t;
 V si = _flip_ri(sr);
 V tr = twp[0];
 V ti = twp[1];
 return VFMA(ti, si, VMUL(tr, sr) );
}
static inline V BYTWJ2(const R *t, V sr) {
 const V *twp = (const V *)t;
 V si = _flip_ri(sr);
 V tr = twp[0];
 V ti = twp[1];
 return VFMS( tr, sr, VMUL(ti, si) );
}

static inline V _flip_ri( V x ) {
 V2 y;
 y.val[1] = x;
 y = _vtrnx( y.val[0], y.val[1] );
 y = _vtrnx( y.val[1], y.val[0] );
 return y.val[0];
}





static inline V2 _vtrn( V a, V b ) {
 V c, d;
 __asm__ __volatile__(
  "vorr.32 %q0, %q2, %q2 \n\t"
  "vorr.32 %q1, %q3, %q3 \n\t"
  "vtrn.32 %q0, %q1      \n"
  : "+w" (c), "+w" (d)
  : "w" (a), "w" (b)
 );
 V2 e = { .val = { c, d } };
 return e;
}
static inline V2 _vtrnx( V a, V b ) {
 __asm__ __volatile__(
  "vtrn.32 %q0, %q1      \n"
  : "+w" (a), "+w" (b)
 );
 V2 c = { .val = { a, b } };
 return c;
}
# 45 "../../../simd/simd.h" 2
# 22 "../../../dft/simd/n1f.h" 2


extern const kdft_genus fftwf_dft_n1fsimd_genus;
# 771 "n1fv_64.c" 2

static void n1fv_64(const R *ri, const R *ii, R *ro, R *io, stride is, stride os, INT v, INT ivs, INT ovs)
{
     const V KP471396736 = vdupq_n_f32( (float32_t) +0.471396736825997648556387625905254377657460319 );
     const V KP881921264 = vdupq_n_f32( (float32_t) +0.881921264348355029712756863660388349508442621 );
     const V KP098017140 = vdupq_n_f32( (float32_t) +0.098017140329560601994195563888641845861136673 );
     const V KP995184726 = vdupq_n_f32( (float32_t) +0.995184726672196886244836953109479921575474869 );
     const V KP290284677 = vdupq_n_f32( (float32_t) +0.290284677254462367636192375817395274691476278 );
     const V KP956940335 = vdupq_n_f32( (float32_t) +0.956940335732208864935797886980269969482849206 );
     const V KP634393284 = vdupq_n_f32( (float32_t) +0.634393284163645498215171613225493370675687095 );
     const V KP773010453 = vdupq_n_f32( (float32_t) +0.773010453362736960810906609758469800971041293 );
     const V KP555570233 = vdupq_n_f32( (float32_t) +0.555570233019602224742830813948532874374937191 );
     const V KP831469612 = vdupq_n_f32( (float32_t) +0.831469612302545237078788377617905756738560812 );
     const V KP980785280 = vdupq_n_f32( (float32_t) +0.980785280403230449126182236134239036973933731 );
     const V KP195090322 = vdupq_n_f32( (float32_t) +0.195090322016128267848284868477022240927691618 );
     const V KP382683432 = vdupq_n_f32( (float32_t) +0.382683432365089771728459984030398866761344562 );
     const V KP923879532 = vdupq_n_f32( (float32_t) +0.923879532511286756128183189396788286822416626 );
     const V KP707106781 = vdupq_n_f32( (float32_t) +0.707106781186547524400844362104849039284835938 );
     INT i;
     const R *xi;
     R *xo;
     xi = ri;
     xo = ro;
     for (i = v; i > 0; i = i - 2, xi = xi + (2 * ivs), xo = xo + (2 * ovs), (is) = (is) ^ fftwf_an_INT_guaranteed_to_be_zero, (os) = (os) ^ fftwf_an_INT_guaranteed_to_be_zero) {
   V T4p, T5q, Tb, T39, T2n, T3A, T6f, T6T, Tq, T3B, T6i, T76, T2i, T3a, T4w;
   V T5r, TI, T2p, T6C, T6V, T3h, T3E, T4L, T5u, TZ, T2q, T6F, T6U, T3e, T3D;
   V T4E, T5t, T23, T2N, T6t, T71, T6w, T72, T2c, T2O, T3t, T41, T5f, T5R, T5k;
   V T5S, T3w, T42, T1s, T2K, T6m, T6Y, T6p, T6Z, T1B, T2L, T3m, T3Y, T4Y, T5O;
   V T53, T5P, T3p, T3Z;
   {
        V T3, T4n, T2m, T4o, T6, T5p, T9, T5o;
        {
      V T1, T2, T2k, T2l;
      T1 = LD(&(xi[0]), ivs, &(xi[0]));
      T2 = LD(&(xi[(is * 32)]), ivs, &(xi[0]));
      T3 = VSUB(T1, T2);
      T4n = VADD(T1, T2);
      T2k = LD(&(xi[(is * 16)]), ivs, &(xi[0]));
      T2l = LD(&(xi[(is * 48)]), ivs, &(xi[0]));
      T2m = VSUB(T2k, T2l);
      T4o = VADD(T2k, T2l);
        }
        {
      V T4, T5, T7, T8;
      T4 = LD(&(xi[(is * 8)]), ivs, &(xi[0]));
      T5 = LD(&(xi[(is * 40)]), ivs, &(xi[0]));
      T6 = VSUB(T4, T5);
      T5p = VADD(T4, T5);
      T7 = LD(&(xi[(is * 56)]), ivs, &(xi[0]));
      T8 = LD(&(xi[(is * 24)]), ivs, &(xi[0]));
      T9 = VSUB(T7, T8);
      T5o = VADD(T7, T8);
        }
        T4p = VSUB(T4n, T4o);
        T5q = VSUB(T5o, T5p);
        {
      V Ta, T2j, T6d, T6e;
      Ta = VMUL(KP707106781, VADD(T6, T9));
      Tb = VADD(T3, Ta);
      T39 = VSUB(T3, Ta);
      T2j = VMUL(KP707106781, VSUB(T9, T6));
      T2n = VSUB(T2j, T2m);
      T3A = VADD(T2m, T2j);
      T6d = VADD(T4n, T4o);
      T6e = VADD(T5p, T5o);
      T6f = VADD(T6d, T6e);
      T6T = VSUB(T6d, T6e);
        }
   }
   {
        V Te, T4q, To, T4u, Th, T4r, Tl, T4t;
        {
      V Tc, Td, Tm, Tn;
      Tc = LD(&(xi[(is * 4)]), ivs, &(xi[0]));
      Td = LD(&(xi[(is * 36)]), ivs, &(xi[0]));
      Te = VSUB(Tc, Td);
      T4q = VADD(Tc, Td);
      Tm = LD(&(xi[(is * 12)]), ivs, &(xi[0]));
      Tn = LD(&(xi[(is * 44)]), ivs, &(xi[0]));
      To = VSUB(Tm, Tn);
      T4u = VADD(Tm, Tn);
        }
        {
      V Tf, Tg, Tj, Tk;
      Tf = LD(&(xi[(is * 20)]), ivs, &(xi[0]));
      Tg = LD(&(xi[(is * 52)]), ivs, &(xi[0]));
      Th = VSUB(Tf, Tg);
      T4r = VADD(Tf, Tg);
      Tj = LD(&(xi[(is * 60)]), ivs, &(xi[0]));
      Tk = LD(&(xi[(is * 28)]), ivs, &(xi[0]));
      Tl = VSUB(Tj, Tk);
      T4t = VADD(Tj, Tk);
        }
        {
      V Ti, Tp, T6g, T6h;
      Ti = VFNMS(KP382683432, Th, VMUL(KP923879532, Te));
      Tp = VFMA(KP923879532, Tl, VMUL(KP382683432, To));
      Tq = VADD(Ti, Tp);
      T3B = VSUB(Tp, Ti);
      T6g = VADD(T4q, T4r);
      T6h = VADD(T4t, T4u);
      T6i = VADD(T6g, T6h);
      T76 = VSUB(T6h, T6g);
        }
        {
      V T2g, T2h, T4s, T4v;
      T2g = VFNMS(KP923879532, To, VMUL(KP382683432, Tl));
      T2h = VFMA(KP382683432, Te, VMUL(KP923879532, Th));
      T2i = VSUB(T2g, T2h);
      T3a = VADD(T2h, T2g);
      T4s = VSUB(T4q, T4r);
      T4v = VSUB(T4t, T4u);
      T4w = VMUL(KP707106781, VADD(T4s, T4v));
      T5r = VMUL(KP707106781, VSUB(T4v, T4s));
        }
   }
   {
        V Tu, T4F, TG, T4G, TB, T4J, TD, T4I;
        {
      V Ts, Tt, TE, TF;
      Ts = LD(&(xi[(is * 62)]), ivs, &(xi[0]));
      Tt = LD(&(xi[(is * 30)]), ivs, &(xi[0]));
      Tu = VSUB(Ts, Tt);
      T4F = VADD(Ts, Tt);
      TE = LD(&(xi[(is * 14)]), ivs, &(xi[0]));
      TF = LD(&(xi[(is * 46)]), ivs, &(xi[0]));
      TG = VSUB(TE, TF);
      T4G = VADD(TE, TF);
      {
    V Tv, Tw, Tx, Ty, Tz, TA;
    Tv = LD(&(xi[(is * 6)]), ivs, &(xi[0]));
    Tw = LD(&(xi[(is * 38)]), ivs, &(xi[0]));
    Tx = VSUB(Tv, Tw);
    Ty = LD(&(xi[(is * 54)]), ivs, &(xi[0]));
    Tz = LD(&(xi[(is * 22)]), ivs, &(xi[0]));
    TA = VSUB(Ty, Tz);
    TB = VMUL(KP707106781, VADD(Tx, TA));
    T4J = VADD(Tv, Tw);
    TD = VMUL(KP707106781, VSUB(TA, Tx));
    T4I = VADD(Ty, Tz);
      }
        }
        {
      V TC, TH, T6A, T6B;
      TC = VADD(Tu, TB);
      TH = VSUB(TD, TG);
      TI = VFMA(KP195090322, TC, VMUL(KP980785280, TH));
      T2p = VFNMS(KP195090322, TH, VMUL(KP980785280, TC));
      T6A = VADD(T4F, T4G);
      T6B = VADD(T4J, T4I);
      T6C = VADD(T6A, T6B);
      T6V = VSUB(T6A, T6B);
        }
        {
      V T3f, T3g, T4H, T4K;
      T3f = VSUB(Tu, TB);
      T3g = VADD(TG, TD);
      T3h = VFNMS(KP555570233, T3g, VMUL(KP831469612, T3f));
      T3E = VFMA(KP555570233, T3f, VMUL(KP831469612, T3g));
      T4H = VSUB(T4F, T4G);
      T4K = VSUB(T4I, T4J);
      T4L = VFNMS(KP382683432, T4K, VMUL(KP923879532, T4H));
      T5u = VFMA(KP382683432, T4H, VMUL(KP923879532, T4K));
        }
   }
   {
        V TS, T4z, TW, T4y, TP, T4C, TX, T4B;
        {
      V TQ, TR, TU, TV;
      TQ = LD(&(xi[(is * 18)]), ivs, &(xi[0]));
      TR = LD(&(xi[(is * 50)]), ivs, &(xi[0]));
      TS = VSUB(TQ, TR);
      T4z = VADD(TQ, TR);
      TU = LD(&(xi[(is * 2)]), ivs, &(xi[0]));
      TV = LD(&(xi[(is * 34)]), ivs, &(xi[0]));
      TW = VSUB(TU, TV);
      T4y = VADD(TU, TV);
      {
    V TJ, TK, TL, TM, TN, TO;
    TJ = LD(&(xi[(is * 58)]), ivs, &(xi[0]));
    TK = LD(&(xi[(is * 26)]), ivs, &(xi[0]));
    TL = VSUB(TJ, TK);
    TM = LD(&(xi[(is * 10)]), ivs, &(xi[0]));
    TN = LD(&(xi[(is * 42)]), ivs, &(xi[0]));
    TO = VSUB(TM, TN);
    TP = VMUL(KP707106781, VSUB(TL, TO));
    T4C = VADD(TM, TN);
    TX = VMUL(KP707106781, VADD(TO, TL));
    T4B = VADD(TJ, TK);
      }
        }
        {
      V TT, TY, T6D, T6E;
      TT = VSUB(TP, TS);
      TY = VADD(TW, TX);
      TZ = VFNMS(KP195090322, TY, VMUL(KP980785280, TT));
      T2q = VFMA(KP980785280, TY, VMUL(KP195090322, TT));
      T6D = VADD(T4y, T4z);
      T6E = VADD(T4C, T4B);
      T6F = VADD(T6D, T6E);
      T6U = VSUB(T6D, T6E);
        }
        {
      V T3c, T3d, T4A, T4D;
      T3c = VSUB(TW, TX);
      T3d = VADD(TS, TP);
      T3e = VFMA(KP831469612, T3c, VMUL(KP555570233, T3d));
      T3D = VFNMS(KP555570233, T3c, VMUL(KP831469612, T3d));
      T4A = VSUB(T4y, T4z);
      T4D = VSUB(T4B, T4C);
      T4E = VFMA(KP923879532, T4A, VMUL(KP382683432, T4D));
      T5t = VFNMS(KP382683432, T4A, VMUL(KP923879532, T4D));
        }
   }
   {
        V T1F, T55, T2a, T56, T1M, T5h, T27, T5g, T58, T59, T1U, T5a, T25, T5b, T5c;
        V T21, T5d, T24;
        {
      V T1D, T1E, T28, T29;
      T1D = LD(&(xi[(is * 63)]), ivs, &(xi[(is * 1)]));
      T1E = LD(&(xi[(is * 31)]), ivs, &(xi[(is * 1)]));
      T1F = VSUB(T1D, T1E);
      T55 = VADD(T1D, T1E);
      T28 = LD(&(xi[(is * 15)]), ivs, &(xi[(is * 1)]));
      T29 = LD(&(xi[(is * 47)]), ivs, &(xi[(is * 1)]));
      T2a = VSUB(T28, T29);
      T56 = VADD(T28, T29);
        }
        {
      V T1G, T1H, T1I, T1J, T1K, T1L;
      T1G = LD(&(xi[(is * 7)]), ivs, &(xi[(is * 1)]));
      T1H = LD(&(xi[(is * 39)]), ivs, &(xi[(is * 1)]));
      T1I = VSUB(T1G, T1H);
      T1J = LD(&(xi[(is * 55)]), ivs, &(xi[(is * 1)]));
      T1K = LD(&(xi[(is * 23)]), ivs, &(xi[(is * 1)]));
      T1L = VSUB(T1J, T1K);
      T1M = VMUL(KP707106781, VADD(T1I, T1L));
      T5h = VADD(T1G, T1H);
      T27 = VMUL(KP707106781, VSUB(T1L, T1I));
      T5g = VADD(T1J, T1K);
        }
        {
      V T1Q, T1T, T1X, T20;
      {
    V T1O, T1P, T1R, T1S;
    T1O = LD(&(xi[(is * 3)]), ivs, &(xi[(is * 1)]));
    T1P = LD(&(xi[(is * 35)]), ivs, &(xi[(is * 1)]));
    T1Q = VSUB(T1O, T1P);
    T58 = VADD(T1O, T1P);
    T1R = LD(&(xi[(is * 19)]), ivs, &(xi[(is * 1)]));
    T1S = LD(&(xi[(is * 51)]), ivs, &(xi[(is * 1)]));
    T1T = VSUB(T1R, T1S);
    T59 = VADD(T1R, T1S);
      }
      T1U = VFNMS(KP382683432, T1T, VMUL(KP923879532, T1Q));
      T5a = VSUB(T58, T59);
      T25 = VFMA(KP382683432, T1Q, VMUL(KP923879532, T1T));
      {
    V T1V, T1W, T1Y, T1Z;
    T1V = LD(&(xi[(is * 59)]), ivs, &(xi[(is * 1)]));
    T1W = LD(&(xi[(is * 27)]), ivs, &(xi[(is * 1)]));
    T1X = VSUB(T1V, T1W);
    T5b = VADD(T1V, T1W);
    T1Y = LD(&(xi[(is * 11)]), ivs, &(xi[(is * 1)]));
    T1Z = LD(&(xi[(is * 43)]), ivs, &(xi[(is * 1)]));
    T20 = VSUB(T1Y, T1Z);
    T5c = VADD(T1Y, T1Z);
      }
      T21 = VFMA(KP923879532, T1X, VMUL(KP382683432, T20));
      T5d = VSUB(T5b, T5c);
      T24 = VFNMS(KP923879532, T20, VMUL(KP382683432, T1X));
        }
        {
      V T1N, T22, T6r, T6s;
      T1N = VADD(T1F, T1M);
      T22 = VADD(T1U, T21);
      T23 = VSUB(T1N, T22);
      T2N = VADD(T1N, T22);
      T6r = VADD(T55, T56);
      T6s = VADD(T5h, T5g);
      T6t = VADD(T6r, T6s);
      T71 = VSUB(T6r, T6s);
        }
        {
      V T6u, T6v, T26, T2b;
      T6u = VADD(T58, T59);
      T6v = VADD(T5b, T5c);
      T6w = VADD(T6u, T6v);
      T72 = VSUB(T6v, T6u);
      T26 = VSUB(T24, T25);
      T2b = VSUB(T27, T2a);
      T2c = VSUB(T26, T2b);
      T2O = VADD(T2b, T26);
        }
        {
      V T3r, T3s, T57, T5e;
      T3r = VSUB(T1F, T1M);
      T3s = VADD(T25, T24);
      T3t = VADD(T3r, T3s);
      T41 = VSUB(T3r, T3s);
      T57 = VSUB(T55, T56);
      T5e = VMUL(KP707106781, VADD(T5a, T5d));
      T5f = VADD(T57, T5e);
      T5R = VSUB(T57, T5e);
        }
        {
      V T5i, T5j, T3u, T3v;
      T5i = VSUB(T5g, T5h);
      T5j = VMUL(KP707106781, VSUB(T5d, T5a));
      T5k = VADD(T5i, T5j);
      T5S = VSUB(T5j, T5i);
      T3u = VADD(T2a, T27);
      T3v = VSUB(T21, T1U);
      T3w = VADD(T3u, T3v);
      T42 = VSUB(T3v, T3u);
        }
   }
   {
        V T1q, T4P, T1v, T4O, T1n, T50, T1w, T4Z, T4U, T4V, T18, T4W, T1z, T4R, T4S;
        V T1f, T4T, T1y;
        {
      V T1o, T1p, T1t, T1u;
      T1o = LD(&(xi[(is * 17)]), ivs, &(xi[(is * 1)]));
      T1p = LD(&(xi[(is * 49)]), ivs, &(xi[(is * 1)]));
      T1q = VSUB(T1o, T1p);
      T4P = VADD(T1o, T1p);
      T1t = LD(&(xi[(is * 1)]), ivs, &(xi[(is * 1)]));
      T1u = LD(&(xi[(is * 33)]), ivs, &(xi[(is * 1)]));
      T1v = VSUB(T1t, T1u);
      T4O = VADD(T1t, T1u);
        }
        {
      V T1h, T1i, T1j, T1k, T1l, T1m;
      T1h = LD(&(xi[(is * 57)]), ivs, &(xi[(is * 1)]));
      T1i = LD(&(xi[(is * 25)]), ivs, &(xi[(is * 1)]));
      T1j = VSUB(T1h, T1i);
      T1k = LD(&(xi[(is * 9)]), ivs, &(xi[(is * 1)]));
      T1l = LD(&(xi[(is * 41)]), ivs, &(xi[(is * 1)]));
      T1m = VSUB(T1k, T1l);
      T1n = VMUL(KP707106781, VSUB(T1j, T1m));
      T50 = VADD(T1k, T1l);
      T1w = VMUL(KP707106781, VADD(T1m, T1j));
      T4Z = VADD(T1h, T1i);
        }
        {
      V T14, T17, T1b, T1e;
      {
    V T12, T13, T15, T16;
    T12 = LD(&(xi[(is * 61)]), ivs, &(xi[(is * 1)]));
    T13 = LD(&(xi[(is * 29)]), ivs, &(xi[(is * 1)]));
    T14 = VSUB(T12, T13);
    T4U = VADD(T12, T13);
    T15 = LD(&(xi[(is * 13)]), ivs, &(xi[(is * 1)]));
    T16 = LD(&(xi[(is * 45)]), ivs, &(xi[(is * 1)]));
    T17 = VSUB(T15, T16);
    T4V = VADD(T15, T16);
      }
      T18 = VFNMS(KP923879532, T17, VMUL(KP382683432, T14));
      T4W = VSUB(T4U, T4V);
      T1z = VFMA(KP923879532, T14, VMUL(KP382683432, T17));
      {
    V T19, T1a, T1c, T1d;
    T19 = LD(&(xi[(is * 5)]), ivs, &(xi[(is * 1)]));
    T1a = LD(&(xi[(is * 37)]), ivs, &(xi[(is * 1)]));
    T1b = VSUB(T19, T1a);
    T4R = VADD(T19, T1a);
    T1c = LD(&(xi[(is * 21)]), ivs, &(xi[(is * 1)]));
    T1d = LD(&(xi[(is * 53)]), ivs, &(xi[(is * 1)]));
    T1e = VSUB(T1c, T1d);
    T4S = VADD(T1c, T1d);
      }
      T1f = VFMA(KP382683432, T1b, VMUL(KP923879532, T1e));
      T4T = VSUB(T4R, T4S);
      T1y = VFNMS(KP382683432, T1e, VMUL(KP923879532, T1b));
        }
        {
      V T1g, T1r, T6k, T6l;
      T1g = VSUB(T18, T1f);
      T1r = VSUB(T1n, T1q);
      T1s = VSUB(T1g, T1r);
      T2K = VADD(T1r, T1g);
      T6k = VADD(T4O, T4P);
      T6l = VADD(T50, T4Z);
      T6m = VADD(T6k, T6l);
      T6Y = VSUB(T6k, T6l);
        }
        {
      V T6n, T6o, T1x, T1A;
      T6n = VADD(T4R, T4S);
      T6o = VADD(T4U, T4V);
      T6p = VADD(T6n, T6o);
      T6Z = VSUB(T6o, T6n);
      T1x = VADD(T1v, T1w);
      T1A = VADD(T1y, T1z);
      T1B = VSUB(T1x, T1A);
      T2L = VADD(T1x, T1A);
        }
        {
      V T3k, T3l, T4Q, T4X;
      T3k = VSUB(T1v, T1w);
      T3l = VADD(T1f, T18);
      T3m = VADD(T3k, T3l);
      T3Y = VSUB(T3k, T3l);
      T4Q = VSUB(T4O, T4P);
      T4X = VMUL(KP707106781, VADD(T4T, T4W));
      T4Y = VADD(T4Q, T4X);
      T5O = VSUB(T4Q, T4X);
        }
        {
      V T51, T52, T3n, T3o;
      T51 = VSUB(T4Z, T50);
      T52 = VMUL(KP707106781, VSUB(T4W, T4T));
      T53 = VADD(T51, T52);
      T5P = VSUB(T52, T51);
      T3n = VADD(T1q, T1n);
      T3o = VSUB(T1z, T1y);
      T3p = VADD(T3n, T3o);
      T3Z = VSUB(T3o, T3n);
        }
   }
   {
        V T6N, T6R, T6Q, T6S;
        {
      V T6L, T6M, T6O, T6P;
      T6L = VADD(T6f, T6i);
      T6M = VADD(T6F, T6C);
      T6N = VADD(T6L, T6M);
      T6R = VSUB(T6L, T6M);
      T6O = VADD(T6m, T6p);
      T6P = VADD(T6t, T6w);
      T6Q = VADD(T6O, T6P);
      T6S = VBYI(VSUB(T6P, T6O));
        }
        ST(&(xo[(os * 32)]), VSUB(T6N, T6Q), ovs, &(xo[0]));
        ST(&(xo[(os * 16)]), VADD(T6R, T6S), ovs, &(xo[0]));
        ST(&(xo[0]), VADD(T6N, T6Q), ovs, &(xo[0]));
        ST(&(xo[(os * 48)]), VSUB(T6R, T6S), ovs, &(xo[0]));
   }
   {
        V T6j, T6G, T6y, T6H, T6q, T6x;
        T6j = VSUB(T6f, T6i);
        T6G = VSUB(T6C, T6F);
        T6q = VSUB(T6m, T6p);
        T6x = VSUB(T6t, T6w);
        T6y = VMUL(KP707106781, VADD(T6q, T6x));
        T6H = VMUL(KP707106781, VSUB(T6x, T6q));
        {
      V T6z, T6I, T6J, T6K;
      T6z = VADD(T6j, T6y);
      T6I = VBYI(VADD(T6G, T6H));
      ST(&(xo[(os * 56)]), VSUB(T6z, T6I), ovs, &(xo[0]));
      ST(&(xo[(os * 8)]), VADD(T6z, T6I), ovs, &(xo[0]));
      T6J = VSUB(T6j, T6y);
      T6K = VBYI(VSUB(T6H, T6G));
      ST(&(xo[(os * 40)]), VSUB(T6J, T6K), ovs, &(xo[0]));
      ST(&(xo[(os * 24)]), VADD(T6J, T6K), ovs, &(xo[0]));
        }
   }
   {
        V T6X, T7i, T78, T7g, T74, T7f, T7b, T7j, T6W, T77;
        T6W = VMUL(KP707106781, VADD(T6U, T6V));
        T6X = VADD(T6T, T6W);
        T7i = VSUB(T6T, T6W);
        T77 = VMUL(KP707106781, VSUB(T6V, T6U));
        T78 = VADD(T76, T77);
        T7g = VSUB(T77, T76);
        {
      V T70, T73, T79, T7a;
      T70 = VFMA(KP923879532, T6Y, VMUL(KP382683432, T6Z));
      T73 = VFNMS(KP382683432, T72, VMUL(KP923879532, T71));
      T74 = VADD(T70, T73);
      T7f = VSUB(T73, T70);
      T79 = VFNMS(KP382683432, T6Y, VMUL(KP923879532, T6Z));
      T7a = VFMA(KP382683432, T71, VMUL(KP923879532, T72));
      T7b = VADD(T79, T7a);
      T7j = VSUB(T7a, T79);
        }
        {
      V T75, T7c, T7l, T7m;
      T75 = VADD(T6X, T74);
      T7c = VBYI(VADD(T78, T7b));
      ST(&(xo[(os * 60)]), VSUB(T75, T7c), ovs, &(xo[0]));
      ST(&(xo[(os * 4)]), VADD(T75, T7c), ovs, &(xo[0]));
      T7l = VBYI(VADD(T7g, T7f));
      T7m = VADD(T7i, T7j);
      ST(&(xo[(os * 12)]), VADD(T7l, T7m), ovs, &(xo[0]));
      ST(&(xo[(os * 52)]), VSUB(T7m, T7l), ovs, &(xo[0]));
        }
        {
      V T7d, T7e, T7h, T7k;
      T7d = VSUB(T6X, T74);
      T7e = VBYI(VSUB(T7b, T78));
      ST(&(xo[(os * 36)]), VSUB(T7d, T7e), ovs, &(xo[0]));
      ST(&(xo[(os * 28)]), VADD(T7d, T7e), ovs, &(xo[0]));
      T7h = VBYI(VSUB(T7f, T7g));
      T7k = VSUB(T7i, T7j);
      ST(&(xo[(os * 20)]), VADD(T7h, T7k), ovs, &(xo[0]));
      ST(&(xo[(os * 44)]), VSUB(T7k, T7h), ovs, &(xo[0]));
        }
   }
   {
        V T5N, T68, T61, T69, T5U, T65, T5Y, T66;
        {
      V T5L, T5M, T5Z, T60;
      T5L = VSUB(T4p, T4w);
      T5M = VSUB(T5u, T5t);
      T5N = VADD(T5L, T5M);
      T68 = VSUB(T5L, T5M);
      T5Z = VFNMS(KP555570233, T5O, VMUL(KP831469612, T5P));
      T60 = VFMA(KP555570233, T5R, VMUL(KP831469612, T5S));
      T61 = VADD(T5Z, T60);
      T69 = VSUB(T60, T5Z);
        }
        {
      V T5Q, T5T, T5W, T5X;
      T5Q = VFMA(KP831469612, T5O, VMUL(KP555570233, T5P));
      T5T = VFNMS(KP555570233, T5S, VMUL(KP831469612, T5R));
      T5U = VADD(T5Q, T5T);
      T65 = VSUB(T5T, T5Q);
      T5W = VSUB(T5r, T5q);
      T5X = VSUB(T4L, T4E);
      T5Y = VADD(T5W, T5X);
      T66 = VSUB(T5X, T5W);
        }
        {
      V T5V, T62, T6b, T6c;
      T5V = VADD(T5N, T5U);
      T62 = VBYI(VADD(T5Y, T61));
      ST(&(xo[(os * 58)]), VSUB(T5V, T62), ovs, &(xo[0]));
      ST(&(xo[(os * 6)]), VADD(T5V, T62), ovs, &(xo[0]));
      T6b = VBYI(VADD(T66, T65));
      T6c = VADD(T68, T69);
      ST(&(xo[(os * 10)]), VADD(T6b, T6c), ovs, &(xo[0]));
      ST(&(xo[(os * 54)]), VSUB(T6c, T6b), ovs, &(xo[0]));
        }
        {
      V T63, T64, T67, T6a;
      T63 = VSUB(T5N, T5U);
      T64 = VBYI(VSUB(T61, T5Y));
      ST(&(xo[(os * 38)]), VSUB(T63, T64), ovs, &(xo[0]));
      ST(&(xo[(os * 26)]), VADD(T63, T64), ovs, &(xo[0]));
      T67 = VBYI(VSUB(T65, T66));
      T6a = VSUB(T68, T69);
      ST(&(xo[(os * 22)]), VADD(T67, T6a), ovs, &(xo[0]));
      ST(&(xo[(os * 42)]), VSUB(T6a, T67), ovs, &(xo[0]));
        }
   }
   {
        V T11, T2C, T2v, T2D, T2e, T2z, T2s, T2A;
        {
      V Tr, T10, T2t, T2u;
      Tr = VSUB(Tb, Tq);
      T10 = VSUB(TI, TZ);
      T11 = VADD(Tr, T10);
      T2C = VSUB(Tr, T10);
      T2t = VFNMS(KP634393284, T1B, VMUL(KP773010453, T1s));
      T2u = VFMA(KP773010453, T2c, VMUL(KP634393284, T23));
      T2v = VADD(T2t, T2u);
      T2D = VSUB(T2u, T2t);
        }
        {
      V T1C, T2d, T2o, T2r;
      T1C = VFMA(KP634393284, T1s, VMUL(KP773010453, T1B));
      T2d = VFNMS(KP634393284, T2c, VMUL(KP773010453, T23));
      T2e = VADD(T1C, T2d);
      T2z = VSUB(T2d, T1C);
      T2o = VSUB(T2i, T2n);
      T2r = VSUB(T2p, T2q);
      T2s = VADD(T2o, T2r);
      T2A = VSUB(T2r, T2o);
        }
        {
      V T2f, T2w, T2F, T2G;
      T2f = VADD(T11, T2e);
      T2w = VBYI(VADD(T2s, T2v));
      ST(&(xo[(os * 57)]), VSUB(T2f, T2w), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 7)]), VADD(T2f, T2w), ovs, &(xo[(os * 1)]));
      T2F = VBYI(VADD(T2A, T2z));
      T2G = VADD(T2C, T2D);
      ST(&(xo[(os * 9)]), VADD(T2F, T2G), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 55)]), VSUB(T2G, T2F), ovs, &(xo[(os * 1)]));
        }
        {
      V T2x, T2y, T2B, T2E;
      T2x = VSUB(T11, T2e);
      T2y = VBYI(VSUB(T2v, T2s));
      ST(&(xo[(os * 39)]), VSUB(T2x, T2y), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 25)]), VADD(T2x, T2y), ovs, &(xo[(os * 1)]));
      T2B = VBYI(VSUB(T2z, T2A));
      T2E = VSUB(T2C, T2D);
      ST(&(xo[(os * 23)]), VADD(T2B, T2E), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 41)]), VSUB(T2E, T2B), ovs, &(xo[(os * 1)]));
        }
   }
   {
        V T3j, T3Q, T3J, T3R, T3y, T3N, T3G, T3O;
        {
      V T3b, T3i, T3H, T3I;
      T3b = VADD(T39, T3a);
      T3i = VADD(T3e, T3h);
      T3j = VADD(T3b, T3i);
      T3Q = VSUB(T3b, T3i);
      T3H = VFNMS(KP290284677, T3m, VMUL(KP956940335, T3p));
      T3I = VFMA(KP290284677, T3t, VMUL(KP956940335, T3w));
      T3J = VADD(T3H, T3I);
      T3R = VSUB(T3I, T3H);
        }
        {
      V T3q, T3x, T3C, T3F;
      T3q = VFMA(KP956940335, T3m, VMUL(KP290284677, T3p));
      T3x = VFNMS(KP290284677, T3w, VMUL(KP956940335, T3t));
      T3y = VADD(T3q, T3x);
      T3N = VSUB(T3x, T3q);
      T3C = VADD(T3A, T3B);
      T3F = VADD(T3D, T3E);
      T3G = VADD(T3C, T3F);
      T3O = VSUB(T3F, T3C);
        }
        {
      V T3z, T3K, T3T, T3U;
      T3z = VADD(T3j, T3y);
      T3K = VBYI(VADD(T3G, T3J));
      ST(&(xo[(os * 61)]), VSUB(T3z, T3K), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 3)]), VADD(T3z, T3K), ovs, &(xo[(os * 1)]));
      T3T = VBYI(VADD(T3O, T3N));
      T3U = VADD(T3Q, T3R);
      ST(&(xo[(os * 13)]), VADD(T3T, T3U), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 51)]), VSUB(T3U, T3T), ovs, &(xo[(os * 1)]));
        }
        {
      V T3L, T3M, T3P, T3S;
      T3L = VSUB(T3j, T3y);
      T3M = VBYI(VSUB(T3J, T3G));
      ST(&(xo[(os * 35)]), VSUB(T3L, T3M), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 29)]), VADD(T3L, T3M), ovs, &(xo[(os * 1)]));
      T3P = VBYI(VSUB(T3N, T3O));
      T3S = VSUB(T3Q, T3R);
      ST(&(xo[(os * 19)]), VADD(T3P, T3S), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 45)]), VSUB(T3S, T3P), ovs, &(xo[(os * 1)]));
        }
   }
   {
        V T4N, T5G, T5z, T5H, T5m, T5D, T5w, T5E;
        {
      V T4x, T4M, T5x, T5y;
      T4x = VADD(T4p, T4w);
      T4M = VADD(T4E, T4L);
      T4N = VADD(T4x, T4M);
      T5G = VSUB(T4x, T4M);
      T5x = VFNMS(KP195090322, T4Y, VMUL(KP980785280, T53));
      T5y = VFMA(KP195090322, T5f, VMUL(KP980785280, T5k));
      T5z = VADD(T5x, T5y);
      T5H = VSUB(T5y, T5x);
        }
        {
      V T54, T5l, T5s, T5v;
      T54 = VFMA(KP980785280, T4Y, VMUL(KP195090322, T53));
      T5l = VFNMS(KP195090322, T5k, VMUL(KP980785280, T5f));
      T5m = VADD(T54, T5l);
      T5D = VSUB(T5l, T54);
      T5s = VADD(T5q, T5r);
      T5v = VADD(T5t, T5u);
      T5w = VADD(T5s, T5v);
      T5E = VSUB(T5v, T5s);
        }
        {
      V T5n, T5A, T5J, T5K;
      T5n = VADD(T4N, T5m);
      T5A = VBYI(VADD(T5w, T5z));
      ST(&(xo[(os * 62)]), VSUB(T5n, T5A), ovs, &(xo[0]));
      ST(&(xo[(os * 2)]), VADD(T5n, T5A), ovs, &(xo[0]));
      T5J = VBYI(VADD(T5E, T5D));
      T5K = VADD(T5G, T5H);
      ST(&(xo[(os * 14)]), VADD(T5J, T5K), ovs, &(xo[0]));
      ST(&(xo[(os * 50)]), VSUB(T5K, T5J), ovs, &(xo[0]));
        }
        {
      V T5B, T5C, T5F, T5I;
      T5B = VSUB(T4N, T5m);
      T5C = VBYI(VSUB(T5z, T5w));
      ST(&(xo[(os * 34)]), VSUB(T5B, T5C), ovs, &(xo[0]));
      ST(&(xo[(os * 30)]), VADD(T5B, T5C), ovs, &(xo[0]));
      T5F = VBYI(VSUB(T5D, T5E));
      T5I = VSUB(T5G, T5H);
      ST(&(xo[(os * 18)]), VADD(T5F, T5I), ovs, &(xo[0]));
      ST(&(xo[(os * 46)]), VSUB(T5I, T5F), ovs, &(xo[0]));
        }
   }
   {
        V T2J, T34, T2X, T35, T2Q, T31, T2U, T32;
        {
      V T2H, T2I, T2V, T2W;
      T2H = VADD(Tb, Tq);
      T2I = VADD(T2q, T2p);
      T2J = VADD(T2H, T2I);
      T34 = VSUB(T2H, T2I);
      T2V = VFNMS(KP098017140, T2L, VMUL(KP995184726, T2K));
      T2W = VFMA(KP995184726, T2O, VMUL(KP098017140, T2N));
      T2X = VADD(T2V, T2W);
      T35 = VSUB(T2W, T2V);
        }
        {
      V T2M, T2P, T2S, T2T;
      T2M = VFMA(KP098017140, T2K, VMUL(KP995184726, T2L));
      T2P = VFNMS(KP098017140, T2O, VMUL(KP995184726, T2N));
      T2Q = VADD(T2M, T2P);
      T31 = VSUB(T2P, T2M);
      T2S = VADD(T2n, T2i);
      T2T = VADD(TZ, TI);
      T2U = VADD(T2S, T2T);
      T32 = VSUB(T2T, T2S);
        }
        {
      V T2R, T2Y, T37, T38;
      T2R = VADD(T2J, T2Q);
      T2Y = VBYI(VADD(T2U, T2X));
      ST(&(xo[(os * 63)]), VSUB(T2R, T2Y), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 1)]), VADD(T2R, T2Y), ovs, &(xo[(os * 1)]));
      T37 = VBYI(VADD(T32, T31));
      T38 = VADD(T34, T35);
      ST(&(xo[(os * 15)]), VADD(T37, T38), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 49)]), VSUB(T38, T37), ovs, &(xo[(os * 1)]));
        }
        {
      V T2Z, T30, T33, T36;
      T2Z = VSUB(T2J, T2Q);
      T30 = VBYI(VSUB(T2X, T2U));
      ST(&(xo[(os * 33)]), VSUB(T2Z, T30), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 31)]), VADD(T2Z, T30), ovs, &(xo[(os * 1)]));
      T33 = VBYI(VSUB(T31, T32));
      T36 = VSUB(T34, T35);
      ST(&(xo[(os * 17)]), VADD(T33, T36), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 47)]), VSUB(T36, T33), ovs, &(xo[(os * 1)]));
        }
   }
   {
        V T3X, T4i, T4b, T4j, T44, T4f, T48, T4g;
        {
      V T3V, T3W, T49, T4a;
      T3V = VSUB(T39, T3a);
      T3W = VSUB(T3E, T3D);
      T3X = VADD(T3V, T3W);
      T4i = VSUB(T3V, T3W);
      T49 = VFNMS(KP471396736, T3Y, VMUL(KP881921264, T3Z));
      T4a = VFMA(KP471396736, T41, VMUL(KP881921264, T42));
      T4b = VADD(T49, T4a);
      T4j = VSUB(T4a, T49);
        }
        {
      V T40, T43, T46, T47;
      T40 = VFMA(KP881921264, T3Y, VMUL(KP471396736, T3Z));
      T43 = VFNMS(KP471396736, T42, VMUL(KP881921264, T41));
      T44 = VADD(T40, T43);
      T4f = VSUB(T43, T40);
      T46 = VSUB(T3B, T3A);
      T47 = VSUB(T3h, T3e);
      T48 = VADD(T46, T47);
      T4g = VSUB(T47, T46);
        }
        {
      V T45, T4c, T4l, T4m;
      T45 = VADD(T3X, T44);
      T4c = VBYI(VADD(T48, T4b));
      ST(&(xo[(os * 59)]), VSUB(T45, T4c), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 5)]), VADD(T45, T4c), ovs, &(xo[(os * 1)]));
      T4l = VBYI(VADD(T4g, T4f));
      T4m = VADD(T4i, T4j);
      ST(&(xo[(os * 11)]), VADD(T4l, T4m), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 53)]), VSUB(T4m, T4l), ovs, &(xo[(os * 1)]));
        }
        {
      V T4d, T4e, T4h, T4k;
      T4d = VSUB(T3X, T44);
      T4e = VBYI(VSUB(T4b, T48));
      ST(&(xo[(os * 37)]), VSUB(T4d, T4e), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 27)]), VADD(T4d, T4e), ovs, &(xo[(os * 1)]));
      T4h = VBYI(VSUB(T4f, T4g));
      T4k = VSUB(T4i, T4j);
      ST(&(xo[(os * 21)]), VADD(T4h, T4k), ovs, &(xo[(os * 1)]));
      ST(&(xo[(os * 43)]), VSUB(T4k, T4h), ovs, &(xo[(os * 1)]));
        }
   }
     }
}

static const kdft_desc desc = { 64, "n1fv_64", {404, 72, 52, 0}, &fftwf_dft_n1fsimd_genus, 0, 0, 0, 0 };

void fftwf_codelet_n1fv_64 (planner *p) {
     fftwf_kdft_register (p, n1fv_64, &desc);
}
