# 1 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
# 1 "<command-line>"
# 1 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
# 1 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.h" 1




# 1 "C:/bullet3-master/src/LinearMath/btHashMap.h" 1
# 20 "C:/bullet3-master/src/LinearMath/btHashMap.h"
# 1 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h" 1
# 20 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h"
# 1 "C:/bullet3-master/src/LinearMath/btScalar.h" 1
# 26 "C:/bullet3-master/src/LinearMath/btScalar.h"
# 1 "c:\\devel\\mingw\\include\\math.h" 1 3
# 16 "c:\\devel\\mingw\\include\\math.h" 3
       
# 17 "c:\\devel\\mingw\\include\\math.h" 3



# 1 "c:\\devel\\mingw\\include\\_mingw.h" 1 3
# 32 "c:\\devel\\mingw\\include\\_mingw.h" 3
       
# 33 "c:\\devel\\mingw\\include\\_mingw.h" 3
# 21 "c:\\devel\\mingw\\include\\math.h" 2 3
# 90 "c:\\devel\\mingw\\include\\math.h" 3
extern "C" {
# 134 "c:\\devel\\mingw\\include\\math.h" 3
struct _exception
{
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};

 double __attribute__((__cdecl__)) sin (double);
 double __attribute__((__cdecl__)) cos (double);
 double __attribute__((__cdecl__)) tan (double);
 double __attribute__((__cdecl__)) sinh (double);
 double __attribute__((__cdecl__)) cosh (double);
 double __attribute__((__cdecl__)) tanh (double);
 double __attribute__((__cdecl__)) asin (double);
 double __attribute__((__cdecl__)) acos (double);
 double __attribute__((__cdecl__)) atan (double);
 double __attribute__((__cdecl__)) atan2 (double, double);
 double __attribute__((__cdecl__)) exp (double);
 double __attribute__((__cdecl__)) log (double);
 double __attribute__((__cdecl__)) log10 (double);
 double __attribute__((__cdecl__)) pow (double, double);
 double __attribute__((__cdecl__)) sqrt (double);
 double __attribute__((__cdecl__)) ceil (double);
 double __attribute__((__cdecl__)) floor (double);
 double __attribute__((__cdecl__)) fabs (double);
 double __attribute__((__cdecl__)) ldexp (double, int);
 double __attribute__((__cdecl__)) frexp (double, int*);
 double __attribute__((__cdecl__)) modf (double, double*);
 double __attribute__((__cdecl__)) fmod (double, double);
# 210 "c:\\devel\\mingw\\include\\math.h" 3
struct _complex
{
 double x;
 double y;
};

 double __attribute__((__cdecl__)) _cabs (struct _complex);

 double __attribute__((__cdecl__)) _hypot (double, double);
 double __attribute__((__cdecl__)) _j0 (double);
 double __attribute__((__cdecl__)) _j1 (double);
 double __attribute__((__cdecl__)) _jn (int, double);
 double __attribute__((__cdecl__)) _y0 (double);
 double __attribute__((__cdecl__)) _y1 (double);
 double __attribute__((__cdecl__)) _yn (int, double);
 int __attribute__((__cdecl__)) _matherr (struct _exception *);
# 234 "c:\\devel\\mingw\\include\\math.h" 3
 double __attribute__((__cdecl__)) _chgsign (double);
 double __attribute__((__cdecl__)) _copysign (double, double);
 double __attribute__((__cdecl__)) _logb (double);
 double __attribute__((__cdecl__)) _nextafter (double, double);
 double __attribute__((__cdecl__)) _scalb (double, long);

 int __attribute__((__cdecl__)) _finite (double);
 int __attribute__((__cdecl__)) _fpclass (double);
 int __attribute__((__cdecl__)) _isnan (double);
# 254 "c:\\devel\\mingw\\include\\math.h" 3
 double __attribute__((__cdecl__)) j0 (double);
 double __attribute__((__cdecl__)) j1 (double);
 double __attribute__((__cdecl__)) jn (int, double);
 double __attribute__((__cdecl__)) y0 (double);
 double __attribute__((__cdecl__)) y1 (double);
 double __attribute__((__cdecl__)) yn (int, double);

 double __attribute__((__cdecl__)) chgsign (double);
# 270 "c:\\devel\\mingw\\include\\math.h" 3
 int __attribute__((__cdecl__)) finite (double);
 int __attribute__((__cdecl__)) fpclass (double);
# 324 "c:\\devel\\mingw\\include\\math.h" 3
typedef long double float_t;
typedef long double double_t;
# 354 "c:\\devel\\mingw\\include\\math.h" 3
extern int __attribute__((__cdecl__)) __fpclassifyf (float);
extern int __attribute__((__cdecl__)) __fpclassify (double);
extern int __attribute__((__cdecl__)) __fpclassifyl (long double);


inline int __attribute__((__cdecl__)) __fpclassifyl (long double x){
  unsigned short sw;
  __asm__ ("fxam; fstsw %%ax;" : "=a" (sw): "t" (x));
  return sw & (0x0100 | 0x0400 | 0x4000 );
}
# 379 "c:\\devel\\mingw\\include\\math.h" 3
extern int __attribute__((__cdecl__)) __isnan (double);
extern int __attribute__((__cdecl__)) __isnanf (float);
extern int __attribute__((__cdecl__)) __isnanl (long double);

inline int __attribute__((__cdecl__)) __isnan (double _x)
{
  unsigned short sw;
  __asm__ ("fxam;"
    "fstsw %%ax": "=a" (sw) : "t" (_x));
  return (sw & (0x0100 | 0x0400 | (0x0100 | 0x0400) | 0x4000 | (0x0400 | 0x4000)))
    == 0x0100;
}

inline int __attribute__((__cdecl__)) __isnanf (float _x)
{
  unsigned short sw;
  __asm__ ("fxam;"
     "fstsw %%ax": "=a" (sw) : "t" (_x));
  return (sw & (0x0100 | 0x0400 | (0x0100 | 0x0400) | 0x4000 | (0x0400 | 0x4000)))
    == 0x0100;
}

inline int __attribute__((__cdecl__)) __isnanl (long double _x)
{
  unsigned short sw;
  __asm__ ("fxam;"
     "fstsw %%ax": "=a" (sw) : "t" (_x));
  return (sw & (0x0100 | 0x0400 | (0x0100 | 0x0400) | 0x4000 | (0x0400 | 0x4000)))
    == 0x0100;
}
# 419 "c:\\devel\\mingw\\include\\math.h" 3
extern int __attribute__((__cdecl__)) __signbit (double);
extern int __attribute__((__cdecl__)) __signbitf (float);
extern int __attribute__((__cdecl__)) __signbitl (long double);

inline int __attribute__((__cdecl__)) __signbit (double x) {
  unsigned short stw;
  __asm__ ( "fxam; fstsw %%ax;": "=a" (stw) : "t" (x));
  return (stw & 0x0200) != 0;
}

inline int __attribute__((__cdecl__)) __signbitf (float x) {
  unsigned short stw;
  __asm__ ("fxam; fstsw %%ax;": "=a" (stw) : "t" (x));
  return (stw & 0x0200) != 0;
}

inline int __attribute__((__cdecl__)) __signbitl (long double x) {
  unsigned short stw;
  __asm__ ("fxam; fstsw %%ax;": "=a" (stw) : "t" (x));
  return (stw & 0x0200) != 0;
}







extern float __attribute__((__cdecl__)) sinf (float);
extern long double __attribute__((__cdecl__)) sinl (long double);

extern float __attribute__((__cdecl__)) cosf (float);
extern long double __attribute__((__cdecl__)) cosl (long double);

extern float __attribute__((__cdecl__)) tanf (float);
extern long double __attribute__((__cdecl__)) tanl (long double);

extern float __attribute__((__cdecl__)) asinf (float);
extern long double __attribute__((__cdecl__)) asinl (long double);

extern float __attribute__((__cdecl__)) acosf (float);
extern long double __attribute__((__cdecl__)) acosl (long double);

extern float __attribute__((__cdecl__)) atanf (float);
extern long double __attribute__((__cdecl__)) atanl (long double);

extern float __attribute__((__cdecl__)) atan2f (float, float);
extern long double __attribute__((__cdecl__)) atan2l (long double, long double);


extern float __attribute__((__cdecl__)) sinhf (float);

inline float __attribute__((__cdecl__)) sinhf (float x)
  {return (float) sinh (x);}

extern long double __attribute__((__cdecl__)) sinhl (long double);

extern float __attribute__((__cdecl__)) coshf (float);

inline float __attribute__((__cdecl__)) coshf (float x)
  {return (float) cosh (x);}

extern long double __attribute__((__cdecl__)) coshl (long double);

extern float __attribute__((__cdecl__)) tanhf (float);

inline float __attribute__((__cdecl__)) tanhf (float x)
  {return (float) tanh (x);}

extern long double __attribute__((__cdecl__)) tanhl (long double);



extern double __attribute__((__cdecl__)) acosh (double);
extern float __attribute__((__cdecl__)) acoshf (float);
extern long double __attribute__((__cdecl__)) acoshl (long double);


extern double __attribute__((__cdecl__)) asinh (double);
extern float __attribute__((__cdecl__)) asinhf (float);
extern long double __attribute__((__cdecl__)) asinhl (long double);


extern double __attribute__((__cdecl__)) atanh (double);
extern float __attribute__((__cdecl__)) atanhf (float);
extern long double __attribute__((__cdecl__)) atanhl (long double);



extern float __attribute__((__cdecl__)) expf (float);

inline float __attribute__((__cdecl__)) expf (float x)
  {return (float) exp (x);}

extern long double __attribute__((__cdecl__)) expl (long double);


extern double __attribute__((__cdecl__)) exp2(double);
extern float __attribute__((__cdecl__)) exp2f(float);
extern long double __attribute__((__cdecl__)) exp2l(long double);



extern double __attribute__((__cdecl__)) expm1(double);
extern float __attribute__((__cdecl__)) expm1f(float);
extern long double __attribute__((__cdecl__)) expm1l(long double);


extern float __attribute__((__cdecl__)) frexpf (float, int*);

inline float __attribute__((__cdecl__)) frexpf (float x, int* expn)
  {return (float) frexp (x, expn);}

extern long double __attribute__((__cdecl__)) frexpl (long double, int*);




extern int __attribute__((__cdecl__)) ilogb (double);
extern int __attribute__((__cdecl__)) ilogbf (float);
extern int __attribute__((__cdecl__)) ilogbl (long double);


extern float __attribute__((__cdecl__)) ldexpf (float, int);

inline float __attribute__((__cdecl__)) ldexpf (float x, int expn)
  {return (float) ldexp (x, expn);}

extern long double __attribute__((__cdecl__)) ldexpl (long double, int);


extern float __attribute__((__cdecl__)) logf (float);
extern long double __attribute__((__cdecl__)) logl (long double);


extern float __attribute__((__cdecl__)) log10f (float);
extern long double __attribute__((__cdecl__)) log10l (long double);


extern double __attribute__((__cdecl__)) log1p(double);
extern float __attribute__((__cdecl__)) log1pf(float);
extern long double __attribute__((__cdecl__)) log1pl(long double);


extern double __attribute__((__cdecl__)) log2 (double);
extern float __attribute__((__cdecl__)) log2f (float);
extern long double __attribute__((__cdecl__)) log2l (long double);


extern double __attribute__((__cdecl__)) logb (double);
extern float __attribute__((__cdecl__)) logbf (float);
extern long double __attribute__((__cdecl__)) logbl (long double);





inline double __attribute__((__cdecl__)) logb (double x)
{
  double res;
  __asm__ ("fxtract\n\t"
       "fstp	%%st" : "=t" (res) : "0" (x));
  return res;
}

inline float __attribute__((__cdecl__)) logbf (float x)
{
  float res;
  __asm__ ("fxtract\n\t"
       "fstp	%%st" : "=t" (res) : "0" (x));
  return res;
}

inline long double __attribute__((__cdecl__)) logbl (long double x)
{
  long double res;
  __asm__ ("fxtract\n\t"
       "fstp	%%st" : "=t" (res) : "0" (x));
  return res;
}




extern float __attribute__((__cdecl__)) modff (float, float*);
extern long double __attribute__((__cdecl__)) modfl (long double, long double*);


extern double __attribute__((__cdecl__)) scalbn (double, int);
extern float __attribute__((__cdecl__)) scalbnf (float, int);
extern long double __attribute__((__cdecl__)) scalbnl (long double, int);

extern double __attribute__((__cdecl__)) scalbln (double, long);
extern float __attribute__((__cdecl__)) scalblnf (float, long);
extern long double __attribute__((__cdecl__)) scalblnl (long double, long);



extern double __attribute__((__cdecl__)) cbrt (double);
extern float __attribute__((__cdecl__)) cbrtf (float);
extern long double __attribute__((__cdecl__)) cbrtl (long double);


extern float __attribute__((__cdecl__)) fabsf (float x);
extern long double __attribute__((__cdecl__)) fabsl (long double x);


extern double __attribute__((__cdecl__)) hypot (double, double);
extern float __attribute__((__cdecl__)) hypotf (float, float);

inline float __attribute__((__cdecl__)) hypotf (float x, float y)
  { return (float) hypot (x, y);}

extern long double __attribute__((__cdecl__)) hypotl (long double, long double);


extern float __attribute__((__cdecl__)) powf (float, float);

inline float __attribute__((__cdecl__)) powf (float x, float y)
  {return (float) pow (x, y);}

extern long double __attribute__((__cdecl__)) powl (long double, long double);


extern float __attribute__((__cdecl__)) sqrtf (float);
extern long double __attribute__((__cdecl__)) sqrtl (long double);


extern double __attribute__((__cdecl__)) erf (double);
extern float __attribute__((__cdecl__)) erff (float);
extern long double __attribute__((__cdecl__)) erfl (long double);


extern double __attribute__((__cdecl__)) erfc (double);
extern float __attribute__((__cdecl__)) erfcf (float);
extern long double __attribute__((__cdecl__)) erfcl (long double);


extern double __attribute__((__cdecl__)) lgamma (double);
extern float __attribute__((__cdecl__)) lgammaf (float);
extern long double __attribute__((__cdecl__)) lgammal (long double);


extern double __attribute__((__cdecl__)) tgamma (double);
extern float __attribute__((__cdecl__)) tgammaf (float);
extern long double __attribute__((__cdecl__)) tgammal (long double);


extern float __attribute__((__cdecl__)) ceilf (float);
extern long double __attribute__((__cdecl__)) ceill (long double);


extern float __attribute__((__cdecl__)) floorf (float);
extern long double __attribute__((__cdecl__)) floorl (long double);


extern double __attribute__((__cdecl__)) nearbyint ( double);
extern float __attribute__((__cdecl__)) nearbyintf (float);
extern long double __attribute__((__cdecl__)) nearbyintl (long double);



extern double __attribute__((__cdecl__)) rint (double);
extern float __attribute__((__cdecl__)) rintf (float);
extern long double __attribute__((__cdecl__)) rintl (long double);


extern long __attribute__((__cdecl__)) lrint (double);
extern long __attribute__((__cdecl__)) lrintf (float);
extern long __attribute__((__cdecl__)) lrintl (long double);

extern long long __attribute__((__cdecl__)) llrint (double);
extern long long __attribute__((__cdecl__)) llrintf (float);
extern long long __attribute__((__cdecl__)) llrintl (long double);





inline double __attribute__((__cdecl__)) rint (double x)
{
  double retval;
  __asm__ ("frndint;": "=t" (retval) : "0" (x));
  return retval;
}

inline float __attribute__((__cdecl__)) rintf (float x)
{
  float retval;
  __asm__ ("frndint;" : "=t" (retval) : "0" (x) );
  return retval;
}

inline long double __attribute__((__cdecl__)) rintl (long double x)
{
  long double retval;
  __asm__ ("frndint;" : "=t" (retval) : "0" (x) );
  return retval;
}

inline long __attribute__((__cdecl__)) lrint (double x)
{
  long retval;
  __asm__ __volatile__
    ("fistpl %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}

inline long __attribute__((__cdecl__)) lrintf (float x)
{
  long retval;
  __asm__ __volatile__
    ("fistpl %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}

inline long __attribute__((__cdecl__)) lrintl (long double x)
{
  long retval;
  __asm__ __volatile__
    ("fistpl %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}

inline long long __attribute__((__cdecl__)) llrint (double x)
{
  long long retval;
  __asm__ __volatile__
    ("fistpll %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}

inline long long __attribute__((__cdecl__)) llrintf (float x)
{
  long long retval;
  __asm__ __volatile__
    ("fistpll %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}

inline long long __attribute__((__cdecl__)) llrintl (long double x)
{
  long long retval;
  __asm__ __volatile__
    ("fistpll %0" : "=m" (retval) : "t" (x) : "st");
  return retval;
}





extern double __attribute__((__cdecl__)) round (double);
extern float __attribute__((__cdecl__)) roundf (float);
extern long double __attribute__((__cdecl__)) roundl (long double);


extern long __attribute__((__cdecl__)) lround (double);
extern long __attribute__((__cdecl__)) lroundf (float);
extern long __attribute__((__cdecl__)) lroundl (long double);

extern long long __attribute__((__cdecl__)) llround (double);
extern long long __attribute__((__cdecl__)) llroundf (float);
extern long long __attribute__((__cdecl__)) llroundl (long double);



extern double __attribute__((__cdecl__)) trunc (double);
extern float __attribute__((__cdecl__)) truncf (float);
extern long double __attribute__((__cdecl__)) truncl (long double);


extern float __attribute__((__cdecl__)) fmodf (float, float);
extern long double __attribute__((__cdecl__)) fmodl (long double, long double);


extern double __attribute__((__cdecl__)) remainder (double, double);
extern float __attribute__((__cdecl__)) remainderf (float, float);
extern long double __attribute__((__cdecl__)) remainderl (long double, long double);


extern double __attribute__((__cdecl__)) remquo(double, double, int *);
extern float __attribute__((__cdecl__)) remquof(float, float, int *);
extern long double __attribute__((__cdecl__)) remquol(long double, long double, int *);


extern double __attribute__((__cdecl__)) copysign (double, double);
extern float __attribute__((__cdecl__)) copysignf (float, float);
extern long double __attribute__((__cdecl__)) copysignl (long double, long double);


extern double __attribute__((__cdecl__)) nan(const char *tagp);
extern float __attribute__((__cdecl__)) nanf(const char *tagp);
extern long double __attribute__((__cdecl__)) nanl(const char *tagp);
# 821 "c:\\devel\\mingw\\include\\math.h" 3
extern double __attribute__((__cdecl__)) nextafter (double, double);
extern float __attribute__((__cdecl__)) nextafterf (float, float);
extern long double __attribute__((__cdecl__)) nextafterl (long double, long double);


extern double __attribute__((__cdecl__)) nexttoward (double, long double);
extern float __attribute__((__cdecl__)) nexttowardf (float, long double);
extern long double __attribute__((__cdecl__)) nexttowardl (long double, long double);



extern double __attribute__((__cdecl__)) fdim (double x, double y);
extern float __attribute__((__cdecl__)) fdimf (float x, float y);
extern long double __attribute__((__cdecl__)) fdiml (long double x, long double y);







extern double __attribute__((__cdecl__)) fmax (double, double);
extern float __attribute__((__cdecl__)) fmaxf (float, float);
extern long double __attribute__((__cdecl__)) fmaxl (long double, long double);


extern double __attribute__((__cdecl__)) fmin (double, double);
extern float __attribute__((__cdecl__)) fminf (float, float);
extern long double __attribute__((__cdecl__)) fminl (long double, long double);



extern double __attribute__((__cdecl__)) fma (double, double, double);
extern float __attribute__((__cdecl__)) fmaf (float, float, float);
extern long double __attribute__((__cdecl__)) fmal (long double, long double, long double);
# 910 "c:\\devel\\mingw\\include\\math.h" 3
}
# 27 "C:/bullet3-master/src/LinearMath/btScalar.h" 2
# 1 "c:\\devel\\mingw\\include\\stdlib.h" 1 3
# 21 "c:\\devel\\mingw\\include\\stdlib.h" 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 212 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 22 "c:\\devel\\mingw\\include\\stdlib.h" 2 3
# 60 "c:\\devel\\mingw\\include\\stdlib.h" 3
extern "C" {
# 71 "c:\\devel\\mingw\\include\\stdlib.h" 3
extern int _argc;
extern char** _argv;




extern int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argc(void);
extern char*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___argv(void);
extern wchar_t*** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p___wargv(void);
# 112 "c:\\devel\\mingw\\include\\stdlib.h" 3
   extern __attribute__ ((__dllimport__)) int __mb_cur_max;
# 137 "c:\\devel\\mingw\\include\\stdlib.h" 3
 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _errno(void);


 int* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __doserrno(void);
# 149 "c:\\devel\\mingw\\include\\stdlib.h" 3
  extern char *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__environ(void);
  extern wchar_t *** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wenviron(void);
# 172 "c:\\devel\\mingw\\include\\stdlib.h" 3
  extern __attribute__ ((__dllimport__)) int _sys_nerr;
# 196 "c:\\devel\\mingw\\include\\stdlib.h" 3
extern __attribute__ ((__dllimport__)) char* _sys_errlist[];
# 209 "c:\\devel\\mingw\\include\\stdlib.h" 3
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__osver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winver(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winmajor(void);
extern unsigned __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) int* __p__winminor(void);







extern __attribute__ ((__dllimport__)) unsigned int _osver;
extern __attribute__ ((__dllimport__)) unsigned int _winver;
extern __attribute__ ((__dllimport__)) unsigned int _winmajor;
extern __attribute__ ((__dllimport__)) unsigned int _winminor;
# 260 "c:\\devel\\mingw\\include\\stdlib.h" 3
 char** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__pgmptr(void);

 wchar_t** __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __p__wpgmptr(void);
# 293 "c:\\devel\\mingw\\include\\stdlib.h" 3
extern __attribute__ ((__dllimport__)) int _fmode;
# 303 "c:\\devel\\mingw\\include\\stdlib.h" 3
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atof (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoi (const char*);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atol (const char*);

 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtof (const wchar_t *);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi (const wchar_t *);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtol (const wchar_t *);


double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __strtod (const char*, char**);
extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strtod (const char* __restrict__ __nptr, char** __restrict__ __endptr);
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof (const char * __restrict__, char ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold (const char * __restrict__, char ** __restrict__);




 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtol (const char*, char**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoul (const char*, char**, int);



 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstol (const wchar_t*, wchar_t**, int);
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstoul (const wchar_t*, wchar_t**, int);
 double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstod (const wchar_t*, wchar_t**);

float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstof( const wchar_t * __restrict__, wchar_t ** __restrict__);
long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);


 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wgetenv(const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wputenv(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsearchenv(const wchar_t*, const wchar_t*, wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsystem(const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wmakepath(wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*, const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wsplitpath (const wchar_t*, wchar_t*, wchar_t*, wchar_t*, wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfullpath (wchar_t*, const wchar_t*, size_t);




 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstombs (char*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wctomb (char*, wchar_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mblen (const char*, size_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbstowcs (wchar_t*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) mbtowc (wchar_t*, const char*, size_t);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rand (void);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) srand (unsigned int);

 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) calloc (size_t, size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) malloc (size_t) __attribute__ ((__malloc__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) realloc (void*, size_t);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) free (void*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abort (void) __attribute__ ((__noreturn__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit (int) __attribute__ ((__noreturn__));


int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atexit (void (*)(void));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) system (const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getenv (const char*);


 void* __attribute__((__cdecl__)) bsearch (const void*, const void*, size_t, size_t,
          int (*)(const void*, const void*));
 void __attribute__((__cdecl__)) qsort(void*, size_t, size_t,
      int (*)(const void*, const void*));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) abs (int) __attribute__ ((__const__));
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) labs (long) __attribute__ ((__const__));
# 385 "c:\\devel\\mingw\\include\\stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 div_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) div (int, int) __attribute__ ((__const__));
 ldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ldiv (long, long) __attribute__ ((__const__));







 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _beep (unsigned int, unsigned int) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _seterrormode (int) __attribute__ ((__deprecated__));
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _sleep (unsigned long) __attribute__ ((__deprecated__));

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit (int) __attribute__ ((__noreturn__));



typedef int (* _onexit_t)(void);
_onexit_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _onexit( _onexit_t );

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _gcvt (double, int, char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _makepath (char*, const char*, const char*, const char*, const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _splitpath (const char*, char*, char*, char*, char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fullpath (char*, const char*, size_t);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltoa (long, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultoa(unsigned long, char*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _itow (int, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ltow (long, wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ultow (unsigned long, wchar_t*, int);


 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _atoi64(const char *);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64toa(long long, char *, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64toa(unsigned long long, char *, int);
 long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtoi64(const wchar_t *);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _i64tow(long long, wchar_t *, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _ui64tow(unsigned long long, wchar_t *, int);

 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotl)(unsigned int, int) __attribute__ ((__const__));
 unsigned int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_rotr)(unsigned int, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotl)(unsigned long, int) __attribute__ ((__const__));
 unsigned long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) (_lrotr)(unsigned long, int) __attribute__ ((__const__));

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _set_error_mode (int);
# 477 "c:\\devel\\mingw\\include\\stdlib.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putenv (const char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) searchenv (const char*, const char*, char*);

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) itoa (int, char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ltoa (long, char*, int);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ecvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fcvt (double, int, int*, int*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gcvt (double, int, char*);
# 497 "c:\\devel\\mingw\\include\\stdlib.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int) __attribute__ ((__noreturn__));

inline void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _Exit(int __status)
 { _exit (__status); }


typedef struct { long long quot, rem; } lldiv_t;

lldiv_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lldiv (long long, long long) __attribute__ ((__const__));

long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long);

inline long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) llabs(long long _j)
  {return (_j >= 0 ? _j : -_j);}


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoll (const char* __restrict__, char** __restrict, int);
unsigned long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtoull (const char* __restrict__, char** __restrict__, int);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char *);


long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t *);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long, char *, int);
char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long , char *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long, wchar_t *, int);
wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long, wchar_t *, int);



inline long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) atoll (const char * _c)
 { return _atoi64 (_c); }
inline char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltoa (long long _n, char * _c, int _i)
 { return _i64toa (_n, _c, _i); }
inline char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltoa (unsigned long long _n, char * _c, int _i)
 { return _ui64toa (_n, _c, _i); }
inline long long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wtoll (const wchar_t * _w)
  { return _wtoi64 (_w); }
inline wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) lltow (long long _n, wchar_t * _w, int _i)
 { return _i64tow (_n, _w, _i); }
inline wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ulltow (unsigned long long _n, wchar_t * _w, int _i)
 { return _ui64tow (_n, _w, _i); }
# 549 "c:\\devel\\mingw\\include\\stdlib.h" 3
}
# 28 "C:/bullet3-master/src/LinearMath/btScalar.h" 2
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\float.h" 1 3 4
# 29 "C:/bullet3-master/src/LinearMath/btScalar.h" 2




inline int btGetVersion()
{
 return 283;
}
# 278 "C:/bullet3-master/src/LinearMath/btScalar.h"
typedef float btScalar;
# 353 "C:/bullet3-master/src/LinearMath/btScalar.h"
  struct btInfMaskConverter
  {
          union {
                  float mask;
                  int intmask;
          };
          btInfMaskConverter(int mask=0x7F800000)
          :intmask(mask)
          {
          }
  };
  static btInfMaskConverter btInfinityMask = 0x7F800000;

  inline int btGetInfinityMask()
  {
          return btInfinityMask.intmask;
  }
# 418 "C:/bullet3-master/src/LinearMath/btScalar.h"
inline btScalar btSqrt(btScalar y)
{
# 435 "C:/bullet3-master/src/LinearMath/btScalar.h"
 return sqrtf(y);

}
inline btScalar btFabs(btScalar x) { return fabsf(x); }
inline btScalar btCos(btScalar x) { return cosf(x); }
inline btScalar btSin(btScalar x) { return sinf(x); }
inline btScalar btTan(btScalar x) { return tanf(x); }
inline btScalar btAcos(btScalar x) {
 if (x<btScalar(-1))
  x=btScalar(-1);
 if (x>btScalar(1))
  x=btScalar(1);
 return acosf(x);
}
inline btScalar btAsin(btScalar x) {
 if (x<btScalar(-1))
  x=btScalar(-1);
 if (x>btScalar(1))
  x=btScalar(1);
 return asinf(x);
}
inline btScalar btAtan(btScalar x) { return atanf(x); }
inline btScalar btAtan2(btScalar x, btScalar y) { return atan2f(x, y); }
inline btScalar btExp(btScalar x) { return expf(x); }
inline btScalar btLog(btScalar x) { return logf(x); }
inline btScalar btPow(btScalar x,btScalar y) { return powf(x,y); }
inline btScalar btFmod(btScalar x,btScalar y) { return fmodf(x,y); }
# 483 "C:/bullet3-master/src/LinearMath/btScalar.h"
inline btScalar btAtan2Fast(btScalar y, btScalar x)
{
 btScalar coeff_1 = btScalar(3.1415926535897932384626433832795029) / 4.0f;
 btScalar coeff_2 = 3.0f * coeff_1;
 btScalar abs_y = btFabs(y);
 btScalar angle;
 if (x >= 0.0f) {
  btScalar r = (x - abs_y) / (x + abs_y);
  angle = coeff_1 - coeff_1 * r;
 } else {
  btScalar r = (x + abs_y) / (abs_y - x);
  angle = coeff_2 - coeff_1 * r;
 }
 return (y < 0.0f) ? -angle : angle;
}

inline bool btFuzzyZero(btScalar x) { return btFabs(x) < 1.19209289550781250000e-7F; }

inline bool btEqual(btScalar a, btScalar eps) {
 return (((a) <= eps) && !((a) < -eps));
}
inline bool btGreaterEqual (btScalar a, btScalar eps) {
 return (!((a) <= eps));
}


inline int btIsNegative(btScalar x) {
    return x < btScalar(0.0) ? 1 : 0;
}

inline btScalar btRadians(btScalar x) { return x * ((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)); }
inline btScalar btDegrees(btScalar x) { return x * (btScalar(360.0) / (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029))); }




inline btScalar btFsel(btScalar a, btScalar b, btScalar c)
{
 return a >= 0 ? b : c;
}




inline bool btMachineIsLittleEndian()
{
   long int i = 1;
   const char *p = (const char *) &i;
   if (p[0] == 1)
    return true;
   else
    return false;
}





inline unsigned btSelect(unsigned condition, unsigned valueIfConditionNonZero, unsigned valueIfConditionZero)
{




    unsigned testNz = (unsigned)(((int)condition | -(int)condition) >> 31);
    unsigned testEqz = ~testNz;
    return ((valueIfConditionNonZero & testNz) | (valueIfConditionZero & testEqz));
}
inline int btSelect(unsigned condition, int valueIfConditionNonZero, int valueIfConditionZero)
{
    unsigned testNz = (unsigned)(((int)condition | -(int)condition) >> 31);
    unsigned testEqz = ~testNz;
    return static_cast<int>((valueIfConditionNonZero & testNz) | (valueIfConditionZero & testEqz));
}
inline float btSelect(unsigned condition, float valueIfConditionNonZero, float valueIfConditionZero)
{



    return (condition != 0) ? valueIfConditionNonZero : valueIfConditionZero;

}

template<typename T> inline void btSwap(T& a, T& b)
{
 T tmp = a;
 a = b;
 b = tmp;
}



inline unsigned btSwapEndian(unsigned val)
{
 return (((val & 0xff000000) >> 24) | ((val & 0x00ff0000) >> 8) | ((val & 0x0000ff00) << 8) | ((val & 0x000000ff) << 24));
}

inline unsigned short btSwapEndian(unsigned short val)
{
 return static_cast<unsigned short>(((val & 0xff00) >> 8) | ((val & 0x00ff) << 8));
}

inline unsigned btSwapEndian(int val)
{
 return btSwapEndian((unsigned)val);
}

inline unsigned short btSwapEndian(short val)
{
 return btSwapEndian((unsigned short) val);
}







inline unsigned int btSwapEndianFloat(float d)
{
    unsigned int a = 0;
    unsigned char *dst = (unsigned char *)&a;
    unsigned char *src = (unsigned char *)&d;

    dst[0] = src[3];
    dst[1] = src[2];
    dst[2] = src[1];
    dst[3] = src[0];
    return a;
}


inline float btUnswapEndianFloat(unsigned int a)
{
    float d = 0.0f;
    unsigned char *src = (unsigned char *)&a;
    unsigned char *dst = (unsigned char *)&d;

    dst[0] = src[3];
    dst[1] = src[2];
    dst[2] = src[1];
    dst[3] = src[0];

    return d;
}



inline void btSwapEndianDouble(double d, unsigned char* dst)
{
    unsigned char *src = (unsigned char *)&d;

    dst[0] = src[7];
    dst[1] = src[6];
    dst[2] = src[5];
    dst[3] = src[4];
    dst[4] = src[3];
    dst[5] = src[2];
    dst[6] = src[1];
    dst[7] = src[0];

}


inline double btUnswapEndianDouble(const unsigned char *src)
{
    double d = 0.0;
    unsigned char *dst = (unsigned char *)&d;

    dst[0] = src[7];
    dst[1] = src[6];
    dst[2] = src[5];
    dst[3] = src[4];
    dst[4] = src[3];
    dst[5] = src[2];
    dst[6] = src[1];
    dst[7] = src[0];

 return d;
}

template<typename T>
inline void btSetZero(T* a, int n)
{
  T* acurr = a;
  size_t ncurr = n;
  while (ncurr > 0)
  {
    *(acurr++) = 0;
    --ncurr;
  }
}


inline btScalar btLargeDot(const btScalar *a, const btScalar *b, int n)
{
  btScalar p0,q0,m0,p1,q1,m1,sum;
  sum = 0;
  n -= 2;
  while (n >= 0) {
    p0 = a[0]; q0 = b[0];
    m0 = p0 * q0;
    p1 = a[1]; q1 = b[1];
    m1 = p1 * q1;
    sum += m0;
    sum += m1;
    a += 2;
    b += 2;
    n -= 2;
  }
  n += 2;
  while (n > 0) {
    sum += (*a) * (*b);
    a++;
    b++;
    n--;
  }
  return sum;
}



inline btScalar btNormalizeAngle(btScalar angleInRadians)
{
 angleInRadians = btFmod(angleInRadians, (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)));
 if(angleInRadians < -btScalar(3.1415926535897932384626433832795029))
 {
  return angleInRadians + (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
 }
 else if(angleInRadians > btScalar(3.1415926535897932384626433832795029))
 {
  return angleInRadians - (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
 }
 else
 {
  return angleInRadians;
 }
}




struct btTypedObject
{
 btTypedObject(int objectType)
  :m_objectType(objectType)
 {
 }
 int m_objectType;
 inline int getObjectType() const
 {
  return m_objectType;
 }
};




template <typename T>T* btAlignPointer(T* unalignedPtr, size_t alignment)
{

 struct btConvertPointerSizeT
 {
  union
  {
    T* ptr;
    size_t integer;
  };
 };
    btConvertPointerSizeT converter;


 const size_t bit_mask = ~(alignment - 1);
    converter.ptr = unalignedPtr;
 converter.integer += alignment-1;
 converter.integer &= bit_mask;
 return converter.ptr;
}
# 21 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h" 2
# 1 "C:/bullet3-master/src/LinearMath/btAlignedAllocator.h" 1
# 38 "C:/bullet3-master/src/LinearMath/btAlignedAllocator.h"
 void* btAlignedAllocInternal (size_t size, int alignment);
 void btAlignedFreeInternal (void* ptr);





typedef int size_type;

typedef void *(btAlignedAllocFunc)(size_t size, int alignment);
typedef void (btAlignedFreeFunc)(void *memblock);
typedef void *(btAllocFunc)(size_t size);
typedef void (btFreeFunc)(void *memblock);


void btAlignedAllocSetCustom(btAllocFunc *allocFunc, btFreeFunc *freeFunc);

void btAlignedAllocSetCustomAligned(btAlignedAllocFunc *allocFunc, btAlignedFreeFunc *freeFunc);




template < typename T , unsigned Alignment >
class btAlignedAllocator {

 typedef btAlignedAllocator< T , Alignment > self_type;

public:


 btAlignedAllocator() {}




 template < typename Other >
 btAlignedAllocator( const btAlignedAllocator< Other , Alignment > & ) {}

 typedef const T* const_pointer;
 typedef const T& const_reference;
 typedef T* pointer;
 typedef T& reference;
 typedef T value_type;

 pointer address ( reference ref ) const { return &ref; }
 const_pointer address ( const_reference ref ) const { return &ref; }
 pointer allocate ( size_type n , const_pointer * hint = 0 ) {
  (void)hint;
  return reinterpret_cast< pointer >(btAlignedAllocInternal(sizeof(value_type) * n,Alignment));
 }
 void construct ( pointer ptr , const value_type & value ) { new (ptr) value_type( value ); }
 void deallocate( pointer ptr ) {
  btAlignedFreeInternal(reinterpret_cast< void * >( ptr ));
 }
 void destroy ( pointer ptr ) { ptr->~value_type(); }


 template < typename O > struct rebind {
  typedef btAlignedAllocator< O , Alignment > other;
 };
 template < typename O >
 self_type & operator=( const btAlignedAllocator< O , Alignment > & ) { return *this; }

 friend bool operator==( const self_type & , const self_type & ) { return true; }
};
# 22 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h" 2
# 39 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h"
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 1 3
# 37 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 3
       
# 38 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 3

# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\c++config.h" 1 3
# 178 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\c++config.h" 3
namespace std
{
  typedef unsigned int size_t;
  typedef int ptrdiff_t;




}
# 420 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\c++config.h" 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\os_defines.h" 1 3
# 421 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\c++config.h" 2 3


# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\cpu_defines.h" 1 3
# 424 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\mingw32\\bits\\c++config.h" 2 3
# 40 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 2 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 1 3
# 33 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 3
       
# 34 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 3

#pragma GCC visibility push(default)


# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\bits\\atomic_lockfree_defines.h" 1 3
# 33 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\bits\\atomic_lockfree_defines.h" 3
       
# 34 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\bits\\atomic_lockfree_defines.h" 3
# 39 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 2 3

extern "C++" {

namespace std
{
# 60 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 3
  class exception
  {
  public:
    exception() throw() { }
    virtual ~exception() throw();



    virtual const char* what() const throw();
  };



  class bad_exception : public exception
  {
  public:
    bad_exception() throw() { }



    virtual ~bad_exception() throw();


    virtual const char* what() const throw();
  };


  typedef void (*terminate_handler) ();


  typedef void (*unexpected_handler) ();


  terminate_handler set_terminate(terminate_handler) throw();



  void terminate() throw() __attribute__ ((__noreturn__));


  unexpected_handler set_unexpected(unexpected_handler) throw();



  void unexpected() __attribute__ ((__noreturn__));
# 117 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 3
  bool uncaught_exception() throw() __attribute__ ((__pure__));


}

namespace __gnu_cxx
{

# 142 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\exception" 3
  void __verbose_terminate_handler();


}

}

#pragma GCC visibility pop
# 41 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 2 3

#pragma GCC visibility push(default)

extern "C++" {

namespace std
{






  class bad_alloc : public exception
  {
  public:
    bad_alloc() throw() { }



    virtual ~bad_alloc() throw();


    virtual const char* what() const throw();
  };

  struct nothrow_t { };

  extern const nothrow_t nothrow;



  typedef void (*new_handler)();



  new_handler set_new_handler(new_handler) throw();
}
# 91 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\c++\\new" 3
void* operator new(std::size_t) throw(std::bad_alloc)
  __attribute__((__externally_visible__));
void* operator new[](std::size_t) throw(std::bad_alloc)
  __attribute__((__externally_visible__));
void operator delete(void*) throw()
  __attribute__((__externally_visible__));
void operator delete[](void*) throw()
  __attribute__((__externally_visible__));
void* operator new(std::size_t, const std::nothrow_t&) throw()
  __attribute__((__externally_visible__));
void* operator new[](std::size_t, const std::nothrow_t&) throw()
  __attribute__((__externally_visible__));
void operator delete(void*, const std::nothrow_t&) throw()
  __attribute__((__externally_visible__));
void operator delete[](void*, const std::nothrow_t&) throw()
  __attribute__((__externally_visible__));


inline void* operator new(std::size_t, void* __p) throw()
{ return __p; }
inline void* operator new[](std::size_t, void* __p) throw()
{ return __p; }


inline void operator delete (void*, void*) throw() { }
inline void operator delete[](void*, void*) throw() { }

}

#pragma GCC visibility pop
# 40 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h" 2





template <typename T>

class btAlignedObjectArray
{
 btAlignedAllocator<T , 16> m_allocator;

 int m_size;
 int m_capacity;
 T* m_data;

 bool m_ownsMemory;


public:
 inline btAlignedObjectArray<T>& operator=(const btAlignedObjectArray<T> &other)
 {
  copyFromArray(other);
  return *this;
 }





protected:
  inline int allocSize(int size)
  {
   return (size ? size*2 : 1);
  }
  inline void copy(int start,int end, T* dest) const
  {
   int i;
   for (i=start;i<end;++i)

    new (&dest[i]) T(m_data[i]);



  }

  inline void init()
  {

   m_ownsMemory = true;
   m_data = 0;
   m_size = 0;
   m_capacity = 0;
  }
  inline void destroy(int first,int last)
  {
   int i;
   for (i=first; i<last;i++)
   {
    m_data[i].~T();
   }
  }

  inline void* allocate(int size)
  {
   if (size)
    return m_allocator.allocate(size);
   return 0;
  }

  inline void deallocate()
  {
   if(m_data) {

    if (m_ownsMemory)
    {
     m_allocator.deallocate(m_data);
    }
    m_data = 0;
   }
  }




 public:

  btAlignedObjectArray()
  {
   init();
  }

  ~btAlignedObjectArray()
  {
   clear();
  }


  btAlignedObjectArray(const btAlignedObjectArray& otherArray)
  {
   init();

   int otherSize = otherArray.size();
   resize (otherSize);
   otherArray.copy(0, otherSize, m_data);
  }




  inline int size() const
  {
   return m_size;
  }

  inline const T& at(int n) const
  {
   ;
   ;
   return m_data[n];
  }

  inline T& at(int n)
  {
   ;
   ;
   return m_data[n];
  }

  inline const T& operator[](int n) const
  {
   ;
   ;
   return m_data[n];
  }

  inline T& operator[](int n)
  {
   ;
   ;
   return m_data[n];
  }



  inline void clear()
  {
   destroy(0,size());

   deallocate();

   init();
  }

  inline void pop_back()
  {
   ;
   m_size--;
   m_data[m_size].~T();
  }




  inline void resizeNoInitialize(int newsize)
  {
   int curSize = size();

   if (newsize < curSize)
   {
   } else
   {
    if (newsize > size())
    {
     reserve(newsize);
    }

   }
   m_size = newsize;
  }

  inline void resize(int newsize, const T& fillData=T())
  {
   int curSize = size();

   if (newsize < curSize)
   {
    for(int i = newsize; i < curSize; i++)
    {
     m_data[i].~T();
    }
   } else
   {
    if (newsize > size())
    {
     reserve(newsize);
    }

    for (int i=curSize;i<newsize;i++)
    {
     new ( &m_data[i]) T(fillData);
    }


   }

   m_size = newsize;
  }
  inline T& expandNonInitializing( )
  {
   int sz = size();
   if( sz == capacity() )
   {
    reserve( allocSize(size()) );
   }
   m_size++;

   return m_data[sz];
  }


  inline T& expand( const T& fillValue=T())
  {
   int sz = size();
   if( sz == capacity() )
   {
    reserve( allocSize(size()) );
   }
   m_size++;

   new (&m_data[sz]) T(fillValue);


   return m_data[sz];
  }


  inline void push_back(const T& _Val)
  {
   int sz = size();
   if( sz == capacity() )
   {
    reserve( allocSize(size()) );
   }


   new ( &m_data[m_size] ) T(_Val);




   m_size++;
  }



  inline int capacity() const
  {
   return m_capacity;
  }

  inline void reserve(int _Count)
  {
   if (capacity() < _Count)
   {
    T* s = (T*)allocate(_Count);

    copy(0, size(), s);

    destroy(0,size());

    deallocate();


    m_ownsMemory = true;

    m_data = s;

    m_capacity = _Count;

   }
  }


  class less
  {
   public:

    bool operator() ( const T& a, const T& b )
    {
     return ( a < b );
    }
  };


  template <typename L>
  void quickSortInternal(const L& CompareFunc,int lo, int hi)
  {


   int i=lo, j=hi;
   T x=m_data[(lo+hi)/2];


   do
   {
    while (CompareFunc(m_data[i],x))
     i++;
    while (CompareFunc(x,m_data[j]))
     j--;
    if (i<=j)
    {
     swap(i,j);
     i++; j--;
    }
   } while (i<=j);


   if (lo<j)
    quickSortInternal( CompareFunc, lo, j);
   if (i<hi)
    quickSortInternal( CompareFunc, i, hi);
  }


  template <typename L>
  void quickSort(const L& CompareFunc)
  {

   if (size()>1)
   {
    quickSortInternal(CompareFunc,0,size()-1);
   }
  }



  template <typename L>
  void downHeap(T *pArr, int k, int n, const L& CompareFunc)
  {



   T temp = pArr[k - 1];

   while (k <= n/2)
   {
    int child = 2*k;

    if ((child < n) && CompareFunc(pArr[child - 1] , pArr[child]))
    {
     child++;
    }

    if (CompareFunc(temp , pArr[child - 1]))
    {

     pArr[k - 1] = pArr[child - 1];
     k = child;
    }
    else
    {
     break;
    }
   }
   pArr[k - 1] = temp;
  }

  void swap(int index0,int index1)
  {






   T temp = m_data[index0];
   m_data[index0] = m_data[index1];
   m_data[index1] = temp;


  }

 template <typename L>
 void heapSort(const L& CompareFunc)
 {

  int k;
  int n = m_size;
  for (k = n/2; k > 0; k--)
  {
   downHeap(m_data, k, n, CompareFunc);
  }


  while ( n>=1 )
  {
   swap(0,n-1);


   n = n - 1;

   downHeap(m_data, 1, n, CompareFunc);
  }
 }


 int findBinarySearch(const T& key) const
 {
  int first = 0;
  int last = size()-1;


  while (first <= last) {
   int mid = (first + last) / 2;
   if (key > m_data[mid])
    first = mid + 1;
   else if (key < m_data[mid])
    last = mid - 1;
   else
    return mid;
  }
  return size();
 }


 int findLinearSearch(const T& key) const
 {
  int index=size();
  int i;

  for (i=0;i<size();i++)
  {
   if (m_data[i] == key)
   {
    index = i;
    break;
   }
  }
  return index;
 }

 void remove(const T& key)
 {

  int findIndex = findLinearSearch(key);
  if (findIndex<size())
  {
   swap( findIndex,size()-1);
   pop_back();
  }
 }


 void initializeFromBuffer(void *buffer, int size, int capacity)
 {
  clear();
  m_ownsMemory = false;
  m_data = (T*)buffer;
  m_size = size;
  m_capacity = capacity;
 }

 void copyFromArray(const btAlignedObjectArray& otherArray)
 {
  int otherSize = otherArray.size();
  resize (otherSize);
  otherArray.copy(0, otherSize, m_data);
 }

};
# 21 "C:/bullet3-master/src/LinearMath/btHashMap.h" 2


struct btHashString
{
 const char* m_string;
 unsigned int m_hash;

 inline unsigned int getHash()const
 {
  return m_hash;
 }

 btHashString(const char* name)
  :m_string(name)
 {

  static const unsigned int InitialFNV = 2166136261u;
  static const unsigned int FNVMultiple = 16777619u;


  unsigned int hash = InitialFNV;

  for(int i = 0; m_string[i]; i++)
  {
   hash = hash ^ (m_string[i]);
   hash = hash * FNVMultiple;
  }
  m_hash = hash;
 }

 int portableStringCompare(const char* src, const char* dst) const
 {
   int ret = 0 ;

   while( ! (ret = *(unsigned char *)src - *(unsigned char *)dst) && *dst)
     ++src, ++dst;

   if ( ret < 0 )
     ret = -1 ;
   else if ( ret > 0 )
     ret = 1 ;

   return( ret );
 }

 bool equals(const btHashString& other) const
 {
  return (m_string == other.m_string) ||
   (0==portableStringCompare(m_string,other.m_string));

 }

};

const int BT_HASH_NULL=0xffffffff;


class btHashInt
{
 int m_uid;
public:
 btHashInt(int uid) :m_uid(uid)
 {
 }

 int getUid1() const
 {
  return m_uid;
 }

 void setUid1(int uid)
 {
  m_uid = uid;
 }

 bool equals(const btHashInt& other) const
 {
  return getUid1() == other.getUid1();
 }

 inline unsigned int getHash()const
 {
  int key = m_uid;

  key += ~(key << 15); key ^= (key >> 10); key += (key << 3); key ^= (key >> 6); key += ~(key << 11); key ^= (key >> 16);
  return key;
 }
};



class btHashPtr
{

 union
 {
  const void* m_pointer;
  int m_hashValues[2];
 };

public:

 btHashPtr(const void* ptr)
  :m_pointer(ptr)
 {
 }

 const void* getPointer() const
 {
  return m_pointer;
 }

 bool equals(const btHashPtr& other) const
 {
  return getPointer() == other.getPointer();
 }


 inline unsigned int getHash()const
 {
  const bool VOID_IS_8 = ((sizeof(void*)==8));

  int key = VOID_IS_8? m_hashValues[0]+m_hashValues[1] : m_hashValues[0];


  key += ~(key << 15); key ^= (key >> 10); key += (key << 3); key ^= (key >> 6); key += ~(key << 11); key ^= (key >> 16);
  return key;
 }


};


template <class Value>
class btHashKeyPtr
{
        int m_uid;
public:

        btHashKeyPtr(int uid) :m_uid(uid)
        {
        }

        int getUid1() const
        {
                return m_uid;
        }

        bool equals(const btHashKeyPtr<Value>& other) const
        {
                return getUid1() == other.getUid1();
        }


        inline unsigned int getHash()const
        {
                int key = m_uid;

                key += ~(key << 15); key ^= (key >> 10); key += (key << 3); key ^= (key >> 6); key += ~(key << 11); key ^= (key >> 16);
                return key;
        }


};


template <class Value>
class btHashKey
{
 int m_uid;
public:

 btHashKey(int uid) :m_uid(uid)
 {
 }

 int getUid1() const
 {
  return m_uid;
 }

 bool equals(const btHashKey<Value>& other) const
 {
  return getUid1() == other.getUid1();
 }

 inline unsigned int getHash()const
 {
  int key = m_uid;

  key += ~(key << 15); key ^= (key >> 10); key += (key << 3); key ^= (key >> 6); key += ~(key << 11); key ^= (key >> 16);
  return key;
 }
};




template <class Key, class Value>
class btHashMap
{

protected:
 btAlignedObjectArray<int> m_hashTable;
 btAlignedObjectArray<int> m_next;

 btAlignedObjectArray<Value> m_valueArray;
 btAlignedObjectArray<Key> m_keyArray;

 void growTables(const Key& )
 {
  int newCapacity = m_valueArray.capacity();

  if (m_hashTable.size() < newCapacity)
  {

   int curHashtableSize = m_hashTable.size();

   m_hashTable.resize(newCapacity);
   m_next.resize(newCapacity);

   int i;

   for (i= 0; i < newCapacity; ++i)
   {
    m_hashTable[i] = BT_HASH_NULL;
   }
   for (i = 0; i < newCapacity; ++i)
   {
    m_next[i] = BT_HASH_NULL;
   }

   for(i=0;i<curHashtableSize;i++)
   {



    int hashValue = m_keyArray[i].getHash() & (m_valueArray.capacity()-1);
    m_next[i] = m_hashTable[hashValue];
    m_hashTable[hashValue] = i;
   }


  }
 }

 public:

 void insert(const Key& key, const Value& value) {
  int hash = key.getHash() & (m_valueArray.capacity()-1);


  int index = findIndex(key);
  if (index != BT_HASH_NULL)
  {
   m_valueArray[index]=value;
   return;
  }

  int count = m_valueArray.size();
  int oldCapacity = m_valueArray.capacity();
  m_valueArray.push_back(value);
  m_keyArray.push_back(key);

  int newCapacity = m_valueArray.capacity();
  if (oldCapacity < newCapacity)
  {
   growTables(key);

   hash = key.getHash() & (m_valueArray.capacity()-1);
  }
  m_next[count] = m_hashTable[hash];
  m_hashTable[hash] = count;
 }

 void remove(const Key& key) {

  int hash = key.getHash() & (m_valueArray.capacity()-1);

  int pairIndex = findIndex(key);

  if (pairIndex ==BT_HASH_NULL)
  {
   return;
  }


  int index = m_hashTable[hash];
  ;

  int previous = BT_HASH_NULL;
  while (index != pairIndex)
  {
   previous = index;
   index = m_next[index];
  }

  if (previous != BT_HASH_NULL)
  {
   ;
   m_next[previous] = m_next[pairIndex];
  }
  else
  {
   m_hashTable[hash] = m_next[pairIndex];
  }





  int lastPairIndex = m_valueArray.size() - 1;


  if (lastPairIndex == pairIndex)
  {
   m_valueArray.pop_back();
   m_keyArray.pop_back();
   return;
  }


  int lastHash = m_keyArray[lastPairIndex].getHash() & (m_valueArray.capacity()-1);

  index = m_hashTable[lastHash];
  ;

  previous = BT_HASH_NULL;
  while (index != lastPairIndex)
  {
   previous = index;
   index = m_next[index];
  }

  if (previous != BT_HASH_NULL)
  {
   ;
   m_next[previous] = m_next[lastPairIndex];
  }
  else
  {
   m_hashTable[lastHash] = m_next[lastPairIndex];
  }


  m_valueArray[pairIndex] = m_valueArray[lastPairIndex];
  m_keyArray[pairIndex] = m_keyArray[lastPairIndex];


  m_next[pairIndex] = m_hashTable[lastHash];
  m_hashTable[lastHash] = pairIndex;

  m_valueArray.pop_back();
  m_keyArray.pop_back();

 }


 int size() const
 {
  return m_valueArray.size();
 }

 const Value* getAtIndex(int index) const
 {
  ;

  return &m_valueArray[index];
 }

 Value* getAtIndex(int index)
 {
  ;

  return &m_valueArray[index];
 }

 Value* operator[](const Key& key) {
  return find(key);
 }

 const Value* find(const Key& key) const
 {
  int index = findIndex(key);
  if (index == BT_HASH_NULL)
  {
   return __null;
  }
  return &m_valueArray[index];
 }

 Value* find(const Key& key)
 {
  int index = findIndex(key);
  if (index == BT_HASH_NULL)
  {
   return __null;
  }
  return &m_valueArray[index];
 }


 int findIndex(const Key& key) const
 {
  unsigned int hash = key.getHash() & (m_valueArray.capacity()-1);

  if (hash >= (unsigned int)m_hashTable.size())
  {
   return BT_HASH_NULL;
  }

  int index = m_hashTable[hash];
  while ((index != BT_HASH_NULL) && key.equals(m_keyArray[index]) == false)
  {
   index = m_next[index];
  }
  return index;
 }

 void clear()
 {
  m_hashTable.clear();
  m_next.clear();
  m_valueArray.clear();
  m_keyArray.clear();
 }

};
# 6 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.h" 2
# 1 "C:/bullet3-master/src/LinearMath/btVector3.h" 1
# 22 "C:/bullet3-master/src/LinearMath/btVector3.h"
# 1 "C:/bullet3-master/src/LinearMath/btMinMax.h" 1
# 22 "C:/bullet3-master/src/LinearMath/btMinMax.h"
template <class T>
inline const T& btMin(const T& a, const T& b)
{
  return a < b ? a : b ;
}

template <class T>
inline const T& btMax(const T& a, const T& b)
{
  return a > b ? a : b;
}

template <class T>
inline const T& btClamped(const T& a, const T& lb, const T& ub)
{
 return a < lb ? lb : (ub < a ? ub : a);
}

template <class T>
inline void btSetMin(T& a, const T& b)
{
    if (b < a)
 {
  a = b;
 }
}

template <class T>
inline void btSetMax(T& a, const T& b)
{
    if (a < b)
 {
  a = b;
 }
}

template <class T>
inline void btClamp(T& a, const T& lb, const T& ub)
{
 if (a < lb)
 {
  a = lb;
 }
 else if (ub < a)
 {
  a = ub;
 }
}
# 23 "C:/bullet3-master/src/LinearMath/btVector3.h" 2
# 83 "C:/bullet3-master/src/LinearMath/btVector3.h"
class btVector3
{
public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };
# 112 "C:/bullet3-master/src/LinearMath/btVector3.h"
        btScalar m_floats[4];



 public:


 inline btVector3()
 {

 }
# 131 "C:/bullet3-master/src/LinearMath/btVector3.h"
 inline btVector3(const btScalar& _x, const btScalar& _y, const btScalar& _z)
 {
  m_floats[0] = _x;
  m_floats[1] = _y;
  m_floats[2] = _z;
  m_floats[3] = btScalar(0.f);
 }
# 164 "C:/bullet3-master/src/LinearMath/btVector3.h"
 inline btVector3& operator+=(const btVector3& v)
 {





  m_floats[0] += v.m_floats[0];
  m_floats[1] += v.m_floats[1];
  m_floats[2] += v.m_floats[2];

  return *this;
 }




 inline btVector3& operator-=(const btVector3& v)
 {





  m_floats[0] -= v.m_floats[0];
  m_floats[1] -= v.m_floats[1];
  m_floats[2] -= v.m_floats[2];

  return *this;
 }



 inline btVector3& operator*=(const btScalar& s)
 {







  m_floats[0] *= s;
  m_floats[1] *= s;
  m_floats[2] *= s;

  return *this;
 }



 inline btVector3& operator/=(const btScalar& s)
 {
  ;
# 229 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return *this *= btScalar(1.0) / s;

 }



 inline btScalar dot(const btVector3& v) const
 {
# 250 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return m_floats[0] * v.m_floats[0] +
    m_floats[1] * v.m_floats[1] +
    m_floats[2] * v.m_floats[2];

 }


 inline btScalar length2() const
 {
  return dot(*this);
 }


 inline btScalar length() const
 {
  return btSqrt(length2());
 }


 inline btScalar norm() const
 {
  return length();
 }



 inline btScalar distance2(const btVector3& v) const;



 inline btScalar distance(const btVector3& v) const;

 inline btVector3& safeNormalize()
 {
  btVector3 absVec = this->absolute();
  int maxIndex = absVec.maxAxis();
  if (absVec[maxIndex]>0)
  {
   *this /= absVec[maxIndex];
   return *this /= length();
  }
  setValue(1,0,0);
  return *this;
 }



 inline btVector3& normalize()
 {

  ;
# 338 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return *this /= length();

 }


 inline btVector3 normalized() const;




 inline btVector3 rotate( const btVector3& wAxis, const btScalar angle ) const;



 inline btScalar angle(const btVector3& v) const
 {
  btScalar s = btSqrt(length2() * v.length2());
  ;
  return btAcos(dot(v) / s);
 }


 inline btVector3 absolute() const
 {






  return btVector3(
   btFabs(m_floats[0]),
   btFabs(m_floats[1]),
   btFabs(m_floats[2]));

 }



 inline btVector3 cross(const btVector3& v) const
 {
# 409 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return btVector3(
   m_floats[1] * v.m_floats[2] - m_floats[2] * v.m_floats[1],
   m_floats[2] * v.m_floats[0] - m_floats[0] * v.m_floats[2],
   m_floats[0] * v.m_floats[1] - m_floats[1] * v.m_floats[0]);

 }

 inline btScalar triple(const btVector3& v1, const btVector3& v2) const
 {
# 459 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return
   m_floats[0] * (v1.m_floats[1] * v2.m_floats[2] - v1.m_floats[2] * v2.m_floats[1]) +
   m_floats[1] * (v1.m_floats[2] * v2.m_floats[0] - v1.m_floats[0] * v2.m_floats[2]) +
   m_floats[2] * (v1.m_floats[0] * v2.m_floats[1] - v1.m_floats[1] * v2.m_floats[0]);

 }



 inline int minAxis() const
 {
  return m_floats[0] < m_floats[1] ? (m_floats[0] <m_floats[2] ? 0 : 2) : (m_floats[1] <m_floats[2] ? 1 : 2);
 }



 inline int maxAxis() const
 {
  return m_floats[0] < m_floats[1] ? (m_floats[1] <m_floats[2] ? 2 : 1) : (m_floats[0] <m_floats[2] ? 2 : 0);
 }

 inline int furthestAxis() const
 {
  return absolute().minAxis();
 }

 inline int closestAxis() const
 {
  return absolute().maxAxis();
 }


 inline void setInterpolate3(const btVector3& v0, const btVector3& v1, btScalar rt)
 {
# 508 "C:/bullet3-master/src/LinearMath/btVector3.h"
  btScalar s = btScalar(1.0) - rt;
  m_floats[0] = s * v0.m_floats[0] + rt * v1.m_floats[0];
  m_floats[1] = s * v0.m_floats[1] + rt * v1.m_floats[1];
  m_floats[2] = s * v0.m_floats[2] + rt * v1.m_floats[2];



 }




 inline btVector3 lerp(const btVector3& v, const btScalar& t) const
 {
# 537 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return
   btVector3( m_floats[0] + (v.m_floats[0] - m_floats[0]) * t,
      m_floats[1] + (v.m_floats[1] - m_floats[1]) * t,
      m_floats[2] + (v.m_floats[2] - m_floats[2]) * t);

 }



 inline btVector3& operator*=(const btVector3& v)
 {





  m_floats[0] *= v.m_floats[0];
  m_floats[1] *= v.m_floats[1];
  m_floats[2] *= v.m_floats[2];

  return *this;
 }


  inline const btScalar& getX() const { return m_floats[0]; }

  inline const btScalar& getY() const { return m_floats[1]; }

  inline const btScalar& getZ() const { return m_floats[2]; }

  inline void setX(btScalar _x) { m_floats[0] = _x;};

  inline void setY(btScalar _y) { m_floats[1] = _y;};

  inline void setZ(btScalar _z) { m_floats[2] = _z;};

  inline void setW(btScalar _w) { m_floats[3] = _w;};

  inline const btScalar& x() const { return m_floats[0]; }

  inline const btScalar& y() const { return m_floats[1]; }

  inline const btScalar& z() const { return m_floats[2]; }

  inline const btScalar& w() const { return m_floats[3]; }




 inline operator btScalar *() { return &m_floats[0]; }
 inline operator const btScalar *() const { return &m_floats[0]; }

 inline bool operator==(const btVector3& other) const
 {



  return ((m_floats[3]==other.m_floats[3]) &&
                (m_floats[2]==other.m_floats[2]) &&
                (m_floats[1]==other.m_floats[1]) &&
                (m_floats[0]==other.m_floats[0]));

 }

 inline bool operator!=(const btVector3& other) const
 {
  return !(*this == other);
 }




 inline void setMax(const btVector3& other)
 {





  btSetMax(m_floats[0], other.m_floats[0]);
  btSetMax(m_floats[1], other.m_floats[1]);
  btSetMax(m_floats[2], other.m_floats[2]);
  btSetMax(m_floats[3], other.w());

 }




 inline void setMin(const btVector3& other)
 {





  btSetMin(m_floats[0], other.m_floats[0]);
  btSetMin(m_floats[1], other.m_floats[1]);
  btSetMin(m_floats[2], other.m_floats[2]);
  btSetMin(m_floats[3], other.w());

 }

 inline void setValue(const btScalar& _x, const btScalar& _y, const btScalar& _z)
 {
  m_floats[0]=_x;
  m_floats[1]=_y;
  m_floats[2]=_z;
  m_floats[3] = btScalar(0.f);
 }

 void getSkewSymmetricMatrix(btVector3* v0,btVector3* v1,btVector3* v2) const
 {
# 665 "C:/bullet3-master/src/LinearMath/btVector3.h"
  v0->setValue(0. ,-z() ,y());
  v1->setValue(z() ,0. ,-x());
  v2->setValue(-y() ,x() ,0.);

 }

 void setZero()
 {






  setValue(btScalar(0.),btScalar(0.),btScalar(0.));

 }

 inline bool isZero() const
 {
  return m_floats[0] == btScalar(0) && m_floats[1] == btScalar(0) && m_floats[2] == btScalar(0);
 }


 inline bool fuzzyZero() const
 {
  return length2() < 1.19209289550781250000e-7F*1.19209289550781250000e-7F;
 }

 inline void serialize(struct btVector3FloatData& dataOut) const;

 inline void deSerialize(const struct btVector3FloatData& dataIn);

 inline void serializeFloat(struct btVector3FloatData& dataOut) const;

 inline void deSerializeFloat(const struct btVector3FloatData& dataIn);

 inline void serializeDouble(struct btVector3DoubleData& dataOut) const;

 inline void deSerializeDouble(const struct btVector3DoubleData& dataIn);





        inline long maxDot( const btVector3 *array, long array_count, btScalar &dotOut ) const;





        inline long minDot( const btVector3 *array, long array_count, btScalar &dotOut ) const;


    inline btVector3 dot3( const btVector3 &v0, const btVector3 &v1, const btVector3 &v2 ) const
    {
# 746 "C:/bullet3-master/src/LinearMath/btVector3.h"
  return btVector3( dot(v0), dot(v1), dot(v2));

    }
};


inline btVector3
operator+(const btVector3& v1, const btVector3& v2)
{





 return btVector3(
   v1.m_floats[0] + v2.m_floats[0],
   v1.m_floats[1] + v2.m_floats[1],
   v1.m_floats[2] + v2.m_floats[2]);

}


inline btVector3
operator*(const btVector3& v1, const btVector3& v2)
{





 return btVector3(
   v1.m_floats[0] * v2.m_floats[0],
   v1.m_floats[1] * v2.m_floats[1],
   v1.m_floats[2] * v2.m_floats[2]);

}


inline btVector3
operator-(const btVector3& v1, const btVector3& v2)
{
# 796 "C:/bullet3-master/src/LinearMath/btVector3.h"
 return btVector3(
   v1.m_floats[0] - v2.m_floats[0],
   v1.m_floats[1] - v2.m_floats[1],
   v1.m_floats[2] - v2.m_floats[2]);

}


inline btVector3
operator-(const btVector3& v)
{






 return btVector3(-v.m_floats[0], -v.m_floats[1], -v.m_floats[2]);

}


inline btVector3
operator*(const btVector3& v, const btScalar& s)
{
# 829 "C:/bullet3-master/src/LinearMath/btVector3.h"
 return btVector3(v.m_floats[0] * s, v.m_floats[1] * s, v.m_floats[2] * s);

}


inline btVector3
operator*(const btScalar& s, const btVector3& v)
{
 return v * s;
}


inline btVector3
operator/(const btVector3& v, const btScalar& s)
{
 ;
# 853 "C:/bullet3-master/src/LinearMath/btVector3.h"
 return v * (btScalar(1.0) / s);

}


inline btVector3
operator/(const btVector3& v1, const btVector3& v2)
{
# 880 "C:/bullet3-master/src/LinearMath/btVector3.h"
 return btVector3(
   v1.m_floats[0] / v2.m_floats[0],
   v1.m_floats[1] / v2.m_floats[1],
   v1.m_floats[2] / v2.m_floats[2]);

}


inline btScalar
btDot(const btVector3& v1, const btVector3& v2)
{
 return v1.dot(v2);
}



inline btScalar
btDistance2(const btVector3& v1, const btVector3& v2)
{
 return v1.distance2(v2);
}



inline btScalar
btDistance(const btVector3& v1, const btVector3& v2)
{
 return v1.distance(v2);
}


inline btScalar
btAngle(const btVector3& v1, const btVector3& v2)
{
 return v1.angle(v2);
}


inline btVector3
btCross(const btVector3& v1, const btVector3& v2)
{
 return v1.cross(v2);
}

inline btScalar
btTriple(const btVector3& v1, const btVector3& v2, const btVector3& v3)
{
 return v1.triple(v2, v3);
}





inline btVector3
lerp(const btVector3& v1, const btVector3& v2, const btScalar& t)
{
 return v1.lerp(v2, t);
}



inline btScalar btVector3::distance2(const btVector3& v) const
{
 return (v - *this).length2();
}

inline btScalar btVector3::distance(const btVector3& v) const
{
 return (v - *this).length();
}

inline btVector3 btVector3::normalized() const
{
 btVector3 nrm = *this;

 return nrm.normalize();
}

inline btVector3 btVector3::rotate( const btVector3& wAxis, const btScalar _angle ) const
{
# 991 "C:/bullet3-master/src/LinearMath/btVector3.h"
 btVector3 o = wAxis * wAxis.dot( *this );
 btVector3 _x = *this - o;
 btVector3 _y;

 _y = wAxis.cross( *this );

 return ( o + _x * btCos( _angle ) + _y * btSin( _angle ) );

}

inline long btVector3::maxDot( const btVector3 *array, long array_count, btScalar &dotOut ) const
{
# 1013 "C:/bullet3-master/src/LinearMath/btVector3.h"
    {
        btScalar maxDot1 = -3.40282346638528859812e+38F;
        int i = 0;
        int ptIndex = -1;
        for( i = 0; i < array_count; i++ )
        {
            btScalar dot = array[i].dot(*this);

            if( dot > maxDot1 )
            {
                maxDot1 = dot;
                ptIndex = i;
            }
        }

        dotOut = maxDot1;
        return ptIndex;
    }



}

inline long btVector3::minDot( const btVector3 *array, long array_count, btScalar &dotOut ) const
{
# 1051 "C:/bullet3-master/src/LinearMath/btVector3.h"
    {
        btScalar minDot = 3.40282346638528859812e+38F;
        int i = 0;
        int ptIndex = -1;

        for( i = 0; i < array_count; i++ )
        {
            btScalar dot = array[i].dot(*this);

            if( dot < minDot )
            {
                minDot = dot;
                ptIndex = i;
            }
        }

        dotOut = minDot;

        return ptIndex;
    }



}


class btVector4 : public btVector3
{
public:

 inline btVector4() {}


 inline btVector4(const btScalar& _x, const btScalar& _y, const btScalar& _z,const btScalar& _w)
  : btVector3(_x,_y,_z)
 {
  m_floats[3] = _w;
 }
# 1109 "C:/bullet3-master/src/LinearMath/btVector3.h"
 inline btVector4 absolute4() const
 {





  return btVector4(
   btFabs(m_floats[0]),
   btFabs(m_floats[1]),
   btFabs(m_floats[2]),
   btFabs(m_floats[3]));

 }


 btScalar getW() const { return m_floats[3];}


  inline int maxAxis4() const
 {
  int maxIndex = -1;
  btScalar maxVal = btScalar(-1e18f);
  if (m_floats[0] > maxVal)
  {
   maxIndex = 0;
   maxVal = m_floats[0];
  }
  if (m_floats[1] > maxVal)
  {
   maxIndex = 1;
   maxVal = m_floats[1];
  }
  if (m_floats[2] > maxVal)
  {
   maxIndex = 2;
   maxVal =m_floats[2];
  }
  if (m_floats[3] > maxVal)
  {
   maxIndex = 3;
   maxVal = m_floats[3];
  }

  return maxIndex;
 }


 inline int minAxis4() const
 {
  int minIndex = -1;
  btScalar minVal = btScalar(1e18f);
  if (m_floats[0] < minVal)
  {
   minIndex = 0;
   minVal = m_floats[0];
  }
  if (m_floats[1] < minVal)
  {
   minIndex = 1;
   minVal = m_floats[1];
  }
  if (m_floats[2] < minVal)
  {
   minIndex = 2;
   minVal =m_floats[2];
  }
  if (m_floats[3] < minVal)
  {
   minIndex = 3;
   minVal = m_floats[3];
  }

  return minIndex;
 }


 inline int closestAxis4() const
 {
  return absolute4().maxAxis4();
 }
# 1214 "C:/bullet3-master/src/LinearMath/btVector3.h"
  inline void setValue(const btScalar& _x, const btScalar& _y, const btScalar& _z,const btScalar& _w)
  {
   m_floats[0]=_x;
   m_floats[1]=_y;
   m_floats[2]=_z;
   m_floats[3]=_w;
  }


};



inline void btSwapScalarEndian(const btScalar& sourceVal, btScalar& destVal)
{
# 1241 "C:/bullet3-master/src/LinearMath/btVector3.h"
 unsigned char* dest = (unsigned char*) &destVal;
 unsigned char* src = (unsigned char*) &sourceVal;
 dest[0] = src[3];
    dest[1] = src[2];
    dest[2] = src[1];
    dest[3] = src[0];

}

inline void btSwapVector3Endian(const btVector3& sourceVec, btVector3& destVec)
{
 for (int i=0;i<4;i++)
 {
  btSwapScalarEndian(sourceVec[i],destVec[i]);
 }

}


inline void btUnSwapVector3Endian(btVector3& vector)
{

 btVector3 swappedVec;
 for (int i=0;i<4;i++)
 {
  btSwapScalarEndian(vector[i],swappedVec[i]);
 }
 vector = swappedVec;
}

template <class T>
inline void btPlaneSpace1 (const T& n, T& p, T& q)
{
  if (btFabs(n[2]) > btScalar(0.7071067811865475244008443621048490)) {

    btScalar a = n[1]*n[1] + n[2]*n[2];
    btScalar k = ((btScalar)(btScalar(1.0)/btSqrt(btScalar(a))));
    p[0] = 0;
 p[1] = -n[2]*k;
 p[2] = n[1]*k;

    q[0] = a*k;
 q[1] = -n[0]*p[2];
 q[2] = n[0]*p[1];
  }
  else {

    btScalar a = n[0]*n[0] + n[1]*n[1];
    btScalar k = ((btScalar)(btScalar(1.0)/btSqrt(btScalar(a))));
    p[0] = -n[1]*k;
 p[1] = n[0]*k;
 p[2] = 0;

    q[0] = -n[2]*p[1];
 q[1] = n[2]*p[0];
 q[2] = a*k;
  }
}


struct btVector3FloatData
{
 float m_floats[4];
};

struct btVector3DoubleData
{
 double m_floats[4];

};

inline void btVector3::serializeFloat(struct btVector3FloatData& dataOut) const
{

 for (int i=0;i<4;i++)
  dataOut.m_floats[i] = float(m_floats[i]);
}

inline void btVector3::deSerializeFloat(const struct btVector3FloatData& dataIn)
{
 for (int i=0;i<4;i++)
  m_floats[i] = btScalar(dataIn.m_floats[i]);
}


inline void btVector3::serializeDouble(struct btVector3DoubleData& dataOut) const
{

 for (int i=0;i<4;i++)
  dataOut.m_floats[i] = double(m_floats[i]);
}

inline void btVector3::deSerializeDouble(const struct btVector3DoubleData& dataIn)
{
 for (int i=0;i<4;i++)
  m_floats[i] = btScalar(dataIn.m_floats[i]);
}


inline void btVector3::serialize(struct btVector3FloatData& dataOut) const
{

 for (int i=0;i<4;i++)
  dataOut.m_floats[i] = m_floats[i];
}

inline void btVector3::deSerialize(const struct btVector3FloatData& dataIn)
{
 for (int i=0;i<4;i++)
  m_floats[i] = dataIn.m_floats[i];
}
# 7 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.h" 2

# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h" 1
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h"
# 1 "C:/bullet3-master/src/LinearMath/btSerializer.h" 1
# 20 "C:/bullet3-master/src/LinearMath/btSerializer.h"
# 1 "C:/bullet3-master/src/LinearMath/btHashMap.h" 1
# 21 "C:/bullet3-master/src/LinearMath/btSerializer.h" 2


# 1 "c:\\devel\\mingw\\include\\memory.h" 1 3






# 1 "c:\\devel\\mingw\\include\\string.h" 1 3
# 24 "c:\\devel\\mingw\\include\\string.h" 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 25 "c:\\devel\\mingw\\include\\string.h" 2 3





extern "C" {





 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memchr (const void*, int, size_t) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcmp (const void*, const void*, size_t) __attribute__ ((__pure__));
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memcpy (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memmove (void*, const void*, size_t);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memset (void*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcat (char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strchr (const char*, int) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmp (const char*, const char*) __attribute__ ((__pure__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcpy (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strerror (int);

 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlen (const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncat (char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncmp (const char*, const char*, size_t) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncpy (char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strpbrk (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrchr (const char*, int) __attribute__ ((__pure__));
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strspn (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strstr (const char*, const char*) __attribute__ ((__pure__));
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtok (char*, const char*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strxfrm (char*, const char*, size_t);





 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strerror (const char *);
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricmp (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicmp (const char*, const char*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strupr (char*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _swab (const char*, char*, size_t);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strncoll(const char*, const char*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _strnicoll(const char*, const char*, size_t);
# 90 "c:\\devel\\mingw\\include\\string.h" 3
 void* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memccpy (void*, const void*, int, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) memicmp (const void*, const void*, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strdup (const char*) __attribute__ ((__malloc__));
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcmpi (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricmp (const char*, const char*);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strcasecmp (const char*, const char *);

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strcasecmp (const char * __sz1, const char * __sz2)
  {return _stricmp (__sz1, __sz2);}

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) stricoll (const char*, const char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strlwr (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnicmp (const char*, const char*, size_t);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strncasecmp (const char *, const char *, size_t);

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
strncasecmp (const char * __sz1, const char * __sz2, size_t __sizeMaxCompare)
  {return _strnicmp (__sz1, __sz2, __sizeMaxCompare);}

 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strnset (char*, int, size_t);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strrev (char*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strset (char*, int);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strupr (char*);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swab (const char*, char*, size_t);
# 126 "c:\\devel\\mingw\\include\\string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscat (wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcschr (const wchar_t*, wchar_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscpy (wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscspn (const wchar_t*, const wchar_t*);

 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslen (const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncat (wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncmp(const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsncpy(wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcspbrk(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrchr(const wchar_t*, wchar_t);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsspn(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsstr(const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcstok(wchar_t*, const wchar_t*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsxfrm(wchar_t*, const wchar_t*, size_t);
# 152 "c:\\devel\\mingw\\include\\string.h" 3
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsupr (wchar_t*);


 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsncoll(const wchar_t*, const wchar_t*, size_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wcsnicoll(const wchar_t*, const wchar_t*, size_t);
# 173 "c:\\devel\\mingw\\include\\string.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcscmpi (const wchar_t * __ws1, const wchar_t * __ws2);

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
wcscmpi (const wchar_t * __ws1, const wchar_t * __ws2)
  {return _wcsicmp (__ws1, __ws2);}

 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsdup (const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicmp (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsicoll (const wchar_t*, const wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcslwr (wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnicmp (const wchar_t*, const wchar_t*, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsnset (wchar_t*, wchar_t, size_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsrev (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsset (wchar_t*, wchar_t);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wcsupr (wchar_t*);
# 196 "c:\\devel\\mingw\\include\\string.h" 3
}
# 7 "c:\\devel\\mingw\\include\\memory.h" 2 3
# 24 "C:/bullet3-master/src/LinearMath/btSerializer.h" 2






extern char sBulletDNAstr[];
extern int sBulletDNAlen;
extern char sBulletDNAstr64[];
extern int sBulletDNAlen64;

inline int btStrLen(const char* str)
{
    if (!str)
  return(0);
 int len = 0;

 while (*str != 0)
 {
        str++;
        len++;
    }

    return len;
}


class btChunk
{
public:
 int m_chunkCode;
 int m_length;
 void *m_oldPtr;
 int m_dna_nr;
 int m_number;
};

enum btSerializationFlags
{
 BT_SERIALIZE_NO_BVH = 1,
 BT_SERIALIZE_NO_TRIANGLEINFOMAP = 2,
 BT_SERIALIZE_NO_DUPLICATE_ASSERT = 4
};

class btSerializer
{

public:

 virtual ~btSerializer() {}

 virtual const unsigned char* getBufferPointer() const = 0;

 virtual int getCurrentBufferSize() const = 0;

 virtual btChunk* allocate(size_t size, int numElements) = 0;

 virtual void finalizeChunk(btChunk* chunk, const char* structType, int chunkCode,void* oldPtr)= 0;

 virtual void* findPointer(void* oldPtr) = 0;

 virtual void* getUniquePointer(void*oldPtr) = 0;

 virtual void startSerialization() = 0;

 virtual void finishSerialization() = 0;

 virtual const char* findNameForPointer(const void* ptr) const = 0;

 virtual void registerNameForPointer(const void* ptr, const char* name) = 0;

 virtual void serializeName(const char* ptr) = 0;

 virtual int getSerializationFlags() const = 0;

 virtual void setSerializationFlags(int flags) = 0;

 virtual int getNumChunks() const = 0;

 virtual const btChunk* getChunk(int chunkIndex) const = 0;

};
# 131 "C:/bullet3-master/src/LinearMath/btSerializer.h"
struct btPointerUid
{
 union
 {
  void* m_ptr;
  int m_uniqueIds[2];
 };
};

struct btBulletSerializedArrays
{
 btBulletSerializedArrays()
 {
 }
 btAlignedObjectArray<struct btQuantizedBvhDoubleData*> m_bvhsDouble;
 btAlignedObjectArray<struct btQuantizedBvhFloatData*> m_bvhsFloat;
 btAlignedObjectArray<struct btCollisionShapeData*> m_colShapeData;
 btAlignedObjectArray<struct btDynamicsWorldDoubleData*> m_dynamicWorldInfoDataDouble;
 btAlignedObjectArray<struct btDynamicsWorldFloatData*> m_dynamicWorldInfoDataFloat;
 btAlignedObjectArray<struct btRigidBodyDoubleData*> m_rigidBodyDataDouble;
 btAlignedObjectArray<struct btRigidBodyFloatData*> m_rigidBodyDataFloat;
 btAlignedObjectArray<struct btCollisionObjectDoubleData*> m_collisionObjectDataDouble;
 btAlignedObjectArray<struct btCollisionObjectFloatData*> m_collisionObjectDataFloat;
 btAlignedObjectArray<struct btTypedConstraintFloatData*> m_constraintDataFloat;
 btAlignedObjectArray<struct btTypedConstraintDoubleData*> m_constraintDataDouble;
 btAlignedObjectArray<struct btTypedConstraintData*> m_constraintData;
 btAlignedObjectArray<struct btSoftBodyFloatData*> m_softBodyFloatData;
 btAlignedObjectArray<struct btSoftBodyDoubleData*> m_softBodyDoubleData;

};




class btDefaultSerializer : public btSerializer
{

protected:

 btAlignedObjectArray<char*> mTypes;
 btAlignedObjectArray<short*> mStructs;
 btAlignedObjectArray<short> mTlens;
 btHashMap<btHashInt, int> mStructReverse;
 btHashMap<btHashString,int> mTypeLookup;


 btHashMap<btHashPtr,void*> m_chunkP;

 btHashMap<btHashPtr,const char*> m_nameMap;

 btHashMap<btHashPtr,btPointerUid> m_uniquePointers;
 int m_uniqueIdGenerator;

 int m_totalSize;
 unsigned char* m_buffer;
 int m_currentSize;
 void* m_dna;
 int m_dnaLength;

 int m_serializationFlags;


 btAlignedObjectArray<btChunk*> m_chunkPtrs;

protected:

 virtual void* findPointer(void* oldPtr)
 {
  void** ptr = m_chunkP.find(oldPtr);
  if (ptr && *ptr)
   return *ptr;
  return 0;
 }





  void writeDNA()
  {
   btChunk* dnaChunk = allocate(m_dnaLength,1);
   memcpy(dnaChunk->m_oldPtr,m_dna,m_dnaLength);
   finalizeChunk(dnaChunk,"DNA1",( (int)('1')<<24 | (int)('A')<<16 | ('N')<<8 | ('D') ), m_dna);
  }

  int getReverseType(const char *type) const
  {

   btHashString key(type);
   const int* valuePtr = mTypeLookup.find(key);
   if (valuePtr)
    return *valuePtr;

   return -1;
  }

  void initDNA(const char* bdnaOrg,int dnalen)
  {

   if (m_dna)
    return;

   int littleEndian= 1;
   littleEndian= ((char*)&littleEndian)[0];


   m_dna = btAlignedAllocInternal(dnalen,16);
   memcpy(m_dna,bdnaOrg,dnalen);
   m_dnaLength = dnalen;

   int *intPtr=0;
   short *shtPtr=0;
   char *cp = 0;int dataLen =0;
   intPtr = (int*)m_dna;
# 254 "C:/bullet3-master/src/LinearMath/btSerializer.h"
   if (strncmp((const char*)m_dna, "SDNA", 4)==0)
   {

    intPtr++; intPtr++;
   }


   if (!littleEndian)
    *intPtr = btSwapEndian(*intPtr);

   dataLen = *intPtr;

   intPtr++;

   cp = (char*)intPtr;
   int i;
   for ( i=0; i<dataLen; i++)
   {

    while (*cp)cp++;
    cp++;
   }
   cp = btAlignPointer(cp,4);
# 285 "C:/bullet3-master/src/LinearMath/btSerializer.h"
   intPtr = (int*)cp;
   ; intPtr++;

   if (!littleEndian)
    *intPtr = btSwapEndian(*intPtr);

   dataLen = *intPtr;
   intPtr++;


   cp = (char*)intPtr;
   for (i=0; i<dataLen; i++)
   {
    mTypes.push_back(cp);
    while (*cp)cp++;
    cp++;
   }

   cp = btAlignPointer(cp,4);
# 313 "C:/bullet3-master/src/LinearMath/btSerializer.h"
   intPtr = (int*)cp;
   ; intPtr++;

   dataLen = (int)mTypes.size();

   shtPtr = (short*)intPtr;
   for (i=0; i<dataLen; i++, shtPtr++)
   {
    if (!littleEndian)
     shtPtr[0] = btSwapEndian(shtPtr[0]);
    mTlens.push_back(shtPtr[0]);
   }

   if (dataLen & 1) shtPtr++;
# 339 "C:/bullet3-master/src/LinearMath/btSerializer.h"
   intPtr = (int*)shtPtr;
   cp = (char*)intPtr;
   ; intPtr++;

   if (!littleEndian)
    *intPtr = btSwapEndian(*intPtr);
   dataLen = *intPtr ;
   intPtr++;


   shtPtr = (short*)intPtr;
   for (i=0; i<dataLen; i++)
   {
    mStructs.push_back (shtPtr);

    if (!littleEndian)
    {
     shtPtr[0]= btSwapEndian(shtPtr[0]);
     shtPtr[1]= btSwapEndian(shtPtr[1]);

     int len = shtPtr[1];
     shtPtr+= 2;

     for (int a=0; a<len; a++, shtPtr+=2)
     {
       shtPtr[0]= btSwapEndian(shtPtr[0]);
       shtPtr[1]= btSwapEndian(shtPtr[1]);
     }

    } else
    {
     shtPtr+= (2*shtPtr[1])+2;
    }
   }


   for (i=0; i<(int)mStructs.size(); i++)
   {
    short *strc = mStructs.at(i);
    mStructReverse.insert(strc[0], i);
    mTypeLookup.insert(btHashString(mTypes[strc[0]]),i);
   }
  }

public:




  btDefaultSerializer(int totalSize=0)
   :m_totalSize(totalSize),
   m_currentSize(0),
   m_dna(0),
   m_dnaLength(0),
   m_serializationFlags(0)
  {
   m_buffer = m_totalSize?(unsigned char*)btAlignedAllocInternal(totalSize,16):0;

   const bool VOID_IS_8 = ((sizeof(void*)==8));
# 417 "C:/bullet3-master/src/LinearMath/btSerializer.h"
   if (VOID_IS_8)
   {
    initDNA((const char*)sBulletDNAstr64,sBulletDNAlen64);
   } else
   {
    initDNA((const char*)sBulletDNAstr,sBulletDNAlen);
   }


  }

  virtual ~btDefaultSerializer()
  {
   if (m_buffer)
    btAlignedFreeInternal(m_buffer);
   if (m_dna)
    btAlignedFreeInternal(m_dna);
  }

  void writeHeader(unsigned char* buffer) const
  {





   memcpy(buffer, "BULLETf", 7);


   int littleEndian= 1;
   littleEndian= ((char*)&littleEndian)[0];

   if (sizeof(void*)==8)
   {
    buffer[7] = '-';
   } else
   {
    buffer[7] = '_';
   }

   if (littleEndian)
   {
    buffer[8]='v';
   } else
   {
    buffer[8]='V';
   }


   buffer[9] = '2';
   buffer[10] = '8';
   buffer[11] = '3';

  }

  virtual void startSerialization()
  {
   m_uniqueIdGenerator= 1;
   if (m_totalSize)
   {
    unsigned char* buffer = internalAlloc(12);
    writeHeader(buffer);
   }

  }

  virtual void finishSerialization()
  {
   writeDNA();


   int mysize = 0;
   if (!m_totalSize)
   {
    if (m_buffer)
     btAlignedFreeInternal(m_buffer);

    m_currentSize += 12;
    m_buffer = (unsigned char*)btAlignedAllocInternal(m_currentSize,16);

    unsigned char* currentPtr = m_buffer;
    writeHeader(m_buffer);
    currentPtr += 12;
    mysize+=12;
    for (int i=0;i< m_chunkPtrs.size();i++)
    {
     int curLength = sizeof(btChunk)+m_chunkPtrs[i]->m_length;
     memcpy(currentPtr,m_chunkPtrs[i], curLength);
     btAlignedFreeInternal(m_chunkPtrs[i]);
     currentPtr+=curLength;
     mysize+=curLength;
    }
   }

   mTypes.clear();
   mStructs.clear();
   mTlens.clear();
   mStructReverse.clear();
   mTypeLookup.clear();
   m_chunkP.clear();
   m_nameMap.clear();
   m_uniquePointers.clear();
   m_chunkPtrs.clear();
  }

  virtual void* getUniquePointer(void*oldPtr)
  {
   if (!oldPtr)
    return 0;

   btPointerUid* uptr = (btPointerUid*)m_uniquePointers.find(oldPtr);
   if (uptr)
   {
    return uptr->m_ptr;
   }
   m_uniqueIdGenerator++;

   btPointerUid uid;
   uid.m_uniqueIds[0] = m_uniqueIdGenerator;
   uid.m_uniqueIds[1] = m_uniqueIdGenerator;
   m_uniquePointers.insert(oldPtr,uid);
   return uid.m_ptr;

  }

  virtual const unsigned char* getBufferPointer() const
  {
   return m_buffer;
  }

  virtual int getCurrentBufferSize() const
  {
   return m_currentSize;
  }

  virtual void finalizeChunk(btChunk* chunk, const char* structType, int chunkCode,void* oldPtr)
  {
   if (!(m_serializationFlags&BT_SERIALIZE_NO_DUPLICATE_ASSERT))
   {
    ;
   }

   chunk->m_dna_nr = getReverseType(structType);

   chunk->m_chunkCode = chunkCode;

   void* uniquePtr = getUniquePointer(oldPtr);

   m_chunkP.insert(oldPtr,uniquePtr);
   chunk->m_oldPtr = uniquePtr;

  }


  virtual unsigned char* internalAlloc(size_t size)
  {
   unsigned char* ptr = 0;

   if (m_totalSize)
   {
    ptr = m_buffer+m_currentSize;
    m_currentSize += int(size);
    ;
   } else
   {
    ptr = (unsigned char*)btAlignedAllocInternal(size,16);
    m_currentSize += int(size);
   }
   return ptr;
  }



  virtual btChunk* allocate(size_t size, int numElements)
  {

   unsigned char* ptr = internalAlloc(int(size)*numElements+sizeof(btChunk));

   unsigned char* data = ptr + sizeof(btChunk);

   btChunk* chunk = (btChunk*)ptr;
   chunk->m_chunkCode = 0;
   chunk->m_oldPtr = data;
   chunk->m_length = int(size)*numElements;
   chunk->m_number = numElements;

   m_chunkPtrs.push_back(chunk);


   return chunk;
  }

  virtual const char* findNameForPointer(const void* ptr) const
  {
   const char*const * namePtr = m_nameMap.find(ptr);
   if (namePtr && *namePtr)
    return *namePtr;
   return 0;

  }

  virtual void registerNameForPointer(const void* ptr, const char* name)
  {
   m_nameMap.insert(ptr,name);
  }

  virtual void serializeName(const char* name)
  {
   if (name)
   {

    if (findPointer((void*)name))
     return;

    int len = btStrLen(name);
    if (len)
    {

     int newLen = len+1;
     int padding = ((newLen+3)&~3)-newLen;
     newLen += padding;


     btChunk* chunk = allocate(sizeof(char),newLen);
     char* destinationName = (char*)chunk->m_oldPtr;
     for (int i=0;i<len;i++)
     {
      destinationName[i] = name[i];
     }
     destinationName[len] = 0;
     finalizeChunk(chunk,"char",( (int)('Y')<<24 | (int)('A')<<16 | ('R')<<8 | ('A') ),(void*)name);
    }
   }
  }

  virtual int getSerializationFlags() const
  {
   return m_serializationFlags;
  }

  virtual void setSerializationFlags(int flags)
  {
   m_serializationFlags = flags;
  }
  int getNumChunks() const
  {
   return m_chunkPtrs.size();
  }

  const btChunk* getChunk(int chunkIndex) const
  {
   return m_chunkPtrs[chunkIndex];
  }
};
# 22 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h" 2
# 36 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h"
struct btTriangleInfo
{
 btTriangleInfo()
 {
  m_edgeV0V1Angle = (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
  m_edgeV1V2Angle = (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
  m_edgeV2V0Angle = (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
  m_flags=0;
 }

 int m_flags;

 btScalar m_edgeV0V1Angle;
 btScalar m_edgeV1V2Angle;
 btScalar m_edgeV2V0Angle;

};

typedef btHashMap<btHashInt,btTriangleInfo> btInternalTriangleInfoMap;



struct btTriangleInfoMap : public btInternalTriangleInfoMap
{
 btScalar m_convexEpsilon;
 btScalar m_planarEpsilon;
 btScalar m_equalVertexThreshold;
 btScalar m_edgeDistanceThreshold;
 btScalar m_maxEdgeAngleThreshold;
 btScalar m_zeroAreaThreshold;


 btTriangleInfoMap()
 {
  m_convexEpsilon = 0.00f;
  m_planarEpsilon = 0.0001f;
  m_equalVertexThreshold = btScalar(0.0001)*btScalar(0.0001);
  m_edgeDistanceThreshold = btScalar(0.1);
  m_zeroAreaThreshold = btScalar(0.0001)*btScalar(0.0001);
  m_maxEdgeAngleThreshold = (btScalar(2.0) * btScalar(3.1415926535897932384626433832795029));
 }
 virtual ~btTriangleInfoMap() {}

 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;

 void deSerialize(struct btTriangleInfoMapData& data);

};


struct btTriangleInfoData
{
 int m_flags;
 float m_edgeV0V1Angle;
 float m_edgeV1V2Angle;
 float m_edgeV2V0Angle;
};

struct btTriangleInfoMapData
{
 int *m_hashTablePtr;
 int *m_nextPtr;
 btTriangleInfoData *m_valueArrayPtr;
 int *m_keyArrayPtr;

 float m_convexEpsilon;
 float m_planarEpsilon;
 float m_equalVertexThreshold;
 float m_edgeDistanceThreshold;
 float m_zeroAreaThreshold;

 int m_nextSize;
 int m_hashTableSize;
 int m_numValues;
 int m_numKeys;
 char m_padding[4];
};

inline int btTriangleInfoMap::calculateSerializeBufferSize() const
{
 return sizeof(btTriangleInfoMapData);
}


inline const char* btTriangleInfoMap::serialize(void* dataBuffer, btSerializer* serializer) const
{
 btTriangleInfoMapData* tmapData = (btTriangleInfoMapData*) dataBuffer;
 tmapData->m_convexEpsilon = (float)m_convexEpsilon;
 tmapData->m_planarEpsilon = (float)m_planarEpsilon;
 tmapData->m_equalVertexThreshold =(float) m_equalVertexThreshold;
 tmapData->m_edgeDistanceThreshold = (float)m_edgeDistanceThreshold;
 tmapData->m_zeroAreaThreshold = (float)m_zeroAreaThreshold;

 tmapData->m_hashTableSize = m_hashTable.size();

 tmapData->m_hashTablePtr = tmapData->m_hashTableSize ? (int*)serializer->getUniquePointer((void*)&m_hashTable[0]) : 0;
 if (tmapData->m_hashTablePtr)
 {

  int sz = sizeof(int);
  int numElem = tmapData->m_hashTableSize;
  btChunk* chunk = serializer->allocate(sz,numElem);
  int* memPtr = (int*)chunk->m_oldPtr;
  for (int i=0;i<numElem;i++,memPtr++)
  {
   *memPtr = m_hashTable[i];
  }
  serializer->finalizeChunk(chunk,"int",( (int)('Y')<<24 | (int)('A')<<16 | ('R')<<8 | ('A') ),(void*)&m_hashTable[0]);

 }

 tmapData->m_nextSize = m_next.size();
 tmapData->m_nextPtr = tmapData->m_nextSize? (int*)serializer->getUniquePointer((void*)&m_next[0]): 0;
 if (tmapData->m_nextPtr)
 {
  int sz = sizeof(int);
  int numElem = tmapData->m_nextSize;
  btChunk* chunk = serializer->allocate(sz,numElem);
  int* memPtr = (int*)chunk->m_oldPtr;
  for (int i=0;i<numElem;i++,memPtr++)
  {
   *memPtr = m_next[i];
  }
  serializer->finalizeChunk(chunk,"int",( (int)('Y')<<24 | (int)('A')<<16 | ('R')<<8 | ('A') ),(void*)&m_next[0]);
 }

 tmapData->m_numValues = m_valueArray.size();
 tmapData->m_valueArrayPtr = tmapData->m_numValues ? (btTriangleInfoData*)serializer->getUniquePointer((void*)&m_valueArray[0]): 0;
 if (tmapData->m_valueArrayPtr)
 {
  int sz = sizeof(btTriangleInfoData);
  int numElem = tmapData->m_numValues;
  btChunk* chunk = serializer->allocate(sz,numElem);
  btTriangleInfoData* memPtr = (btTriangleInfoData*)chunk->m_oldPtr;
  for (int i=0;i<numElem;i++,memPtr++)
  {
   memPtr->m_edgeV0V1Angle = (float)m_valueArray[i].m_edgeV0V1Angle;
   memPtr->m_edgeV1V2Angle = (float)m_valueArray[i].m_edgeV1V2Angle;
   memPtr->m_edgeV2V0Angle = (float)m_valueArray[i].m_edgeV2V0Angle;
   memPtr->m_flags = m_valueArray[i].m_flags;
  }
  serializer->finalizeChunk(chunk,"btTriangleInfoData",( (int)('Y')<<24 | (int)('A')<<16 | ('R')<<8 | ('A') ),(void*) &m_valueArray[0]);
 }

 tmapData->m_numKeys = m_keyArray.size();
 tmapData->m_keyArrayPtr = tmapData->m_numKeys ? (int*)serializer->getUniquePointer((void*)&m_keyArray[0]) : 0;
 if (tmapData->m_keyArrayPtr)
 {
  int sz = sizeof(int);
  int numElem = tmapData->m_numValues;
  btChunk* chunk = serializer->allocate(sz,numElem);
  int* memPtr = (int*)chunk->m_oldPtr;
  for (int i=0;i<numElem;i++,memPtr++)
  {
   *memPtr = m_keyArray[i].getUid1();
  }
  serializer->finalizeChunk(chunk,"int",( (int)('Y')<<24 | (int)('A')<<16 | ('R')<<8 | ('A') ),(void*) &m_keyArray[0]);

 }
 return "btTriangleInfoMapData";
}




inline void btTriangleInfoMap::deSerialize(btTriangleInfoMapData& tmapData )
{


 m_convexEpsilon = tmapData.m_convexEpsilon;
 m_planarEpsilon = tmapData.m_planarEpsilon;
 m_equalVertexThreshold = tmapData.m_equalVertexThreshold;
 m_edgeDistanceThreshold = tmapData.m_edgeDistanceThreshold;
 m_zeroAreaThreshold = tmapData.m_zeroAreaThreshold;
 m_hashTable.resize(tmapData.m_hashTableSize);
 int i =0;
 for (i=0;i<tmapData.m_hashTableSize;i++)
 {
  m_hashTable[i] = tmapData.m_hashTablePtr[i];
 }
 m_next.resize(tmapData.m_nextSize);
 for (i=0;i<tmapData.m_nextSize;i++)
 {
  m_next[i] = tmapData.m_nextPtr[i];
 }
 m_valueArray.resize(tmapData.m_numValues);
 for (i=0;i<tmapData.m_numValues;i++)
 {
  m_valueArray[i].m_edgeV0V1Angle = tmapData.m_valueArrayPtr[i].m_edgeV0V1Angle;
  m_valueArray[i].m_edgeV1V2Angle = tmapData.m_valueArrayPtr[i].m_edgeV1V2Angle;
  m_valueArray[i].m_edgeV2V0Angle = tmapData.m_valueArrayPtr[i].m_edgeV2V0Angle;
  m_valueArray[i].m_flags = tmapData.m_valueArrayPtr[i].m_flags;
 }

 m_keyArray.resize(tmapData.m_numKeys,btHashInt(0));
 for (i=0;i<tmapData.m_numKeys;i++)
 {
  m_keyArray[i].setUid1(tmapData.m_keyArrayPtr[i]);
 }
}
# 9 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.h" 2




class btBvhTriangleMeshShape;
class btCollisionObject;
struct btCollisionObjectWrapper;
class btManifoldPoint;
class btIDebugDraw;



enum btInternalEdgeAdjustFlags
{
 BT_TRIANGLE_CONVEX_BACKFACE_MODE = 1,
 BT_TRIANGLE_CONCAVE_DOUBLE_SIDED = 2,
 BT_TRIANGLE_CONVEX_DOUBLE_SIDED = 4
};



void btGenerateInternalEdgeInfo (btBvhTriangleMeshShape*trimeshShape, btTriangleInfoMap* triangleInfoMap);




void btAdjustInternalEdgeContacts(btManifoldPoint& cp, const btCollisionObjectWrapper* trimeshColObj0Wrap,const btCollisionObjectWrapper* otherColObj1Wrap, int partId0, int index0, int normalAdjustFlags = 0);
# 2 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2

# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConcaveShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConcaveShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.h"
# 1 "C:/bullet3-master/src/LinearMath/btTransform.h" 1
# 21 "C:/bullet3-master/src/LinearMath/btTransform.h"
# 1 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h" 1
# 19 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
# 1 "C:/bullet3-master/src/LinearMath/btVector3.h" 1
# 20 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h" 2
# 1 "C:/bullet3-master/src/LinearMath/btQuaternion.h" 1
# 22 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
# 1 "C:/bullet3-master/src/LinearMath/btQuadWord.h" 1
# 34 "C:/bullet3-master/src/LinearMath/btQuadWord.h"
class btQuadWord



{
protected:
# 69 "C:/bullet3-master/src/LinearMath/btQuadWord.h"
 btScalar m_floats[4];




 public:
# 102 "C:/bullet3-master/src/LinearMath/btQuadWord.h"
  inline const btScalar& getX() const { return m_floats[0]; }

  inline const btScalar& getY() const { return m_floats[1]; }

  inline const btScalar& getZ() const { return m_floats[2]; }

  inline void setX(btScalar _x) { m_floats[0] = _x;};

  inline void setY(btScalar _y) { m_floats[1] = _y;};

  inline void setZ(btScalar _z) { m_floats[2] = _z;};

  inline void setW(btScalar _w) { m_floats[3] = _w;};

  inline const btScalar& x() const { return m_floats[0]; }

  inline const btScalar& y() const { return m_floats[1]; }

  inline const btScalar& z() const { return m_floats[2]; }

  inline const btScalar& w() const { return m_floats[3]; }




 inline operator btScalar *() { return &m_floats[0]; }
 inline operator const btScalar *() const { return &m_floats[0]; }

 inline bool operator==(const btQuadWord& other) const
 {



  return ((m_floats[3]==other.m_floats[3]) &&
                (m_floats[2]==other.m_floats[2]) &&
                (m_floats[1]==other.m_floats[1]) &&
                (m_floats[0]==other.m_floats[0]));

 }

 inline bool operator!=(const btQuadWord& other) const
 {
  return !(*this == other);
 }






  inline void setValue(const btScalar& _x, const btScalar& _y, const btScalar& _z)
  {
   m_floats[0]=_x;
   m_floats[1]=_y;
   m_floats[2]=_z;
   m_floats[3] = 0.f;
  }
# 173 "C:/bullet3-master/src/LinearMath/btQuadWord.h"
  inline void setValue(const btScalar& _x, const btScalar& _y, const btScalar& _z,const btScalar& _w)
  {
   m_floats[0]=_x;
   m_floats[1]=_y;
   m_floats[2]=_z;
   m_floats[3]=_w;
  }

  inline btQuadWord()

  {
  }






  inline btQuadWord(const btScalar& _x, const btScalar& _y, const btScalar& _z)
  {
   m_floats[0] = _x, m_floats[1] = _y, m_floats[2] = _z, m_floats[3] = 0.0f;
  }







  inline btQuadWord(const btScalar& _x, const btScalar& _y, const btScalar& _z,const btScalar& _w)
  {
   m_floats[0] = _x, m_floats[1] = _y, m_floats[2] = _z, m_floats[3] = _w;
  }




  inline void setMax(const btQuadWord& other)
  {





         btSetMax(m_floats[0], other.m_floats[0]);
   btSetMax(m_floats[1], other.m_floats[1]);
   btSetMax(m_floats[2], other.m_floats[2]);
   btSetMax(m_floats[3], other.m_floats[3]);

        }



  inline void setMin(const btQuadWord& other)
  {





         btSetMin(m_floats[0], other.m_floats[0]);
   btSetMin(m_floats[1], other.m_floats[1]);
   btSetMin(m_floats[2], other.m_floats[2]);
   btSetMin(m_floats[3], other.m_floats[3]);

        }



};
# 23 "C:/bullet3-master/src/LinearMath/btQuaternion.h" 2
# 48 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
class btQuaternion : public btQuadWord {
public:

 btQuaternion() {}
# 80 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
 btQuaternion(const btScalar& _x, const btScalar& _y, const btScalar& _z, const btScalar& _w)
  : btQuadWord(_x, _y, _z, _w)
 {}



 btQuaternion(const btVector3& _axis, const btScalar& _angle)
 {
  setRotation(_axis, _angle);
 }




 btQuaternion(const btScalar& yaw, const btScalar& pitch, const btScalar& roll)
 {

  setEuler(yaw, pitch, roll);



 }



 void setRotation(const btVector3& axis, const btScalar& _angle)
 {
  btScalar d = axis.length();
  ;
  btScalar s = btSin(_angle * btScalar(0.5)) / d;
  setValue(axis.x() * s, axis.y() * s, axis.z() * s,
   btCos(_angle * btScalar(0.5)));
 }




 void setEuler(const btScalar& yaw, const btScalar& pitch, const btScalar& roll)
 {
  btScalar halfYaw = btScalar(yaw) * btScalar(0.5);
  btScalar halfPitch = btScalar(pitch) * btScalar(0.5);
  btScalar halfRoll = btScalar(roll) * btScalar(0.5);
  btScalar cosYaw = btCos(halfYaw);
  btScalar sinYaw = btSin(halfYaw);
  btScalar cosPitch = btCos(halfPitch);
  btScalar sinPitch = btSin(halfPitch);
  btScalar cosRoll = btCos(halfRoll);
  btScalar sinRoll = btSin(halfRoll);
  setValue(cosRoll * sinPitch * cosYaw + sinRoll * cosPitch * sinYaw,
   cosRoll * cosPitch * sinYaw - sinRoll * sinPitch * cosYaw,
   sinRoll * cosPitch * cosYaw - cosRoll * sinPitch * sinYaw,
   cosRoll * cosPitch * cosYaw + sinRoll * sinPitch * sinYaw);
 }




 void setEulerZYX(const btScalar& yaw, const btScalar& pitch, const btScalar& roll)
 {
  btScalar halfYaw = btScalar(yaw) * btScalar(0.5);
  btScalar halfPitch = btScalar(pitch) * btScalar(0.5);
  btScalar halfRoll = btScalar(roll) * btScalar(0.5);
  btScalar cosYaw = btCos(halfYaw);
  btScalar sinYaw = btSin(halfYaw);
  btScalar cosPitch = btCos(halfPitch);
  btScalar sinPitch = btSin(halfPitch);
  btScalar cosRoll = btCos(halfRoll);
  btScalar sinRoll = btSin(halfRoll);
  setValue(sinRoll * cosPitch * cosYaw - cosRoll * sinPitch * sinYaw,
                         cosRoll * sinPitch * cosYaw + sinRoll * cosPitch * sinYaw,
                         cosRoll * cosPitch * sinYaw - sinRoll * sinPitch * cosYaw,
                         cosRoll * cosPitch * cosYaw + sinRoll * sinPitch * sinYaw);
 }


 inline btQuaternion& operator+=(const btQuaternion& q)
 {





  m_floats[0] += q.x();
        m_floats[1] += q.y();
        m_floats[2] += q.z();
        m_floats[3] += q.m_floats[3];

  return *this;
 }



 btQuaternion& operator-=(const btQuaternion& q)
 {





  m_floats[0] -= q.x();
        m_floats[1] -= q.y();
        m_floats[2] -= q.z();
        m_floats[3] -= q.m_floats[3];

        return *this;
 }



 btQuaternion& operator*=(const btScalar& s)
 {







  m_floats[0] *= s;
        m_floats[1] *= s;
        m_floats[2] *= s;
        m_floats[3] *= s;

  return *this;
 }




 btQuaternion& operator*=(const btQuaternion& q)
 {
# 282 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
  setValue(
            m_floats[3] * q.x() + m_floats[0] * q.m_floats[3] + m_floats[1] * q.z() - m_floats[2] * q.y(),
   m_floats[3] * q.y() + m_floats[1] * q.m_floats[3] + m_floats[2] * q.x() - m_floats[0] * q.z(),
   m_floats[3] * q.z() + m_floats[2] * q.m_floats[3] + m_floats[0] * q.y() - m_floats[1] * q.x(),
   m_floats[3] * q.m_floats[3] - m_floats[0] * q.x() - m_floats[1] * q.y() - m_floats[2] * q.z());

  return *this;
 }


 btScalar dot(const btQuaternion& q) const
 {
# 311 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
  return m_floats[0] * q.x() +
                m_floats[1] * q.y() +
                m_floats[2] * q.z() +
                m_floats[3] * q.m_floats[3];

 }


 btScalar length2() const
 {
  return dot(*this);
 }


 btScalar length() const
 {
  return btSqrt(length2());
 }



 btQuaternion& normalize()
 {
# 351 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
  return *this /= length();

 }



 inline btQuaternion
 operator*(const btScalar& s) const
 {
# 368 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
  return btQuaternion(x() * s, y() * s, z() * s, m_floats[3] * s);

 }



 btQuaternion operator/(const btScalar& s) const
 {
  ;
  return *this * (btScalar(1.0) / s);
 }



 btQuaternion& operator/=(const btScalar& s)
 {
  ;
  return *this *= btScalar(1.0) / s;
 }


 btQuaternion normalized() const
 {
  return *this / length();
 }


 btScalar angle(const btQuaternion& q) const
 {
  btScalar s = btSqrt(length2() * q.length2());
  ;
  return btAcos(dot(q) / s);
 }



 btScalar angleShortestPath(const btQuaternion& q) const
 {
  btScalar s = btSqrt(length2() * q.length2());
  ;
  if (dot(q) < 0)
   return btAcos(dot(-q) / s) * btScalar(2.0);
  else
   return btAcos(dot(q) / s) * btScalar(2.0);
 }


 btScalar getAngle() const
 {
  btScalar s = btScalar(2.) * btAcos(m_floats[3]);
  return s;
 }


 btScalar getAngleShortestPath() const
 {
  btScalar s;
  if (dot(*this) < 0)
   s = btScalar(2.) * btAcos(m_floats[3]);
  else
   s = btScalar(2.) * btAcos(-m_floats[3]);

  return s;
 }



 btVector3 getAxis() const
 {
  btScalar s_squared = 1.f-m_floats[3]*m_floats[3];

  if (s_squared < btScalar(10.) * 1.19209289550781250000e-7F)
   return btVector3(1.0, 0.0, 0.0);
  btScalar s = 1.f/btSqrt(s_squared);
  return btVector3(m_floats[0] * s, m_floats[1] * s, m_floats[2] * s);
 }


 btQuaternion inverse() const
 {





  return btQuaternion(-m_floats[0], -m_floats[1], -m_floats[2], m_floats[3]);

 }



 inline btQuaternion
 operator+(const btQuaternion& q2) const
 {





  const btQuaternion& q1 = *this;
  return btQuaternion(q1.x() + q2.x(), q1.y() + q2.y(), q1.z() + q2.z(), q1.m_floats[3] + q2.m_floats[3]);

 }



 inline btQuaternion
 operator-(const btQuaternion& q2) const
 {





  const btQuaternion& q1 = *this;
  return btQuaternion(q1.x() - q2.x(), q1.y() - q2.y(), q1.z() - q2.z(), q1.m_floats[3] - q2.m_floats[3]);

 }



 inline btQuaternion operator-() const
 {





  const btQuaternion& q2 = *this;
  return btQuaternion( - q2.x(), - q2.y(), - q2.z(), - q2.m_floats[3]);

 }

 inline btQuaternion farthest( const btQuaternion& qd) const
 {
  btQuaternion diff,sum;
  diff = *this - qd;
  sum = *this + qd;
  if( diff.dot(diff) > sum.dot(sum) )
   return qd;
  return (-qd);
 }


 inline btQuaternion nearest( const btQuaternion& qd) const
 {
  btQuaternion diff,sum;
  diff = *this - qd;
  sum = *this + qd;
  if( diff.dot(diff) < sum.dot(sum) )
   return qd;
  return (-qd);
 }






 btQuaternion slerp(const btQuaternion& q, const btScalar& t) const
 {
   btScalar magnitude = btSqrt(length2() * q.length2());
   ;

    btScalar product = dot(q) / magnitude;
    if (btFabs(product) < btScalar(1))
  {

      const btScalar sign = (product < 0) ? btScalar(-1) : btScalar(1);

      const btScalar theta = btAcos(sign * product);
      const btScalar s1 = btSin(sign * t * theta);
      const btScalar d = btScalar(1.0) / btSin(theta);
      const btScalar s0 = btSin((btScalar(1.0) - t) * theta);

      return btQuaternion(
          (m_floats[0] * s0 + q.x() * s1) * d,
          (m_floats[1] * s0 + q.y() * s1) * d,
          (m_floats[2] * s0 + q.z() * s1) * d,
          (m_floats[3] * s0 + q.m_floats[3] * s1) * d);
  }
  else
  {
   return *this;
  }
 }

 static const btQuaternion& getIdentity()
 {
  static const btQuaternion identityQuat(btScalar(0.),btScalar(0.),btScalar(0.),btScalar(1.));
  return identityQuat;
 }

 inline const btScalar& getW() const { return m_floats[3]; }


};






inline btQuaternion
operator*(const btQuaternion& q1, const btQuaternion& q2)
{
# 651 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
 return btQuaternion(
        q1.w() * q2.x() + q1.x() * q2.w() + q1.y() * q2.z() - q1.z() * q2.y(),
  q1.w() * q2.y() + q1.y() * q2.w() + q1.z() * q2.x() - q1.x() * q2.z(),
  q1.w() * q2.z() + q1.z() * q2.w() + q1.x() * q2.y() - q1.y() * q2.x(),
  q1.w() * q2.w() - q1.x() * q2.x() - q1.y() * q2.y() - q1.z() * q2.z());

}

inline btQuaternion
operator*(const btQuaternion& q, const btVector3& w)
{
# 734 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
 return btQuaternion(
         q.w() * w.x() + q.y() * w.z() - q.z() * w.y(),
   q.w() * w.y() + q.z() * w.x() - q.x() * w.z(),
   q.w() * w.z() + q.x() * w.y() - q.y() * w.x(),
  -q.x() * w.x() - q.y() * w.y() - q.z() * w.z());

}

inline btQuaternion
operator*(const btVector3& w, const btQuaternion& q)
{
# 817 "C:/bullet3-master/src/LinearMath/btQuaternion.h"
 return btQuaternion(
        +w.x() * q.w() + w.y() * q.z() - w.z() * q.y(),
  +w.y() * q.w() + w.z() * q.x() - w.x() * q.z(),
  +w.z() * q.w() + w.x() * q.y() - w.y() * q.x(),
  -w.x() * q.x() - w.y() * q.y() - w.z() * q.z());

}


inline btScalar
dot(const btQuaternion& q1, const btQuaternion& q2)
{
 return q1.dot(q2);
}



inline btScalar
length(const btQuaternion& q)
{
 return q.length();
}


inline btScalar
btAngle(const btQuaternion& q1, const btQuaternion& q2)
{
 return q1.angle(q2);
}


inline btQuaternion
inverse(const btQuaternion& q)
{
 return q.inverse();
}






inline btQuaternion
slerp(const btQuaternion& q1, const btQuaternion& q2, const btScalar& t)
{
 return q1.slerp(q2, t);
}

inline btVector3
quatRotate(const btQuaternion& rotation, const btVector3& v)
{
 btQuaternion q = rotation * v;
 q *= rotation.inverse();





 return btVector3(q.getX(),q.getY(),q.getZ());

}

inline btQuaternion
shortestArcQuat(const btVector3& v0, const btVector3& v1)
{
 btVector3 c = v0.cross(v1);
 btScalar d = v0.dot(v1);

 if (d < -1.0 + 1.19209289550781250000e-7F)
 {
  btVector3 n,unused;
  btPlaneSpace1(v0,n,unused);
  return btQuaternion(n.x(),n.y(),n.z(),0.0f);
 }

 btScalar s = btSqrt((1.0f + d) * 2.0f);
 btScalar rs = 1.0f / s;

 return btQuaternion(c.getX()*rs,c.getY()*rs,c.getZ()*rs,s * 0.5f);
}

inline btQuaternion
shortestArcQuatNormalize2(btVector3& v0,btVector3& v1)
{
 v0.normalize();
 v1.normalize();
 return shortestArcQuat(v0,v1);
}
# 21 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h" 2
# 1 "c:\\devel\\mingw\\include\\stdio.h" 1 3
# 26 "c:\\devel\\mingw\\include\\stdio.h" 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 353 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef short unsigned int wint_t;
# 27 "c:\\devel\\mingw\\include\\stdio.h" 2 3

# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 1 3 4
# 40 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 29 "c:\\devel\\mingw\\include\\stdio.h" 2 3
# 129 "c:\\devel\\mingw\\include\\stdio.h" 3
typedef struct _iobuf
{
 char* _ptr;
 int _cnt;
 char* _base;
 int _flag;
 int _file;
 int _charbuf;
 int _bufsiz;
 char* _tmpfname;
} FILE;
# 154 "c:\\devel\\mingw\\include\\stdio.h" 3
extern __attribute__ ((__dllimport__)) FILE _iob[];
# 163 "c:\\devel\\mingw\\include\\stdio.h" 3
extern "C" {





 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) freopen (const char*, const char*, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fflush (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fclose (FILE*);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) remove (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rename (const char*, const char*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpfile (void);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tmpnam (char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _unlink (const char*);


 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) tempnam (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rmtmp(void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) unlink (const char*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setvbuf (FILE*, char*, int, size_t);

 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) setbuf (FILE*, char*);
# 204 "c:\\devel\\mingw\\include\\stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vfprintf(FILE*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vprintf(const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsprintf(char*, const char*, __gnuc_va_list);
extern int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __mingw_vsnprintf(char*, size_t, const char*, __gnuc_va_list);
# 293 "c:\\devel\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fprintf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) printf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sprintf (char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfprintf (FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vprintf (const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsprintf (char*, const char*, __gnuc_va_list);
# 308 "c:\\devel\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_fprintf(FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_printf(const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_sprintf(char*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vfprintf(FILE*, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vprintf(const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) __msvcrt_vsprintf(char*, const char*, __gnuc_va_list);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snprintf (char*, size_t, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnprintf (char*, size_t, const char*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscprintf (const char*, __gnuc_va_list);
# 331 "c:\\devel\\mingw\\include\\stdio.h" 3
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snprintf (char *, size_t, const char *, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnprintf (char *, size_t, const char *, __gnuc_va_list);

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vscanf (const char * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfscanf (FILE * __restrict__, const char * __restrict__,
       __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsscanf (const char * __restrict__,
       const char * __restrict__, __gnuc_va_list);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fscanf (FILE*, const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) scanf (const char*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) sscanf (const char*, const char*, ...);




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetc (FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgets (char*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputc (int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputs (const char*, FILE*);
 char* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) gets (char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) puts (const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetc (int, FILE*);







 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _filbuf (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flsbuf (int, FILE*);



inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getc (FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putc (int __c, FILE* __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 412 "c:\\devel\\mingw\\include\\stdio.h" 3
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fread (void*, size_t, size_t, FILE*);
 size_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwrite (const void*, size_t, size_t, FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseek (FILE*, long, int);
 long __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftell (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) rewind (FILE*);
# 455 "c:\\devel\\mingw\\include\\stdio.h" 3
typedef long long fpos_t;




 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetpos (FILE*, fpos_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fsetpos (FILE*, const fpos_t*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE*);


inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) feof (FILE* __F)
  { return __F->_flag & 0x0010; }
inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ferror (FILE* __F)
  { return __F->_flag & 0x0020; }





 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) clearerr (FILE*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) perror (const char*);






 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _pclose (FILE*);


 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) popen (const char*, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) pclose (FILE*);





 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _flushall (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fileno (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fcloseall (void);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fsopen (const char*, const char*, int);

 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getmaxstdio (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _setmaxstdio (int);
# 522 "c:\\devel\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetchar (void);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputchar (int);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fdopen (int, const char*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fileno (FILE*);
# 534 "c:\\devel\\mingw\\include\\stdio.h" 3
# 1 "c:\\devel\\mingw\\include\\sys\\types.h" 1 3
# 21 "c:\\devel\\mingw\\include\\sys\\types.h" 3
# 1 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 1 3 4
# 147 "c:\\devel\\mingw\\lib\\gcc\\mingw32\\4.8.1\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 22 "c:\\devel\\mingw\\include\\sys\\types.h" 2 3





typedef long __time32_t;




typedef long long __time64_t;
# 45 "c:\\devel\\mingw\\include\\sys\\types.h" 3
typedef __time32_t time_t;






typedef long _off_t;


typedef _off_t off_t;







typedef unsigned int _dev_t;





typedef _dev_t dev_t;






typedef short _ino_t;


typedef _ino_t ino_t;






typedef int _pid_t;


typedef _pid_t pid_t;






typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef int _sigset_t;


typedef _sigset_t sigset_t;





typedef int _ssize_t;


typedef _ssize_t ssize_t;





typedef long long fpos64_t;




typedef long long off64_t;



typedef unsigned int useconds_t;
# 535 "c:\\devel\\mingw\\include\\stdio.h" 2 3
inline FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fopen64 (const char* filename, const char* mode)
{
  return fopen (filename, mode);
}

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fseeko64 (FILE*, off64_t, int);






inline off64_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ftello64 (FILE * stream)
{
  fpos_t pos;
  if (fgetpos(stream, &pos))
    return -1LL;
  else
   return ((off64_t) pos);
}
# 563 "c:\\devel\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwprintf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wprintf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _snwprintf (wchar_t*, size_t, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwprintf (FILE*, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vsnwprintf (wchar_t*, size_t, const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _vscwprintf (const wchar_t*, __gnuc_va_list);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fwscanf (FILE*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wscanf (const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swscanf (const wchar_t*, const wchar_t*, ...);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwc (wchar_t, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) ungetwc (wchar_t, FILE*);



 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) swprintf (wchar_t*, const wchar_t*, ...);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswprintf (wchar_t*, const wchar_t*, __gnuc_va_list);



 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetws (wchar_t*, int, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputws (const wchar_t*, FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwc (FILE*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getwchar (void);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getws (wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwc (wint_t, FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putws (const wchar_t*);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putwchar (wint_t);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfdopen(int, const wchar_t *);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfopen (const wchar_t*, const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfreopen (const wchar_t*, const wchar_t*, FILE*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wfsopen (const wchar_t*, const wchar_t*, int);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtmpnam (wchar_t*);
 wchar_t* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wtempnam (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wrename (const wchar_t*, const wchar_t*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wremove (const wchar_t*);
 void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wperror (const wchar_t*);
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _wpopen (const wchar_t*, const wchar_t*);



int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) snwprintf (wchar_t* s, size_t n, const wchar_t* format, ...);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg);

inline int __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
vsnwprintf (wchar_t* s, size_t n, const wchar_t* format, __gnuc_va_list arg)
  { return _vsnwprintf ( s, n, format, arg);}

int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vwscanf (const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vfwscanf (FILE * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) vswscanf (const wchar_t * __restrict__,
         const wchar_t * __restrict__, __gnuc_va_list);
# 625 "c:\\devel\\mingw\\include\\stdio.h" 3
 FILE* __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) wpopen (const wchar_t*, const wchar_t*);






 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _putw (int, FILE*);


 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fgetwchar (void);
 wint_t __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) fputwchar (wint_t);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) getw (FILE*);
 int __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) putw (int, FILE*);





}
# 22 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h" 2
# 48 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
class btMatrix3x3 {


 btVector3 m_el[3];

public:

 btMatrix3x3 () {}




 explicit btMatrix3x3(const btQuaternion& q) { setRotation(q); }
# 69 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 btMatrix3x3(const btScalar& xx, const btScalar& xy, const btScalar& xz,
  const btScalar& yx, const btScalar& yy, const btScalar& yz,
  const btScalar& zx, const btScalar& zy, const btScalar& zz)
 {
  setValue(xx, xy, xz,
   yx, yy, yz,
   zx, zy, zz);
 }
# 114 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 inline btMatrix3x3 (const btMatrix3x3& other)
 {
  m_el[0] = other.m_el[0];
  m_el[1] = other.m_el[1];
  m_el[2] = other.m_el[2];
 }


 inline btMatrix3x3& operator=(const btMatrix3x3& other)
 {
  m_el[0] = other.m_el[0];
  m_el[1] = other.m_el[1];
  m_el[2] = other.m_el[2];
  return *this;
 }





 inline btVector3 getColumn(int i) const
 {
  return btVector3(m_el[0][i],m_el[1][i],m_el[2][i]);
 }




 inline const btVector3& getRow(int i) const
 {
  ;
  return m_el[i];
 }



 inline btVector3& operator[](int i)
 {
  ;
  return m_el[i];
 }



 inline const btVector3& operator[](int i) const
 {
  ;
  return m_el[i];
 }




 btMatrix3x3& operator*=(const btMatrix3x3& m);




 btMatrix3x3& operator+=(const btMatrix3x3& m);




 btMatrix3x3& operator-=(const btMatrix3x3& m);



 void setFromOpenGLSubMatrix(const btScalar *m)
 {
  m_el[0].setValue(m[0],m[4],m[8]);
  m_el[1].setValue(m[1],m[5],m[9]);
  m_el[2].setValue(m[2],m[6],m[10]);

 }
# 198 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 void setValue(const btScalar& xx, const btScalar& xy, const btScalar& xz,
  const btScalar& yx, const btScalar& yy, const btScalar& yz,
  const btScalar& zx, const btScalar& zy, const btScalar& zz)
 {
  m_el[0].setValue(xx,xy,xz);
  m_el[1].setValue(yx,yy,yz);
  m_el[2].setValue(zx,zy,zz);
 }



 void setRotation(const btQuaternion& q)
 {
  btScalar d = q.length2();
  ;
  btScalar s = btScalar(2.0) / d;
# 267 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
  btScalar xs = q.x() * s, ys = q.y() * s, zs = q.z() * s;
  btScalar wx = q.w() * xs, wy = q.w() * ys, wz = q.w() * zs;
  btScalar xx = q.x() * xs, xy = q.x() * ys, xz = q.x() * zs;
  btScalar yy = q.y() * ys, yz = q.y() * zs, zz = q.z() * zs;
  setValue(
            btScalar(1.0) - (yy + zz), xy - wz, xz + wy,
   xy + wz, btScalar(1.0) - (xx + zz), yz - wx,
   xz - wy, yz + wx, btScalar(1.0) - (xx + yy));

    }







 void setEulerYPR(const btScalar& yaw, const btScalar& pitch, const btScalar& roll)
 {
  setEulerZYX(roll, pitch, yaw);
 }
# 298 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 void setEulerZYX(btScalar eulerX,btScalar eulerY,btScalar eulerZ) {

  btScalar ci ( btCos(eulerX));
  btScalar cj ( btCos(eulerY));
  btScalar ch ( btCos(eulerZ));
  btScalar si ( btSin(eulerX));
  btScalar sj ( btSin(eulerY));
  btScalar sh ( btSin(eulerZ));
  btScalar cc = ci * ch;
  btScalar cs = ci * sh;
  btScalar sc = si * ch;
  btScalar ss = si * sh;

  setValue(cj * ch, sj * sc - cs, sj * cc + ss,
   cj * sh, sj * ss + cc, sj * cs - sc,
   -sj, cj * si, cj * ci);
 }


 void setIdentity()
 {





  setValue(btScalar(1.0), btScalar(0.0), btScalar(0.0),
   btScalar(0.0), btScalar(1.0), btScalar(0.0),
   btScalar(0.0), btScalar(0.0), btScalar(1.0));

 }

 static const btMatrix3x3& getIdentity()
 {




  static const btMatrix3x3
        identityMatrix(
            btScalar(1.0), btScalar(0.0), btScalar(0.0),
   btScalar(0.0), btScalar(1.0), btScalar(0.0),
   btScalar(0.0), btScalar(0.0), btScalar(1.0));

  return identityMatrix;
 }



 void getOpenGLSubMatrix(btScalar *m) const
 {
# 383 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
  m[0] = btScalar(m_el[0].x());
  m[1] = btScalar(m_el[1].x());
  m[2] = btScalar(m_el[2].x());
  m[3] = btScalar(0.0);
  m[4] = btScalar(m_el[0].y());
  m[5] = btScalar(m_el[1].y());
  m[6] = btScalar(m_el[2].y());
  m[7] = btScalar(0.0);
  m[8] = btScalar(m_el[0].z());
  m[9] = btScalar(m_el[1].z());
  m[10] = btScalar(m_el[2].z());
  m[11] = btScalar(0.0);

 }



 void getRotation(btQuaternion& q) const
 {
# 454 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
  btScalar trace = m_el[0].x() + m_el[1].y() + m_el[2].z();

  btScalar temp[4];

  if (trace > btScalar(0.0))
  {
   btScalar s = btSqrt(trace + btScalar(1.0));
   temp[3]=(s * btScalar(0.5));
   s = btScalar(0.5) / s;

   temp[0]=((m_el[2].y() - m_el[1].z()) * s);
   temp[1]=((m_el[0].z() - m_el[2].x()) * s);
   temp[2]=((m_el[1].x() - m_el[0].y()) * s);
  }
  else
  {
   int i = m_el[0].x() < m_el[1].y() ?
    (m_el[1].y() < m_el[2].z() ? 2 : 1) :
    (m_el[0].x() < m_el[2].z() ? 2 : 0);
   int j = (i + 1) % 3;
   int k = (i + 2) % 3;

   btScalar s = btSqrt(m_el[i][i] - m_el[j][j] - m_el[k][k] + btScalar(1.0));
   temp[i] = s * btScalar(0.5);
   s = btScalar(0.5) / s;

   temp[3] = (m_el[k][j] - m_el[j][k]) * s;
   temp[j] = (m_el[j][i] + m_el[i][j]) * s;
   temp[k] = (m_el[k][i] + m_el[i][k]) * s;
  }
  q.setValue(temp[0],temp[1],temp[2],temp[3]);

 }





 void getEulerYPR(btScalar& yaw, btScalar& pitch, btScalar& roll) const
 {


  yaw = btScalar(btAtan2(m_el[1].x(), m_el[0].x()));
  pitch = btScalar(btAsin(-m_el[2].x()));
  roll = btScalar(btAtan2(m_el[2].y(), m_el[2].z()));


  if (btFabs(pitch)==(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)))
  {
   if (yaw>0)
    yaw-=btScalar(3.1415926535897932384626433832795029);
   else
    yaw+=btScalar(3.1415926535897932384626433832795029);

   if (roll>0)
    roll-=btScalar(3.1415926535897932384626433832795029);
   else
    roll+=btScalar(3.1415926535897932384626433832795029);
  }
 };







 void getEulerZYX(btScalar& yaw, btScalar& pitch, btScalar& roll, unsigned int solution_number = 1) const
 {
  struct Euler
  {
   btScalar yaw;
   btScalar pitch;
   btScalar roll;
  };

  Euler euler_out;
  Euler euler_out2;



  if (btFabs(m_el[2].x()) >= 1)
  {
   euler_out.yaw = 0;
   euler_out2.yaw = 0;


   btScalar delta = btAtan2(m_el[0].x(),m_el[0].z());
   if (m_el[2].x() > 0)
   {
    euler_out.pitch = btScalar(3.1415926535897932384626433832795029) / btScalar(2.0);
    euler_out2.pitch = btScalar(3.1415926535897932384626433832795029) / btScalar(2.0);
    euler_out.roll = euler_out.pitch + delta;
    euler_out2.roll = euler_out.pitch + delta;
   }
   else
   {
    euler_out.pitch = -btScalar(3.1415926535897932384626433832795029) / btScalar(2.0);
    euler_out2.pitch = -btScalar(3.1415926535897932384626433832795029) / btScalar(2.0);
    euler_out.roll = -euler_out.pitch + delta;
    euler_out2.roll = -euler_out.pitch + delta;
   }
  }
  else
  {
   euler_out.pitch = - btAsin(m_el[2].x());
   euler_out2.pitch = btScalar(3.1415926535897932384626433832795029) - euler_out.pitch;

   euler_out.roll = btAtan2(m_el[2].y()/btCos(euler_out.pitch),
    m_el[2].z()/btCos(euler_out.pitch));
   euler_out2.roll = btAtan2(m_el[2].y()/btCos(euler_out2.pitch),
    m_el[2].z()/btCos(euler_out2.pitch));

   euler_out.yaw = btAtan2(m_el[1].x()/btCos(euler_out.pitch),
    m_el[0].x()/btCos(euler_out.pitch));
   euler_out2.yaw = btAtan2(m_el[1].x()/btCos(euler_out2.pitch),
    m_el[0].x()/btCos(euler_out2.pitch));
  }

  if (solution_number == 1)
  {
   yaw = euler_out.yaw;
   pitch = euler_out.pitch;
   roll = euler_out.roll;
  }
  else
  {
   yaw = euler_out2.yaw;
   pitch = euler_out2.pitch;
   roll = euler_out2.roll;
  }
 }




 btMatrix3x3 scaled(const btVector3& s) const
 {



  return btMatrix3x3(
            m_el[0].x() * s.x(), m_el[0].y() * s.y(), m_el[0].z() * s.z(),
   m_el[1].x() * s.x(), m_el[1].y() * s.y(), m_el[1].z() * s.z(),
   m_el[2].x() * s.x(), m_el[2].y() * s.y(), m_el[2].z() * s.z());

 }


 btScalar determinant() const;

 btMatrix3x3 adjoint() const;

 btMatrix3x3 absolute() const;

 btMatrix3x3 transpose() const;

 btMatrix3x3 inverse() const;

 btMatrix3x3 transposeTimes(const btMatrix3x3& m) const;
 btMatrix3x3 timesTranspose(const btMatrix3x3& m) const;

 inline btScalar tdotx(const btVector3& v) const
 {
  return m_el[0].x() * v.x() + m_el[1].x() * v.y() + m_el[2].x() * v.z();
 }
 inline btScalar tdoty(const btVector3& v) const
 {
  return m_el[0].y() * v.x() + m_el[1].y() * v.y() + m_el[2].y() * v.z();
 }
 inline btScalar tdotz(const btVector3& v) const
 {
  return m_el[0].z() * v.x() + m_el[1].z() * v.y() + m_el[2].z() * v.z();
 }
# 639 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 void diagonalize(btMatrix3x3& rot, btScalar threshold, int maxSteps)
 {
  rot.setIdentity();
  for (int step = maxSteps; step > 0; step--)
  {

   int p = 0;
   int q = 1;
   int r = 2;
   btScalar max = btFabs(m_el[0][1]);
   btScalar v = btFabs(m_el[0][2]);
   if (v > max)
   {
    q = 2;
    r = 1;
    max = v;
   }
   v = btFabs(m_el[1][2]);
   if (v > max)
   {
    p = 1;
    q = 2;
    r = 0;
    max = v;
   }

   btScalar t = threshold * (btFabs(m_el[0][0]) + btFabs(m_el[1][1]) + btFabs(m_el[2][2]));
   if (max <= t)
   {
    if (max <= 1.19209289550781250000e-7F * t)
    {
     return;
    }
    step = 1;
   }


   btScalar mpq = m_el[p][q];
   btScalar theta = (m_el[q][q] - m_el[p][p]) / (2 * mpq);
   btScalar theta2 = theta * theta;
   btScalar cos;
   btScalar sin;
   if (theta2 * theta2 < btScalar(10 / 1.19209289550781250000e-7F))
   {
    t = (theta >= 0) ? 1 / (theta + btSqrt(1 + theta2))
     : 1 / (theta - btSqrt(1 + theta2));
    cos = 1 / btSqrt(1 + t * t);
    sin = cos * t;
   }
   else
   {

    t = 1 / (theta * (2 + btScalar(0.5) / theta2));
    cos = 1 - btScalar(0.5) * t * t;
    sin = cos * t;
   }


   m_el[p][q] = m_el[q][p] = 0;
   m_el[p][p] -= t * mpq;
   m_el[q][q] += t * mpq;
   btScalar mrp = m_el[r][p];
   btScalar mrq = m_el[r][q];
   m_el[r][p] = m_el[p][r] = cos * mrp - sin * mrq;
   m_el[r][q] = m_el[q][r] = cos * mrq + sin * mrp;


   for (int i = 0; i < 3; i++)
   {
    btVector3& row = rot[i];
    mrp = row[p];
    mrq = row[q];
    row[p] = cos * mrp - sin * mrq;
    row[q] = cos * mrq + sin * mrp;
   }
  }
 }
# 727 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 btScalar cofac(int r1, int c1, int r2, int c2) const
 {
  return m_el[r1][c1] * m_el[r2][c2] - m_el[r1][c2] * m_el[r2][c1];
 }

 void serialize(struct btMatrix3x3FloatData& dataOut) const;

 void serializeFloat(struct btMatrix3x3FloatData& dataOut) const;

 void deSerialize(const struct btMatrix3x3FloatData& dataIn);

 void deSerializeFloat(const struct btMatrix3x3FloatData& dataIn);

 void deSerializeDouble(const struct btMatrix3x3DoubleData& dataIn);

};


inline btMatrix3x3&
btMatrix3x3::operator*=(const btMatrix3x3& m)
{
# 827 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 setValue(
        m.tdotx(m_el[0]), m.tdoty(m_el[0]), m.tdotz(m_el[0]),
  m.tdotx(m_el[1]), m.tdoty(m_el[1]), m.tdotz(m_el[1]),
  m.tdotx(m_el[2]), m.tdoty(m_el[2]), m.tdotz(m_el[2]));

 return *this;
}

inline btMatrix3x3&
btMatrix3x3::operator+=(const btMatrix3x3& m)
{





 setValue(
  m_el[0][0]+m.m_el[0][0],
  m_el[0][1]+m.m_el[0][1],
  m_el[0][2]+m.m_el[0][2],
  m_el[1][0]+m.m_el[1][0],
  m_el[1][1]+m.m_el[1][1],
  m_el[1][2]+m.m_el[1][2],
  m_el[2][0]+m.m_el[2][0],
  m_el[2][1]+m.m_el[2][1],
  m_el[2][2]+m.m_el[2][2]);

 return *this;
}

inline btMatrix3x3
operator*(const btMatrix3x3& m, const btScalar & k)
{
# 872 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btMatrix3x3(
  m[0].x()*k,m[0].y()*k,m[0].z()*k,
  m[1].x()*k,m[1].y()*k,m[1].z()*k,
  m[2].x()*k,m[2].y()*k,m[2].z()*k);

}

inline btMatrix3x3
operator+(const btMatrix3x3& m1, const btMatrix3x3& m2)
{






 return btMatrix3x3(
        m1[0][0]+m2[0][0],
        m1[0][1]+m2[0][1],
        m1[0][2]+m2[0][2],

        m1[1][0]+m2[1][0],
        m1[1][1]+m2[1][1],
        m1[1][2]+m2[1][2],

        m1[2][0]+m2[2][0],
        m1[2][1]+m2[2][1],
        m1[2][2]+m2[2][2]);

}

inline btMatrix3x3
operator-(const btMatrix3x3& m1, const btMatrix3x3& m2)
{






 return btMatrix3x3(
        m1[0][0]-m2[0][0],
        m1[0][1]-m2[0][1],
        m1[0][2]-m2[0][2],

        m1[1][0]-m2[1][0],
        m1[1][1]-m2[1][1],
        m1[1][2]-m2[1][2],

        m1[2][0]-m2[2][0],
        m1[2][1]-m2[2][1],
        m1[2][2]-m2[2][2]);

}


inline btMatrix3x3&
btMatrix3x3::operator-=(const btMatrix3x3& m)
{





 setValue(
 m_el[0][0]-m.m_el[0][0],
 m_el[0][1]-m.m_el[0][1],
 m_el[0][2]-m.m_el[0][2],
 m_el[1][0]-m.m_el[1][0],
 m_el[1][1]-m.m_el[1][1],
 m_el[1][2]-m.m_el[1][2],
 m_el[2][0]-m.m_el[2][0],
 m_el[2][1]-m.m_el[2][1],
 m_el[2][2]-m.m_el[2][2]);

 return *this;
}


inline btScalar
btMatrix3x3::determinant() const
{
 return btTriple((*this)[0], (*this)[1], (*this)[2]);
}


inline btMatrix3x3
btMatrix3x3::absolute() const
{
# 972 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btMatrix3x3(
            btFabs(m_el[0].x()), btFabs(m_el[0].y()), btFabs(m_el[0].z()),
            btFabs(m_el[1].x()), btFabs(m_el[1].y()), btFabs(m_el[1].z()),
            btFabs(m_el[2].x()), btFabs(m_el[2].y()), btFabs(m_el[2].z()));

}

inline btMatrix3x3
btMatrix3x3::transpose() const
{
# 1010 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btMatrix3x3( m_el[0].x(), m_el[1].x(), m_el[2].x(),
                        m_el[0].y(), m_el[1].y(), m_el[2].y(),
                        m_el[0].z(), m_el[1].z(), m_el[2].z());

}

inline btMatrix3x3
btMatrix3x3::adjoint() const
{
 return btMatrix3x3(cofac(1, 1, 2, 2), cofac(0, 2, 2, 1), cofac(0, 1, 1, 2),
  cofac(1, 2, 2, 0), cofac(0, 0, 2, 2), cofac(0, 2, 1, 0),
  cofac(1, 0, 2, 1), cofac(0, 1, 2, 0), cofac(0, 0, 1, 1));
}

inline btMatrix3x3
btMatrix3x3::inverse() const
{
 btVector3 co(cofac(1, 1, 2, 2), cofac(1, 2, 2, 0), cofac(1, 0, 2, 1));
 btScalar det = (*this)[0].dot(co);
 ;
 btScalar s = btScalar(1.0) / det;
 return btMatrix3x3(co.x() * s, cofac(0, 2, 2, 1) * s, cofac(0, 1, 1, 2) * s,
  co.y() * s, cofac(0, 0, 2, 2) * s, cofac(0, 2, 1, 0) * s,
  co.z() * s, cofac(0, 1, 2, 0) * s, cofac(0, 0, 1, 1) * s);
}

inline btMatrix3x3
btMatrix3x3::transposeTimes(const btMatrix3x3& m) const
{
# 1079 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
    return btMatrix3x3(
  m_el[0].x() * m[0].x() + m_el[1].x() * m[1].x() + m_el[2].x() * m[2].x(),
  m_el[0].x() * m[0].y() + m_el[1].x() * m[1].y() + m_el[2].x() * m[2].y(),
  m_el[0].x() * m[0].z() + m_el[1].x() * m[1].z() + m_el[2].x() * m[2].z(),
  m_el[0].y() * m[0].x() + m_el[1].y() * m[1].x() + m_el[2].y() * m[2].x(),
  m_el[0].y() * m[0].y() + m_el[1].y() * m[1].y() + m_el[2].y() * m[2].y(),
  m_el[0].y() * m[0].z() + m_el[1].y() * m[1].z() + m_el[2].y() * m[2].z(),
  m_el[0].z() * m[0].x() + m_el[1].z() * m[1].x() + m_el[2].z() * m[2].x(),
  m_el[0].z() * m[0].y() + m_el[1].z() * m[1].y() + m_el[2].z() * m[2].y(),
  m_el[0].z() * m[0].z() + m_el[1].z() * m[1].z() + m_el[2].z() * m[2].z());

}

inline btMatrix3x3
btMatrix3x3::timesTranspose(const btMatrix3x3& m) const
{
# 1138 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btMatrix3x3(
  m_el[0].dot(m[0]), m_el[0].dot(m[1]), m_el[0].dot(m[2]),
  m_el[1].dot(m[0]), m_el[1].dot(m[1]), m_el[1].dot(m[2]),
  m_el[2].dot(m[0]), m_el[2].dot(m[1]), m_el[2].dot(m[2]));

}

inline btVector3
operator*(const btMatrix3x3& m, const btVector3& v)
{



 return btVector3(m[0].dot(v), m[1].dot(v), m[2].dot(v));

}


inline btVector3
operator*(const btVector3& v, const btMatrix3x3& m)
{
# 1192 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btVector3(m.tdotx(v), m.tdoty(v), m.tdotz(v));

}

inline btMatrix3x3
operator*(const btMatrix3x3& m1, const btMatrix3x3& m2)
{
# 1274 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return btMatrix3x3(
  m2.tdotx( m1[0]), m2.tdoty( m1[0]), m2.tdotz( m1[0]),
  m2.tdotx( m1[1]), m2.tdoty( m1[1]), m2.tdotz( m1[1]),
  m2.tdotx( m1[2]), m2.tdoty( m1[2]), m2.tdotz( m1[2]));

}
# 1298 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
inline bool operator==(const btMatrix3x3& m1, const btMatrix3x3& m2)
{
# 1313 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h"
 return
    ( m1[0][0] == m2[0][0] && m1[1][0] == m2[1][0] && m1[2][0] == m2[2][0] &&
  m1[0][1] == m2[0][1] && m1[1][1] == m2[1][1] && m1[2][1] == m2[2][1] &&
  m1[0][2] == m2[0][2] && m1[1][2] == m2[1][2] && m1[2][2] == m2[2][2] );

}


struct btMatrix3x3FloatData
{
 btVector3FloatData m_el[3];
};


struct btMatrix3x3DoubleData
{
 btVector3DoubleData m_el[3];
};




inline void btMatrix3x3::serialize(struct btMatrix3x3FloatData& dataOut) const
{
 for (int i=0;i<3;i++)
  m_el[i].serialize(dataOut.m_el[i]);
}

inline void btMatrix3x3::serializeFloat(struct btMatrix3x3FloatData& dataOut) const
{
 for (int i=0;i<3;i++)
  m_el[i].serializeFloat(dataOut.m_el[i]);
}


inline void btMatrix3x3::deSerialize(const struct btMatrix3x3FloatData& dataIn)
{
 for (int i=0;i<3;i++)
  m_el[i].deSerialize(dataIn.m_el[i]);
}

inline void btMatrix3x3::deSerializeFloat(const struct btMatrix3x3FloatData& dataIn)
{
 for (int i=0;i<3;i++)
  m_el[i].deSerializeFloat(dataIn.m_el[i]);
}

inline void btMatrix3x3::deSerializeDouble(const struct btMatrix3x3DoubleData& dataIn)
{
 for (int i=0;i<3;i++)
  m_el[i].deSerializeDouble(dataIn.m_el[i]);
}
# 22 "C:/bullet3-master/src/LinearMath/btTransform.h" 2
# 34 "C:/bullet3-master/src/LinearMath/btTransform.h"
class btTransform {


 btMatrix3x3 m_basis;

 btVector3 m_origin;

public:


 btTransform() {}



 explicit inline btTransform(const btQuaternion& q,
  const btVector3& c = btVector3(btScalar(0), btScalar(0), btScalar(0)))
  : m_basis(q),
  m_origin(c)
 {}




 explicit inline btTransform(const btMatrix3x3& b,
  const btVector3& c = btVector3(btScalar(0), btScalar(0), btScalar(0)))
  : m_basis(b),
  m_origin(c)
 {}

 inline btTransform (const btTransform& other)
  : m_basis(other.m_basis),
  m_origin(other.m_origin)
 {
 }

 inline btTransform& operator=(const btTransform& other)
 {
  m_basis = other.m_basis;
  m_origin = other.m_origin;
  return *this;
 }






  inline void mult(const btTransform& t1, const btTransform& t2) {
   m_basis = t1.m_basis * t2.m_basis;
   m_origin = t1(t2.m_origin);
  }
# 94 "C:/bullet3-master/src/LinearMath/btTransform.h"
 inline btVector3 operator()(const btVector3& x) const
 {
        return x.dot3(m_basis[0], m_basis[1], m_basis[2]) + m_origin;
 }


 inline btVector3 operator*(const btVector3& x) const
 {
  return (*this)(x);
 }


 inline btQuaternion operator*(const btQuaternion& q) const
 {
  return getRotation() * q;
 }


 inline btMatrix3x3& getBasis() { return m_basis; }

 inline const btMatrix3x3& getBasis() const { return m_basis; }


 inline btVector3& getOrigin() { return m_origin; }

 inline const btVector3& getOrigin() const { return m_origin; }


 btQuaternion getRotation() const {
  btQuaternion q;
  m_basis.getRotation(q);
  return q;
 }




 void setFromOpenGLMatrix(const btScalar *m)
 {
  m_basis.setFromOpenGLSubMatrix(m);
  m_origin.setValue(m[12],m[13],m[14]);
 }



 void getOpenGLMatrix(btScalar *m) const
 {
  m_basis.getOpenGLSubMatrix(m);
  m[12] = m_origin.x();
  m[13] = m_origin.y();
  m[14] = m_origin.z();
  m[15] = btScalar(1.0);
 }



 inline void setOrigin(const btVector3& origin)
 {
  m_origin = origin;
 }

 inline btVector3 invXform(const btVector3& inVec) const;



 inline void setBasis(const btMatrix3x3& basis)
 {
  m_basis = basis;
 }


 inline void setRotation(const btQuaternion& q)
 {
  m_basis.setRotation(q);
 }



 void setIdentity()
 {
  m_basis.setIdentity();
  m_origin.setValue(btScalar(0.0), btScalar(0.0), btScalar(0.0));
 }



 btTransform& operator*=(const btTransform& t)
 {
  m_origin += m_basis * t.m_origin;
  m_basis *= t.m_basis;
  return *this;
 }


 btTransform inverse() const
 {
  btMatrix3x3 inv = m_basis.transpose();
  return btTransform(inv, inv * -m_origin);
 }




 btTransform inverseTimes(const btTransform& t) const;


 btTransform operator*(const btTransform& t) const;


 static const btTransform& getIdentity()
 {
  static const btTransform identityTransform(btMatrix3x3::getIdentity());
  return identityTransform;
 }

 void serialize(struct btTransformFloatData& dataOut) const;

 void serializeFloat(struct btTransformFloatData& dataOut) const;

 void deSerialize(const struct btTransformFloatData& dataIn);

 void deSerializeDouble(const struct btTransformDoubleData& dataIn);

 void deSerializeFloat(const struct btTransformFloatData& dataIn);

};


inline btVector3
btTransform::invXform(const btVector3& inVec) const
{
 btVector3 v = inVec - m_origin;
 return (m_basis.transpose() * v);
}

inline btTransform
btTransform::inverseTimes(const btTransform& t) const
{
 btVector3 v = t.getOrigin() - m_origin;
  return btTransform(m_basis.transposeTimes(t.m_basis),
   v * m_basis);
}

inline btTransform
btTransform::operator*(const btTransform& t) const
{
 return btTransform(m_basis * t.m_basis,
  (*this)(t.m_origin));
}


inline bool operator==(const btTransform& t1, const btTransform& t2)
{
   return ( t1.getBasis() == t2.getBasis() &&
            t1.getOrigin() == t2.getOrigin() );
}



struct btTransformFloatData
{
 btMatrix3x3FloatData m_basis;
 btVector3FloatData m_origin;
};

struct btTransformDoubleData
{
 btMatrix3x3DoubleData m_basis;
 btVector3DoubleData m_origin;
};



inline void btTransform::serialize(btTransformFloatData& dataOut) const
{
 m_basis.serialize(dataOut.m_basis);
 m_origin.serialize(dataOut.m_origin);
}

inline void btTransform::serializeFloat(btTransformFloatData& dataOut) const
{
 m_basis.serializeFloat(dataOut.m_basis);
 m_origin.serializeFloat(dataOut.m_origin);
}


inline void btTransform::deSerialize(const btTransformFloatData& dataIn)
{
 m_basis.deSerialize(dataIn.m_basis);
 m_origin.deSerialize(dataIn.m_origin);
}

inline void btTransform::deSerializeFloat(const btTransformFloatData& dataIn)
{
 m_basis.deSerializeFloat(dataIn.m_basis);
 m_origin.deSerializeFloat(dataIn.m_origin);
}

inline void btTransform::deSerializeDouble(const btTransformDoubleData& dataIn)
{
 m_basis.deSerializeDouble(dataIn.m_basis);
 m_origin.deSerializeDouble(dataIn.m_origin);
}
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.h" 2

# 1 "C:/bullet3-master/src/LinearMath/btMatrix3x3.h" 1
# 22 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.h" 2
# 1 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h"
# 1 "C:/bullet3-master/src/LinearMath/btScalar.h" 1
# 20 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h" 2

# 1 "C:/bullet3-master/src/LinearMath/btAlignedAllocator.h" 1
# 22 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h" 2






enum BroadphaseNativeTypes
{

 BOX_SHAPE_PROXYTYPE,
 TRIANGLE_SHAPE_PROXYTYPE,
 TETRAHEDRAL_SHAPE_PROXYTYPE,
 CONVEX_TRIANGLEMESH_SHAPE_PROXYTYPE,
 CONVEX_HULL_SHAPE_PROXYTYPE,
 CONVEX_POINT_CLOUD_SHAPE_PROXYTYPE,
 CUSTOM_POLYHEDRAL_SHAPE_TYPE,

IMPLICIT_CONVEX_SHAPES_START_HERE,
 SPHERE_SHAPE_PROXYTYPE,
 MULTI_SPHERE_SHAPE_PROXYTYPE,
 CAPSULE_SHAPE_PROXYTYPE,
 CONE_SHAPE_PROXYTYPE,
 CONVEX_SHAPE_PROXYTYPE,
 CYLINDER_SHAPE_PROXYTYPE,
 UNIFORM_SCALING_SHAPE_PROXYTYPE,
 MINKOWSKI_SUM_SHAPE_PROXYTYPE,
 MINKOWSKI_DIFFERENCE_SHAPE_PROXYTYPE,
 BOX_2D_SHAPE_PROXYTYPE,
 CONVEX_2D_SHAPE_PROXYTYPE,
 CUSTOM_CONVEX_SHAPE_TYPE,

CONCAVE_SHAPES_START_HERE,

 TRIANGLE_MESH_SHAPE_PROXYTYPE,
 SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE,

 FAST_CONCAVE_MESH_PROXYTYPE,

 TERRAIN_SHAPE_PROXYTYPE,

 GIMPACT_SHAPE_PROXYTYPE,

    MULTIMATERIAL_TRIANGLE_MESH_PROXYTYPE,

 EMPTY_SHAPE_PROXYTYPE,
 STATIC_PLANE_PROXYTYPE,
 CUSTOM_CONCAVE_SHAPE_TYPE,
CONCAVE_SHAPES_END_HERE,

 COMPOUND_SHAPE_PROXYTYPE,

 SOFTBODY_SHAPE_PROXYTYPE,
 HFFLUID_SHAPE_PROXYTYPE,
 HFFLUID_BUOYANT_CONVEX_SHAPE_PROXYTYPE,
 INVALID_SHAPE_PROXYTYPE,

 MAX_BROADPHASE_COLLISION_TYPES

};




struct btBroadphaseProxy
{

inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 enum CollisionFilterGroups
 {
         DefaultFilter = 1,
         StaticFilter = 2,
         KinematicFilter = 4,
         DebrisFilter = 8,
   SensorTrigger = 16,
   CharacterFilter = 32,
         AllFilter = -1
 };


 void* m_clientObject;
 short int m_collisionFilterGroup;
 short int m_collisionFilterMask;
 void* m_multiSapParentProxy;
 int m_uniqueId;

 btVector3 m_aabbMin;
 btVector3 m_aabbMax;

 inline int getUid() const
 {
  return m_uniqueId;
 }


 btBroadphaseProxy() :m_clientObject(0),m_multiSapParentProxy(0)
 {
 }

 btBroadphaseProxy(const btVector3& aabbMin,const btVector3& aabbMax,void* userPtr,short int collisionFilterGroup, short int collisionFilterMask,void* multiSapParentProxy=0)
  :m_clientObject(userPtr),
  m_collisionFilterGroup(collisionFilterGroup),
  m_collisionFilterMask(collisionFilterMask),
  m_aabbMin(aabbMin),
  m_aabbMax(aabbMax)
 {
  m_multiSapParentProxy = multiSapParentProxy;
 }



 static inline bool isPolyhedral(int proxyType)
 {
  return (proxyType < IMPLICIT_CONVEX_SHAPES_START_HERE);
 }

 static inline bool isConvex(int proxyType)
 {
  return (proxyType < CONCAVE_SHAPES_START_HERE);
 }

 static inline bool isNonMoving(int proxyType)
 {
  return (isConcave(proxyType) && !(proxyType==GIMPACT_SHAPE_PROXYTYPE));
 }

 static inline bool isConcave(int proxyType)
 {
  return ((proxyType > CONCAVE_SHAPES_START_HERE) &&
   (proxyType < CONCAVE_SHAPES_END_HERE));
 }
 static inline bool isCompound(int proxyType)
 {
  return (proxyType == COMPOUND_SHAPE_PROXYTYPE);
 }

 static inline bool isSoftBody(int proxyType)
 {
  return (proxyType == SOFTBODY_SHAPE_PROXYTYPE);
 }

 static inline bool isInfinite(int proxyType)
 {
  return (proxyType == STATIC_PLANE_PROXYTYPE);
 }

 static inline bool isConvex2d(int proxyType)
 {
  return (proxyType == BOX_2D_SHAPE_PROXYTYPE) || (proxyType == CONVEX_2D_SHAPE_PROXYTYPE);
 }


}
;

class btCollisionAlgorithm;

struct btBroadphaseProxy;





struct btBroadphasePair
{
 btBroadphasePair ()
  :
 m_pProxy0(0),
  m_pProxy1(0),
  m_algorithm(0),
  m_internalInfo1(0)
 {
 }

inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btBroadphasePair(const btBroadphasePair& other)
  : m_pProxy0(other.m_pProxy0),
    m_pProxy1(other.m_pProxy1),
    m_algorithm(other.m_algorithm),
    m_internalInfo1(other.m_internalInfo1)
 {
 }
 btBroadphasePair(btBroadphaseProxy& proxy0,btBroadphaseProxy& proxy1)
 {


  if (proxy0.m_uniqueId < proxy1.m_uniqueId)
        {
            m_pProxy0 = &proxy0;
            m_pProxy1 = &proxy1;
        }
        else
        {
   m_pProxy0 = &proxy1;
            m_pProxy1 = &proxy0;
        }

  m_algorithm = 0;
  m_internalInfo1 = 0;

 }

 btBroadphaseProxy* m_pProxy0;
 btBroadphaseProxy* m_pProxy1;

 mutable btCollisionAlgorithm* m_algorithm;
 union { void* m_internalInfo1; int m_internalTmpValue;};

};
# 245 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h"
class btBroadphasePairSortPredicate
{
 public:

  bool operator() ( const btBroadphasePair& a, const btBroadphasePair& b ) const
  {
   const int uidA0 = a.m_pProxy0 ? a.m_pProxy0->m_uniqueId : -1;
   const int uidB0 = b.m_pProxy0 ? b.m_pProxy0->m_uniqueId : -1;
   const int uidA1 = a.m_pProxy1 ? a.m_pProxy1->m_uniqueId : -1;
   const int uidB1 = b.m_pProxy1 ? b.m_pProxy1->m_uniqueId : -1;

    return uidA0 > uidB0 ||
    (a.m_pProxy0 == b.m_pProxy0 && uidA1 > uidB1) ||
    (a.m_pProxy0 == b.m_pProxy0 && a.m_pProxy1 == b.m_pProxy1 && a.m_algorithm > b.m_algorithm);
  }
};


inline bool operator==(const btBroadphasePair& a, const btBroadphasePair& b)
{
  return (a.m_pProxy0 == b.m_pProxy0) && (a.m_pProxy1 == b.m_pProxy1);
}
# 23 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.h" 2
class btSerializer;



class btCollisionShape
{
protected:
 int m_shapeType;
 void* m_userPointer;
 int m_userIndex;

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btCollisionShape() : m_shapeType (INVALID_SHAPE_PROXYTYPE), m_userPointer(0), m_userIndex(-1)
 {
 }

 virtual ~btCollisionShape()
 {
 }


 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const =0;

 virtual void getBoundingSphere(btVector3& center,btScalar& radius) const;


 virtual btScalar getAngularMotionDisc() const;

 virtual btScalar getContactBreakingThreshold(btScalar defaultContactThresholdFactor) const;




 void calculateTemporalAabb(const btTransform& curTrans,const btVector3& linvel,const btVector3& angvel,btScalar timeStep, btVector3& temporalAabbMin,btVector3& temporalAabbMax) const;



 inline bool isPolyhedral() const
 {
  return btBroadphaseProxy::isPolyhedral(getShapeType());
 }

 inline bool isConvex2d() const
 {
  return btBroadphaseProxy::isConvex2d(getShapeType());
 }

 inline bool isConvex() const
 {
  return btBroadphaseProxy::isConvex(getShapeType());
 }
 inline bool isNonMoving() const
 {
  return btBroadphaseProxy::isNonMoving(getShapeType());
 }
 inline bool isConcave() const
 {
  return btBroadphaseProxy::isConcave(getShapeType());
 }
 inline bool isCompound() const
 {
  return btBroadphaseProxy::isCompound(getShapeType());
 }

 inline bool isSoftBody() const
 {
  return btBroadphaseProxy::isSoftBody(getShapeType());
 }


 inline bool isInfinite() const
 {
  return btBroadphaseProxy::isInfinite(getShapeType());
 }


 virtual void setLocalScaling(const btVector3& scaling) =0;
 virtual const btVector3& getLocalScaling() const =0;
 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const = 0;



 virtual const char* getName()const =0 ;



 int getShapeType() const { return m_shapeType; }



 virtual btVector3 getAnisotropicRollingFrictionDirection() const
 {
  return btVector3(1,1,1);
 }
 virtual void setMargin(btScalar margin) = 0;
 virtual btScalar getMargin() const = 0;



 void setUserPointer(void* userPtr)
 {
  m_userPointer = userPtr;
 }

 void* getUserPointer() const
 {
  return m_userPointer;
 }
 void setUserIndex(int index)
 {
  m_userIndex = index;
 }

 int getUserIndex() const
 {
  return m_userIndex;
 }


 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;

 virtual void serializeSingleShape(btSerializer* serializer) const;

};


struct btCollisionShapeData
{
 char *m_name;
 int m_shapeType;
 char m_padding[4];
};

inline int btCollisionShape::calculateSerializeBufferSize() const
{
 return sizeof(btCollisionShapeData);
}
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConcaveShape.h" 2

# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleCallback.h" 1
# 24 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleCallback.h"
class btTriangleCallback
{
public:

 virtual ~btTriangleCallback();
 virtual void processTriangle(btVector3* triangle, int partId, int triangleIndex) = 0;
};

class btInternalTriangleIndexCallback
{
public:

 virtual ~btInternalTriangleIndexCallback();
 virtual void internalProcessTriangleIndex(btVector3* triangle,int partId,int triangleIndex) = 0;
};
# 22 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConcaveShape.h" 2



typedef enum PHY_ScalarType {
 PHY_FLOAT,
 PHY_DOUBLE,
 PHY_INTEGER,
 PHY_SHORT,
 PHY_FIXEDPOINT88,
 PHY_UCHAR
} PHY_ScalarType;



class btConcaveShape : public btCollisionShape
{
protected:
 btScalar m_collisionMargin;

public:
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btConcaveShape();

 virtual ~btConcaveShape();

 virtual void processAllTriangles(btTriangleCallback* callback,const btVector3& aabbMin,const btVector3& aabbMax) const = 0;

 virtual btScalar getMargin() const {
  return m_collisionMargin;
 }
 virtual void setMargin(btScalar collisionMargin)
 {
  m_collisionMargin = collisionMargin;
 }



};
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h" 1
# 30 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h"
class btStridingMeshInterface
{
 protected:

  btVector3 m_scaling;

 public:
  inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

  btStridingMeshInterface() :m_scaling(btScalar(1.),btScalar(1.),btScalar(1.))
  {

  }

  virtual ~btStridingMeshInterface();



  virtual void InternalProcessAllTriangles(btInternalTriangleIndexCallback* callback,const btVector3& aabbMin,const btVector3& aabbMax) const;


  void calculateAabbBruteForce(btVector3& aabbMin,btVector3& aabbMax);






  virtual void getLockedVertexIndexBase(unsigned char **vertexbase, int& numverts,PHY_ScalarType& type, int& stride,unsigned char **indexbase,int & indexstride,int& numfaces,PHY_ScalarType& indicestype,int subpart=0)=0;

  virtual void getLockedReadOnlyVertexIndexBase(const unsigned char **vertexbase, int& numverts,PHY_ScalarType& type, int& stride,const unsigned char **indexbase,int & indexstride,int& numfaces,PHY_ScalarType& indicestype,int subpart=0) const=0;



  virtual void unLockVertexBase(int subpart)=0;

  virtual void unLockReadOnlyVertexBase(int subpart) const=0;




  virtual int getNumSubParts() const=0;

  virtual void preallocateVertices(int numverts)=0;
  virtual void preallocateIndices(int numindices)=0;

  virtual bool hasPremadeAabb() const { return false; }
  virtual void setPremadeAabb(const btVector3& aabbMin, const btVector3& aabbMax ) const
                {
                        (void) aabbMin;
                        (void) aabbMax;
                }
  virtual void getPremadeAabb(btVector3* aabbMin, btVector3* aabbMax ) const
        {
            (void) aabbMin;
            (void) aabbMax;
        }

  const btVector3& getScaling() const {
   return m_scaling;
  }
  void setScaling(const btVector3& scaling)
  {
   m_scaling = scaling;
  }

  virtual int calculateSerializeBufferSize() const;


  virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;


};

struct btIntIndexData
{
 int m_value;
};

struct btShortIntIndexData
{
 short m_value;
 char m_pad[2];
};

struct btShortIntIndexTripletData
{
 short m_values[3];
 char m_pad[2];
};

struct btCharIndexTripletData
{
 unsigned char m_values[3];
 char m_pad;
};



struct btMeshPartData
{
 btVector3FloatData *m_vertices3f;
 btVector3DoubleData *m_vertices3d;

 btIntIndexData *m_indices32;
 btShortIntIndexTripletData *m_3indices16;
 btCharIndexTripletData *m_3indices8;

 btShortIntIndexData *m_indices16;

 int m_numTriangles;
 int m_numVertices;
};



struct btStridingMeshInterfaceData
{
 btMeshPartData *m_meshPartsPtr;
 btVector3FloatData m_scaling;
 int m_numMeshParts;
 char m_padding[4];
};




inline int btStridingMeshInterface::calculateSerializeBufferSize() const
{
 return sizeof(btStridingMeshInterfaceData);
}
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h" 2



class btTriangleMeshShape : public btConcaveShape
{
protected:
 btVector3 m_localAabbMin;
 btVector3 m_localAabbMax;
 btStridingMeshInterface* m_meshInterface;



 btTriangleMeshShape(btStridingMeshInterface* meshInterface);

public:
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 virtual ~btTriangleMeshShape();

 virtual btVector3 localGetSupportingVertex(const btVector3& vec) const;

 virtual btVector3 localGetSupportingVertexWithoutMargin(const btVector3& vec)const
 {
  ;
  return localGetSupportingVertex(vec);
 }

 void recalcLocalAabb();

 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;

 virtual void processAllTriangles(btTriangleCallback* callback,const btVector3& aabbMin,const btVector3& aabbMax) const;

 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const;

 virtual void setLocalScaling(const btVector3& scaling);
 virtual const btVector3& getLocalScaling() const;

 btStridingMeshInterface* getMeshInterface()
 {
  return m_meshInterface;
 }

 const btStridingMeshInterface* getMeshInterface() const
 {
  return m_meshInterface;
 }

 const btVector3& getLocalAabbMin() const
 {
  return m_localAabbMin;
 }
 const btVector3& getLocalAabbMax() const
 {
  return m_localAabbMax;
 }




 virtual const char* getName()const {return "TRIANGLEMESH";}



};
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btOptimizedBvh.h" 1
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btOptimizedBvh.h"
# 1 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h"
class btSerializer;
# 58 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h"
struct btQuantizedBvhNode
{
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 unsigned short int m_quantizedAabbMin[3];
 unsigned short int m_quantizedAabbMax[3];

 int m_escapeIndexOrTriangleIndex;

 bool isLeafNode() const
 {

  return (m_escapeIndexOrTriangleIndex >= 0);
 }
 int getEscapeIndex() const
 {
  ;
  return -m_escapeIndexOrTriangleIndex;
 }
 int getTriangleIndex() const
 {
  ;
  unsigned int x=0;
  unsigned int y = (~(x&0))<<(31-10);

  return (m_escapeIndexOrTriangleIndex&~(y));
 }
 int getPartId() const
 {
  ;

  return (m_escapeIndexOrTriangleIndex>>(31-10));
 }
}
;



struct btOptimizedBvhNode
{
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 btVector3 m_aabbMinOrg;
 btVector3 m_aabbMaxOrg;


 int m_escapeIndex;



 int m_subPart;
 int m_triangleIndex;


 char m_padding[20];
};



class btBvhSubtreeInfo
{
public:
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 unsigned short int m_quantizedAabbMin[3];
 unsigned short int m_quantizedAabbMax[3];

 int m_rootNodeIndex;

 int m_subtreeSize;
 int m_padding[3];

 btBvhSubtreeInfo()
 {

 }


 void setAabbFromQuantizeNode(const btQuantizedBvhNode& quantizedNode)
 {
  m_quantizedAabbMin[0] = quantizedNode.m_quantizedAabbMin[0];
  m_quantizedAabbMin[1] = quantizedNode.m_quantizedAabbMin[1];
  m_quantizedAabbMin[2] = quantizedNode.m_quantizedAabbMin[2];
  m_quantizedAabbMax[0] = quantizedNode.m_quantizedAabbMax[0];
  m_quantizedAabbMax[1] = quantizedNode.m_quantizedAabbMax[1];
  m_quantizedAabbMax[2] = quantizedNode.m_quantizedAabbMax[2];
 }
}
;


class btNodeOverlapCallback
{
public:
 virtual ~btNodeOverlapCallback() {};

 virtual void processNode(int subPart, int triangleIndex) = 0;
};


# 1 "C:/bullet3-master/src/LinearMath/btAlignedObjectArray.h" 1
# 162 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h" 2




typedef btAlignedObjectArray<btOptimizedBvhNode> NodeArray;
typedef btAlignedObjectArray<btQuantizedBvhNode> QuantizedNodeArray;
typedef btAlignedObjectArray<btBvhSubtreeInfo> BvhSubtreeInfoArray;





class btQuantizedBvh
{
public:
 enum btTraversalMode
 {
  TRAVERSAL_STACKLESS = 0,
  TRAVERSAL_STACKLESS_CACHE_FRIENDLY,
  TRAVERSAL_RECURSIVE
 };

protected:


 btVector3 m_bvhAabbMin;
 btVector3 m_bvhAabbMax;
 btVector3 m_bvhQuantization;

 int m_bulletVersion;

 int m_curNodeIndex;

 bool m_useQuantization;



 NodeArray m_leafNodes;
 NodeArray m_contiguousNodes;
 QuantizedNodeArray m_quantizedLeafNodes;
 QuantizedNodeArray m_quantizedContiguousNodes;

 btTraversalMode m_traversalMode;
 BvhSubtreeInfoArray m_SubtreeHeaders;


 mutable int m_subtreeHeaderCount;







 void setInternalNodeAabbMin(int nodeIndex, const btVector3& aabbMin)
 {
  if (m_useQuantization)
  {
   quantize(&m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMin[0] ,aabbMin,0);
  } else
  {
   m_contiguousNodes[nodeIndex].m_aabbMinOrg = aabbMin;

  }
 }
 void setInternalNodeAabbMax(int nodeIndex,const btVector3& aabbMax)
 {
  if (m_useQuantization)
  {
   quantize(&m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMax[0],aabbMax,1);
  } else
  {
   m_contiguousNodes[nodeIndex].m_aabbMaxOrg = aabbMax;
  }
 }

 btVector3 getAabbMin(int nodeIndex) const
 {
  if (m_useQuantization)
  {
   return unQuantize(&m_quantizedLeafNodes[nodeIndex].m_quantizedAabbMin[0]);
  }

  return m_leafNodes[nodeIndex].m_aabbMinOrg;

 }
 btVector3 getAabbMax(int nodeIndex) const
 {
  if (m_useQuantization)
  {
   return unQuantize(&m_quantizedLeafNodes[nodeIndex].m_quantizedAabbMax[0]);
  }

  return m_leafNodes[nodeIndex].m_aabbMaxOrg;

 }


 void setInternalNodeEscapeIndex(int nodeIndex, int escapeIndex)
 {
  if (m_useQuantization)
  {
   m_quantizedContiguousNodes[nodeIndex].m_escapeIndexOrTriangleIndex = -escapeIndex;
  }
  else
  {
   m_contiguousNodes[nodeIndex].m_escapeIndex = escapeIndex;
  }

 }

 void mergeInternalNodeAabb(int nodeIndex,const btVector3& newAabbMin,const btVector3& newAabbMax)
 {
  if (m_useQuantization)
  {
   unsigned short int quantizedAabbMin[3];
   unsigned short int quantizedAabbMax[3];
   quantize(quantizedAabbMin,newAabbMin,0);
   quantize(quantizedAabbMax,newAabbMax,1);
   for (int i=0;i<3;i++)
   {
    if (m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMin[i] > quantizedAabbMin[i])
     m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMin[i] = quantizedAabbMin[i];

    if (m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMax[i] < quantizedAabbMax[i])
     m_quantizedContiguousNodes[nodeIndex].m_quantizedAabbMax[i] = quantizedAabbMax[i];

   }
  } else
  {

   m_contiguousNodes[nodeIndex].m_aabbMinOrg.setMin(newAabbMin);
   m_contiguousNodes[nodeIndex].m_aabbMaxOrg.setMax(newAabbMax);
  }
 }

 void swapLeafNodes(int firstIndex,int secondIndex);

 void assignInternalNodeFromLeafNode(int internalNode,int leafNodeIndex);

protected:



 void buildTree (int startIndex,int endIndex);

 int calcSplittingAxis(int startIndex,int endIndex);

 int sortAndCalcSplittingIndex(int startIndex,int endIndex,int splitAxis);

 void walkStacklessTree(btNodeOverlapCallback* nodeCallback,const btVector3& aabbMin,const btVector3& aabbMax) const;

 void walkStacklessQuantizedTreeAgainstRay(btNodeOverlapCallback* nodeCallback, const btVector3& raySource, const btVector3& rayTarget, const btVector3& aabbMin, const btVector3& aabbMax, int startNodeIndex,int endNodeIndex) const;
 void walkStacklessQuantizedTree(btNodeOverlapCallback* nodeCallback,unsigned short int* quantizedQueryAabbMin,unsigned short int* quantizedQueryAabbMax,int startNodeIndex,int endNodeIndex) const;
 void walkStacklessTreeAgainstRay(btNodeOverlapCallback* nodeCallback, const btVector3& raySource, const btVector3& rayTarget, const btVector3& aabbMin, const btVector3& aabbMax, int startNodeIndex,int endNodeIndex) const;


 void walkStacklessQuantizedTreeCacheFriendly(btNodeOverlapCallback* nodeCallback,unsigned short int* quantizedQueryAabbMin,unsigned short int* quantizedQueryAabbMax) const;


 void walkRecursiveQuantizedTreeAgainstQueryAabb(const btQuantizedBvhNode* currentNode,btNodeOverlapCallback* nodeCallback,unsigned short int* quantizedQueryAabbMin,unsigned short int* quantizedQueryAabbMax) const;


 void walkRecursiveQuantizedTreeAgainstQuantizedTree(const btQuantizedBvhNode* treeNodeA,const btQuantizedBvhNode* treeNodeB,btNodeOverlapCallback* nodeCallback) const;




 void updateSubtreeHeaders(int leftChildNodexIndex,int rightChildNodexIndex);

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btQuantizedBvh();

 virtual ~btQuantizedBvh();



 void setQuantizationValues(const btVector3& bvhAabbMin,const btVector3& bvhAabbMax,btScalar quantizationMargin=btScalar(1.0));
 QuantizedNodeArray& getLeafNodeArray() { return m_quantizedLeafNodes; }

 void buildInternal();


 void reportAabbOverlappingNodex(btNodeOverlapCallback* nodeCallback,const btVector3& aabbMin,const btVector3& aabbMax) const;
 void reportRayOverlappingNodex (btNodeOverlapCallback* nodeCallback, const btVector3& raySource, const btVector3& rayTarget) const;
 void reportBoxCastOverlappingNodex(btNodeOverlapCallback* nodeCallback, const btVector3& raySource, const btVector3& rayTarget, const btVector3& aabbMin,const btVector3& aabbMax) const;

  inline void quantize(unsigned short* out, const btVector3& point,int isMax) const
 {

  ;

  ;
  ;
  ;

  ;
  ;
  ;

  btVector3 v = (point - m_bvhAabbMin) * m_bvhQuantization;



  if (isMax)
  {
   out[0] = (unsigned short) (((unsigned short)(v.getX()+btScalar(1.)) | 1));
   out[1] = (unsigned short) (((unsigned short)(v.getY()+btScalar(1.)) | 1));
   out[2] = (unsigned short) (((unsigned short)(v.getZ()+btScalar(1.)) | 1));
  } else
  {
   out[0] = (unsigned short) (((unsigned short)(v.getX()) & 0xfffe));
   out[1] = (unsigned short) (((unsigned short)(v.getY()) & 0xfffe));
   out[2] = (unsigned short) (((unsigned short)(v.getZ()) & 0xfffe));
  }
# 416 "C:/bullet3-master/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h"
 }


 inline void quantizeWithClamp(unsigned short* out, const btVector3& point2,int isMax) const
 {

  ;

  btVector3 clampedPoint(point2);
  clampedPoint.setMax(m_bvhAabbMin);
  clampedPoint.setMin(m_bvhAabbMax);

  quantize(out,clampedPoint,isMax);

 }

 inline btVector3 unQuantize(const unsigned short* vecIn) const
 {
   btVector3 vecOut;
   vecOut.setValue(
   (btScalar)(vecIn[0]) / (m_bvhQuantization.getX()),
   (btScalar)(vecIn[1]) / (m_bvhQuantization.getY()),
   (btScalar)(vecIn[2]) / (m_bvhQuantization.getZ()));
   vecOut += m_bvhAabbMin;
   return vecOut;
 }


 void setTraversalMode(btTraversalMode traversalMode)
 {
  m_traversalMode = traversalMode;
 }


 inline QuantizedNodeArray& getQuantizedNodeArray()
 {
  return m_quantizedContiguousNodes;
 }


 inline BvhSubtreeInfoArray& getSubtreeInfoArray()
 {
  return m_SubtreeHeaders;
 }




 unsigned calculateSerializeBufferSize() const;


 virtual bool serialize(void *o_alignedDataBuffer, unsigned i_dataBufferSize, bool i_swapEndian) const;


 static btQuantizedBvh *deSerializeInPlace(void *i_alignedDataBuffer, unsigned int i_dataBufferSize, bool i_swapEndian);

 static unsigned int getAlignmentSerializationPadding();



 virtual int calculateSerializeBufferSizeNew() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;

 virtual void deSerializeFloat(struct btQuantizedBvhFloatData& quantizedBvhFloatData);

 virtual void deSerializeDouble(struct btQuantizedBvhDoubleData& quantizedBvhDoubleData);




 inline bool isQuantized()
 {
  return m_useQuantization;
 }

private:



 btQuantizedBvh(btQuantizedBvh &other, bool ownsMemory);

}
;


struct btBvhSubtreeInfoData
{
 int m_rootNodeIndex;
 int m_subtreeSize;
 unsigned short m_quantizedAabbMin[3];
 unsigned short m_quantizedAabbMax[3];
};

struct btOptimizedBvhNodeFloatData
{
 btVector3FloatData m_aabbMinOrg;
 btVector3FloatData m_aabbMaxOrg;
 int m_escapeIndex;
 int m_subPart;
 int m_triangleIndex;
 char m_pad[4];
};

struct btOptimizedBvhNodeDoubleData
{
 btVector3DoubleData m_aabbMinOrg;
 btVector3DoubleData m_aabbMaxOrg;
 int m_escapeIndex;
 int m_subPart;
 int m_triangleIndex;
 char m_pad[4];
};


struct btQuantizedBvhNodeData
{
 unsigned short m_quantizedAabbMin[3];
 unsigned short m_quantizedAabbMax[3];
 int m_escapeIndexOrTriangleIndex;
};

struct btQuantizedBvhFloatData
{
 btVector3FloatData m_bvhAabbMin;
 btVector3FloatData m_bvhAabbMax;
 btVector3FloatData m_bvhQuantization;
 int m_curNodeIndex;
 int m_useQuantization;
 int m_numContiguousLeafNodes;
 int m_numQuantizedContiguousNodes;
 btOptimizedBvhNodeFloatData *m_contiguousNodesPtr;
 btQuantizedBvhNodeData *m_quantizedContiguousNodesPtr;
 btBvhSubtreeInfoData *m_subTreeInfoPtr;
 int m_traversalMode;
 int m_numSubtreeHeaders;

};

struct btQuantizedBvhDoubleData
{
 btVector3DoubleData m_bvhAabbMin;
 btVector3DoubleData m_bvhAabbMax;
 btVector3DoubleData m_bvhQuantization;
 int m_curNodeIndex;
 int m_useQuantization;
 int m_numContiguousLeafNodes;
 int m_numQuantizedContiguousNodes;
 btOptimizedBvhNodeDoubleData *m_contiguousNodesPtr;
 btQuantizedBvhNodeData *m_quantizedContiguousNodesPtr;

 int m_traversalMode;
 int m_numSubtreeHeaders;
 btBvhSubtreeInfoData *m_subTreeInfoPtr;
};


inline int btQuantizedBvh::calculateSerializeBufferSizeNew() const
{
 return sizeof(btQuantizedBvhFloatData);
}
# 22 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btOptimizedBvh.h" 2

class btStridingMeshInterface;



class btOptimizedBvh : public btQuantizedBvh
{

public:
 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

protected:

public:

 btOptimizedBvh();

 virtual ~btOptimizedBvh();

 void build(btStridingMeshInterface* triangles,bool useQuantizedAabbCompression, const btVector3& bvhAabbMin, const btVector3& bvhAabbMax);

 void refit(btStridingMeshInterface* triangles,const btVector3& aabbMin,const btVector3& aabbMax);

 void refitPartial(btStridingMeshInterface* triangles,const btVector3& aabbMin, const btVector3& aabbMax);

 void updateBvhNodes(btStridingMeshInterface* meshInterface,int firstNode,int endNode,int index);


 virtual bool serializeInPlace(void *o_alignedDataBuffer, unsigned i_dataBufferSize, bool i_swapEndian) const
 {
  return btQuantizedBvh::serialize(o_alignedDataBuffer,i_dataBufferSize,i_swapEndian);

 }


 static btOptimizedBvh *deSerializeInPlace(void *i_alignedDataBuffer, unsigned int i_dataBufferSize, bool i_swapEndian);


};
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h" 2

# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h" 1
# 23 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h" 2
# 34 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h"
class btBvhTriangleMeshShape : public btTriangleMeshShape
{

 btOptimizedBvh* m_bvh;
 btTriangleInfoMap* m_triangleInfoMap;

 bool m_useQuantizedAabbCompression;
 bool m_ownsBvh;
 bool m_pad[11];

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 btBvhTriangleMeshShape(btStridingMeshInterface* meshInterface, bool useQuantizedAabbCompression, bool buildBvh = true);


 btBvhTriangleMeshShape(btStridingMeshInterface* meshInterface, bool useQuantizedAabbCompression,const btVector3& bvhAabbMin,const btVector3& bvhAabbMax, bool buildBvh = true);

 virtual ~btBvhTriangleMeshShape();

 bool getOwnsBvh () const
 {
  return m_ownsBvh;
 }



 void performRaycast (btTriangleCallback* callback, const btVector3& raySource, const btVector3& rayTarget);
 void performConvexcast (btTriangleCallback* callback, const btVector3& boxSource, const btVector3& boxTarget, const btVector3& boxMin, const btVector3& boxMax);

 virtual void processAllTriangles(btTriangleCallback* callback,const btVector3& aabbMin,const btVector3& aabbMax) const;

 void refitTree(const btVector3& aabbMin,const btVector3& aabbMax);


 void partialRefitTree(const btVector3& aabbMin,const btVector3& aabbMax);


 virtual const char* getName()const {return "BVHTRIANGLEMESH";}


 virtual void setLocalScaling(const btVector3& scaling);

 btOptimizedBvh* getOptimizedBvh()
 {
  return m_bvh;
 }

 void setOptimizedBvh(btOptimizedBvh* bvh, const btVector3& localScaling=btVector3(1,1,1));

 void buildOptimizedBvh();

 bool usesQuantizedAabbCompression() const
 {
  return m_useQuantizedAabbCompression;
 }

 void setTriangleInfoMap(btTriangleInfoMap* triangleInfoMap)
 {
  m_triangleInfoMap = triangleInfoMap;
 }

 const btTriangleInfoMap* getTriangleInfoMap() const
 {
  return m_triangleInfoMap;
 }

 btTriangleInfoMap* getTriangleInfoMap()
 {
  return m_triangleInfoMap;
 }

 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;

 virtual void serializeSingleBvh(btSerializer* serializer) const;

 virtual void serializeSingleTriangleInfoMap(btSerializer* serializer) const;

};


struct btTriangleMeshShapeData
{
 btCollisionShapeData m_collisionShapeData;

 btStridingMeshInterfaceData m_meshInterface;

 btQuantizedBvhFloatData *m_quantizedFloatBvh;
 btQuantizedBvhDoubleData *m_quantizedDoubleBvh;

 btTriangleInfoMapData *m_triangleInfoMap;

 float m_collisionMargin;

 char m_pad3[4];

};


inline int btBvhTriangleMeshShape::calculateSerializeBufferSize() const
{
 return sizeof(btTriangleMeshShapeData);
}
# 4 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h" 1
# 24 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h"
class btScaledBvhTriangleMeshShape : public btConcaveShape
{


 btVector3 m_localScaling;

 btBvhTriangleMeshShape* m_bvhTriMeshShape;

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 btScaledBvhTriangleMeshShape(btBvhTriangleMeshShape* childShape,const btVector3& localScaling);

 virtual ~btScaledBvhTriangleMeshShape();


 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;
 virtual void setLocalScaling(const btVector3& scaling);
 virtual const btVector3& getLocalScaling() const;
 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const;

 virtual void processAllTriangles(btTriangleCallback* callback,const btVector3& aabbMin,const btVector3& aabbMax) const;

 btBvhTriangleMeshShape* getChildShape()
 {
  return m_bvhTriMeshShape;
 }

 const btBvhTriangleMeshShape* getChildShape() const
 {
  return m_bvhTriMeshShape;
 }


 virtual const char* getName()const {return "SCALEDBVHTRIANGLEMESH";}

 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;

};


struct btScaledTriangleMeshShapeData
{
 btTriangleMeshShapeData m_trimeshShapeData;

 btVector3FloatData m_localScaling;
};


inline int btScaledBvhTriangleMeshShape::calculateSerializeBufferSize() const
{
 return sizeof(btScaledTriangleMeshShapeData);
}



inline const char* btScaledBvhTriangleMeshShape::serialize(void* dataBuffer, btSerializer* serializer) const
{
 btScaledTriangleMeshShapeData* scaledMeshData = (btScaledTriangleMeshShapeData*) dataBuffer;
 m_bvhTriMeshShape->serialize(&scaledMeshData->m_trimeshShapeData,serializer);
 scaledMeshData->m_trimeshShapeData.m_collisionShapeData.m_shapeType = SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE;
 m_localScaling.serializeFloat(scaledMeshData->m_localScaling);
 return "btScaledTriangleMeshShapeData";
}
# 5 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.h" 1
# 24 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionMargin.h" 1
# 25 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.h" 2






class btConvexShape : public btCollisionShape
{


public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btConvexShape ();

 virtual ~btConvexShape();

 virtual btVector3 localGetSupportingVertex(const btVector3& vec)const = 0;



 virtual btVector3 localGetSupportingVertexWithoutMargin(const btVector3& vec) const=0;


 btVector3 localGetSupportVertexWithoutMarginNonVirtual (const btVector3& vec) const;
 btVector3 localGetSupportVertexNonVirtual (const btVector3& vec) const;
 btScalar getMarginNonVirtual () const;
 void getAabbNonVirtual (const btTransform& t, btVector3& aabbMin, btVector3& aabbMax) const;

 virtual void project(const btTransform& trans, const btVector3& dir, btScalar& min, btScalar& max) const;



 virtual void batchedUnitVectorGetSupportingVertexWithoutMargin(const btVector3* vectors,btVector3* supportVerticesOut,int numVectors) const= 0;


 void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const =0;

 virtual void getAabbSlow(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const =0;

 virtual void setLocalScaling(const btVector3& scaling) =0;
 virtual const btVector3& getLocalScaling() const =0;

 virtual void setMargin(btScalar margin)=0;

 virtual btScalar getMargin() const=0;

 virtual int getNumPreferredPenetrationDirections() const=0;

 virtual void getPreferredPenetrationDirection(int index, btVector3& penetrationVector) const=0;




};
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleShape.h" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBoxShape.h" 1
# 19 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBoxShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h" 1
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h"
# 1 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.h" 1
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.h"
# 1 "C:/bullet3-master/src/LinearMath/btAabbUtil2.h" 1
# 20 "C:/bullet3-master/src/LinearMath/btAabbUtil2.h"
# 1 "C:/bullet3-master/src/LinearMath/btTransform.h" 1
# 21 "C:/bullet3-master/src/LinearMath/btAabbUtil2.h" 2





inline void AabbExpand (btVector3& aabbMin,
           btVector3& aabbMax,
           const btVector3& expansionMin,
           const btVector3& expansionMax)
{
 aabbMin = aabbMin + expansionMin;
 aabbMax = aabbMax + expansionMax;
}


inline bool TestPointAgainstAabb2(const btVector3 &aabbMin1, const btVector3 &aabbMax1,
        const btVector3 &point)
{
 bool overlap = true;
 overlap = (aabbMin1.getX() > point.getX() || aabbMax1.getX() < point.getX()) ? false : overlap;
 overlap = (aabbMin1.getZ() > point.getZ() || aabbMax1.getZ() < point.getZ()) ? false : overlap;
 overlap = (aabbMin1.getY() > point.getY() || aabbMax1.getY() < point.getY()) ? false : overlap;
 return overlap;
}



inline bool TestAabbAgainstAabb2(const btVector3 &aabbMin1, const btVector3 &aabbMax1,
        const btVector3 &aabbMin2, const btVector3 &aabbMax2)
{
 bool overlap = true;
 overlap = (aabbMin1.getX() > aabbMax2.getX() || aabbMax1.getX() < aabbMin2.getX()) ? false : overlap;
 overlap = (aabbMin1.getZ() > aabbMax2.getZ() || aabbMax1.getZ() < aabbMin2.getZ()) ? false : overlap;
 overlap = (aabbMin1.getY() > aabbMax2.getY() || aabbMax1.getY() < aabbMin2.getY()) ? false : overlap;
 return overlap;
}


inline bool TestTriangleAgainstAabb2(const btVector3 *vertices,
         const btVector3 &aabbMin, const btVector3 &aabbMax)
{
 const btVector3 &p1 = vertices[0];
 const btVector3 &p2 = vertices[1];
 const btVector3 &p3 = vertices[2];

 if (btMin(btMin(p1[0], p2[0]), p3[0]) > aabbMax[0]) return false;
 if (btMax(btMax(p1[0], p2[0]), p3[0]) < aabbMin[0]) return false;

 if (btMin(btMin(p1[2], p2[2]), p3[2]) > aabbMax[2]) return false;
 if (btMax(btMax(p1[2], p2[2]), p3[2]) < aabbMin[2]) return false;

 if (btMin(btMin(p1[1], p2[1]), p3[1]) > aabbMax[1]) return false;
 if (btMax(btMax(p1[1], p2[1]), p3[1]) < aabbMin[1]) return false;
 return true;
}


inline int btOutcode(const btVector3& p,const btVector3& halfExtent)
{
 return (p.getX() < -halfExtent.getX() ? 0x01 : 0x0) |
     (p.getX() > halfExtent.getX() ? 0x08 : 0x0) |
     (p.getY() < -halfExtent.getY() ? 0x02 : 0x0) |
     (p.getY() > halfExtent.getY() ? 0x10 : 0x0) |
     (p.getZ() < -halfExtent.getZ() ? 0x4 : 0x0) |
     (p.getZ() > halfExtent.getZ() ? 0x20 : 0x0);
}



inline bool btRayAabb2(const btVector3& rayFrom,
          const btVector3& rayInvDirection,
          const unsigned int raySign[3],
          const btVector3 bounds[2],
          btScalar& tmin,
          btScalar lambda_min,
          btScalar lambda_max)
{
 btScalar tmax, tymin, tymax, tzmin, tzmax;
 tmin = (bounds[raySign[0]].getX() - rayFrom.getX()) * rayInvDirection.getX();
 tmax = (bounds[1-raySign[0]].getX() - rayFrom.getX()) * rayInvDirection.getX();
 tymin = (bounds[raySign[1]].getY() - rayFrom.getY()) * rayInvDirection.getY();
 tymax = (bounds[1-raySign[1]].getY() - rayFrom.getY()) * rayInvDirection.getY();

 if ( (tmin > tymax) || (tymin > tmax) )
  return false;

 if (tymin > tmin)
  tmin = tymin;

 if (tymax < tmax)
  tmax = tymax;

 tzmin = (bounds[raySign[2]].getZ() - rayFrom.getZ()) * rayInvDirection.getZ();
 tzmax = (bounds[1-raySign[2]].getZ() - rayFrom.getZ()) * rayInvDirection.getZ();

 if ( (tmin > tzmax) || (tzmin > tmax) )
  return false;
 if (tzmin > tmin)
  tmin = tzmin;
 if (tzmax < tmax)
  tmax = tzmax;
 return ( (tmin < lambda_max) && (tmax > lambda_min) );
}

inline bool btRayAabb(const btVector3& rayFrom,
         const btVector3& rayTo,
         const btVector3& aabbMin,
         const btVector3& aabbMax,
       btScalar& param, btVector3& normal)
{
 btVector3 aabbHalfExtent = (aabbMax-aabbMin)* btScalar(0.5);
 btVector3 aabbCenter = (aabbMax+aabbMin)* btScalar(0.5);
 btVector3 source = rayFrom - aabbCenter;
 btVector3 target = rayTo - aabbCenter;
 int sourceOutcode = btOutcode(source,aabbHalfExtent);
 int targetOutcode = btOutcode(target,aabbHalfExtent);
 if ((sourceOutcode & targetOutcode) == 0x0)
 {
  btScalar lambda_enter = btScalar(0.0);
  btScalar lambda_exit = param;
  btVector3 r = target - source;
  int i;
  btScalar normSign = 1;
  btVector3 hitNormal(0,0,0);
  int bit=1;

  for (int j=0;j<2;j++)
  {
   for (i = 0; i != 3; ++i)
   {
    if (sourceOutcode & bit)
    {
     btScalar lambda = (-source[i] - aabbHalfExtent[i]*normSign) / r[i];
     if (lambda_enter <= lambda)
     {
      lambda_enter = lambda;
      hitNormal.setValue(0,0,0);
      hitNormal[i] = normSign;
     }
    }
    else if (targetOutcode & bit)
    {
     btScalar lambda = (-source[i] - aabbHalfExtent[i]*normSign) / r[i];
     btSetMin(lambda_exit, lambda);
    }
    bit<<=1;
   }
   normSign = btScalar(-1.);
  }
  if (lambda_enter <= lambda_exit)
  {
   param = lambda_enter;
   normal = hitNormal;
   return true;
  }
 }
 return false;
}



inline void btTransformAabb(const btVector3& halfExtents, btScalar margin,const btTransform& t,btVector3& aabbMinOut,btVector3& aabbMaxOut)
{
 btVector3 halfExtentsWithMargin = halfExtents+btVector3(margin,margin,margin);
 btMatrix3x3 abs_b = t.getBasis().absolute();
 btVector3 center = t.getOrigin();
    btVector3 extent = halfExtentsWithMargin.dot3( abs_b[0], abs_b[1], abs_b[2] );
 aabbMinOut = center - extent;
 aabbMaxOut = center + extent;
}


inline void btTransformAabb(const btVector3& localAabbMin,const btVector3& localAabbMax, btScalar margin,const btTransform& trans,btVector3& aabbMinOut,btVector3& aabbMaxOut)
{
  ;
  ;
  ;
  btVector3 localHalfExtents = btScalar(0.5)*(localAabbMax-localAabbMin);
  localHalfExtents+=btVector3(margin,margin,margin);

  btVector3 localCenter = btScalar(0.5)*(localAabbMax+localAabbMin);
  btMatrix3x3 abs_b = trans.getBasis().absolute();
  btVector3 center = trans(localCenter);
        btVector3 extent = localHalfExtents.dot3( abs_b[0], abs_b[1], abs_b[2] );
  aabbMinOut = center-extent;
  aabbMaxOut = center+extent;
}




 inline unsigned testQuantizedAabbAgainstQuantizedAabb(const unsigned short int* aabbMin1,const unsigned short int* aabbMax1,const unsigned short int* aabbMin2,const unsigned short int* aabbMax2)
 {
  return static_cast<unsigned int>(btSelect((unsigned)((aabbMin1[0] <= aabbMax2[0]) & (aabbMax1[0] >= aabbMin2[0])
   & (aabbMin1[2] <= aabbMax2[2]) & (aabbMax1[2] >= aabbMin2[2])
   & (aabbMin1[1] <= aabbMax2[1]) & (aabbMax1[1] >= aabbMin2[1])),
   1, 0));
 }
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.h" 2
# 29 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.h"
class btConvexInternalShape : public btConvexShape
{

 protected:


 btVector3 m_localScaling;

 btVector3 m_implicitShapeDimensions;

 btScalar m_collisionMargin;

 btScalar m_padding;

 btConvexInternalShape();

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 virtual ~btConvexInternalShape()
 {

 }

 virtual btVector3 localGetSupportingVertex(const btVector3& vec)const;

 const btVector3& getImplicitShapeDimensions() const
 {
  return m_implicitShapeDimensions;
 }





 void setImplicitShapeDimensions(const btVector3& dimensions)
 {
  m_implicitShapeDimensions = dimensions;
 }

 void setSafeMargin(btScalar minDimension, btScalar defaultMarginMultiplier = 0.1f)
 {
  btScalar safeMargin = defaultMarginMultiplier*minDimension;
  if (safeMargin < getMargin())
  {
   setMargin(safeMargin);
  }
 }
 void setSafeMargin(const btVector3& halfExtents, btScalar defaultMarginMultiplier = 0.1f)
 {



  btScalar minDimension=halfExtents[halfExtents.minAxis()];
  setSafeMargin(minDimension, defaultMarginMultiplier);
 }


 void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const
 {
  getAabbSlow(t,aabbMin,aabbMax);
 }



 virtual void getAabbSlow(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;


 virtual void setLocalScaling(const btVector3& scaling);
 virtual const btVector3& getLocalScaling() const
 {
  return m_localScaling;
 }

 const btVector3& getLocalScalingNV() const
 {
  return m_localScaling;
 }

 virtual void setMargin(btScalar margin)
 {
  m_collisionMargin = margin;
 }
 virtual btScalar getMargin() const
 {
  return m_collisionMargin;
 }

 btScalar getMarginNV() const
 {
  return m_collisionMargin;
 }

 virtual int getNumPreferredPenetrationDirections() const
 {
  return 0;
 }

 virtual void getPreferredPenetrationDirection(int index, btVector3& penetrationVector) const
 {
  (void)penetrationVector;
  (void)index;
  ;
 }

 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, btSerializer* serializer) const;


};


struct btConvexInternalShapeData
{
 btCollisionShapeData m_collisionShapeData;

 btVector3FloatData m_localScaling;

 btVector3FloatData m_implicitShapeDimensions;

 float m_collisionMargin;

 int m_padding;

};



inline int btConvexInternalShape::calculateSerializeBufferSize() const
{
 return sizeof(btConvexInternalShapeData);
}


inline const char* btConvexInternalShape::serialize(void* dataBuffer, btSerializer* serializer) const
{
 btConvexInternalShapeData* shapeData = (btConvexInternalShapeData*) dataBuffer;
 btCollisionShape::serialize(&shapeData->m_collisionShapeData, serializer);

 m_implicitShapeDimensions.serializeFloat(shapeData->m_implicitShapeDimensions);
 m_localScaling.serializeFloat(shapeData->m_localScaling);
 shapeData->m_collisionMargin = float(m_collisionMargin);

 return "btConvexInternalShapeData";
}





class btConvexInternalAabbCachingShape : public btConvexInternalShape
{
 btVector3 m_localAabbMin;
 btVector3 m_localAabbMax;
 bool m_isLocalAabbValid;

protected:

 btConvexInternalAabbCachingShape();

 void setCachedLocalAabb (const btVector3& aabbMin, const btVector3& aabbMax)
 {
  m_isLocalAabbValid = true;
  m_localAabbMin = aabbMin;
  m_localAabbMax = aabbMax;
 }

 inline void getCachedLocalAabb (btVector3& aabbMin, btVector3& aabbMax) const
 {
  ;
  aabbMin = m_localAabbMin;
  aabbMax = m_localAabbMax;
 }

 inline void getNonvirtualAabb(const btTransform& trans,btVector3& aabbMin,btVector3& aabbMax, btScalar margin) const
 {


  ;
  btTransformAabb(m_localAabbMin,m_localAabbMax,margin,trans,aabbMin,aabbMax);
 }

public:

 virtual void setLocalScaling(const btVector3& scaling);

 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;

 void recalcLocalAabb();

};
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h" 2
class btConvexPolyhedron;



class btPolyhedralConvexShape : public btConvexInternalShape
{


protected:

 btConvexPolyhedron* m_polyhedron;

public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };


 btPolyhedralConvexShape();

 virtual ~btPolyhedralConvexShape();



 virtual bool initializePolyhedralFeatures(int shiftVerticesByMargin=0);

 const btConvexPolyhedron* getConvexPolyhedron() const
 {
  return m_polyhedron;
 }



 virtual btVector3 localGetSupportingVertexWithoutMargin(const btVector3& vec)const;
 virtual void batchedUnitVectorGetSupportingVertexWithoutMargin(const btVector3* vectors,btVector3* supportVerticesOut,int numVectors) const;

 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const;


 virtual int getNumVertices() const = 0 ;
 virtual int getNumEdges() const = 0;
 virtual void getEdge(int i,btVector3& pa,btVector3& pb) const = 0;
 virtual void getVertex(int i,btVector3& vtx) const = 0;
 virtual int getNumPlanes() const = 0;
 virtual void getPlane(btVector3& planeNormal,btVector3& planeSupport,int i ) const = 0;


 virtual bool isInside(const btVector3& pt,btScalar tolerance) const = 0;

};



class btPolyhedralConvexAabbCachingShape : public btPolyhedralConvexShape
{

 btVector3 m_localAabbMin;
 btVector3 m_localAabbMax;
 bool m_isLocalAabbValid;

protected:

 void setCachedLocalAabb (const btVector3& aabbMin, const btVector3& aabbMax)
 {
  m_isLocalAabbValid = true;
  m_localAabbMin = aabbMin;
  m_localAabbMax = aabbMax;
 }

 inline void getCachedLocalAabb (btVector3& aabbMin, btVector3& aabbMax) const
 {
  ;
  aabbMin = m_localAabbMin;
  aabbMax = m_localAabbMax;
 }

public:

 btPolyhedralConvexAabbCachingShape();

 inline void getNonvirtualAabb(const btTransform& trans,btVector3& aabbMin,btVector3& aabbMax, btScalar margin) const
 {


  ;
  btTransformAabb(m_localAabbMin,m_localAabbMax,margin,trans,aabbMin,aabbMax);
 }

 virtual void setLocalScaling(const btVector3& scaling);

 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;

 void recalcLocalAabb();

};
# 20 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBoxShape.h" 2



# 1 "C:/bullet3-master/src/LinearMath/btMinMax.h" 1
# 24 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btBoxShape.h" 2


class btBoxShape: public btPolyhedralConvexShape
{




public:

inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btVector3 getHalfExtentsWithMargin() const
 {
  btVector3 halfExtents = getHalfExtentsWithoutMargin();
  btVector3 margin(getMargin(),getMargin(),getMargin());
  halfExtents += margin;
  return halfExtents;
 }

 const btVector3& getHalfExtentsWithoutMargin() const
 {
  return m_implicitShapeDimensions;
 }


 virtual btVector3 localGetSupportingVertex(const btVector3& vec) const
 {
  btVector3 halfExtents = getHalfExtentsWithoutMargin();
  btVector3 margin(getMargin(),getMargin(),getMargin());
  halfExtents += margin;

  return btVector3((btScalar)btFsel(vec.x(),halfExtents.x(),-halfExtents.x()),
   (btScalar)btFsel(vec.y(),halfExtents.y(),-halfExtents.y()),
   (btScalar)btFsel(vec.z(),halfExtents.z(),-halfExtents.z()));
 }

 inline btVector3 localGetSupportingVertexWithoutMargin(const btVector3& vec)const
 {
  const btVector3& halfExtents = getHalfExtentsWithoutMargin();

  return btVector3((btScalar)btFsel(vec.x(),halfExtents.x(),-halfExtents.x()),
   (btScalar)btFsel(vec.y(),halfExtents.y(),-halfExtents.y()),
   (btScalar)btFsel(vec.z(),halfExtents.z(),-halfExtents.z()));
 }

 virtual void batchedUnitVectorGetSupportingVertexWithoutMargin(const btVector3* vectors,btVector3* supportVerticesOut,int numVectors) const
 {
  const btVector3& halfExtents = getHalfExtentsWithoutMargin();

  for (int i=0;i<numVectors;i++)
  {
   const btVector3& vec = vectors[i];
   supportVerticesOut[i].setValue((btScalar)btFsel(vec.x(),halfExtents.x(),-halfExtents.x()),
    (btScalar)btFsel(vec.y(),halfExtents.y(),-halfExtents.y()),
    (btScalar)btFsel(vec.z(),halfExtents.z(),-halfExtents.z()));
  }

 }


 btBoxShape( const btVector3& boxHalfExtents);

 virtual void setMargin(btScalar collisionMargin)
 {

  btVector3 oldMargin(getMargin(),getMargin(),getMargin());
  btVector3 implicitShapeDimensionsWithMargin = m_implicitShapeDimensions+oldMargin;

  btConvexInternalShape::setMargin(collisionMargin);
  btVector3 newMargin(getMargin(),getMargin(),getMargin());
  m_implicitShapeDimensions = implicitShapeDimensionsWithMargin - newMargin;

 }
 virtual void setLocalScaling(const btVector3& scaling)
 {
  btVector3 oldMargin(getMargin(),getMargin(),getMargin());
  btVector3 implicitShapeDimensionsWithMargin = m_implicitShapeDimensions+oldMargin;
  btVector3 unScaledImplicitShapeDimensionsWithMargin = implicitShapeDimensionsWithMargin / m_localScaling;

  btConvexInternalShape::setLocalScaling(scaling);

  m_implicitShapeDimensions = (unScaledImplicitShapeDimensionsWithMargin * m_localScaling) - oldMargin;

 }

 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax) const;



 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const;

 virtual void getPlane(btVector3& planeNormal,btVector3& planeSupport,int i ) const
 {

  btVector4 plane ;
  getPlaneEquation(plane,i);
  planeNormal = btVector3(plane.getX(),plane.getY(),plane.getZ());
  planeSupport = localGetSupportingVertex(-planeNormal);
 }


 virtual int getNumPlanes() const
 {
  return 6;
 }

 virtual int getNumVertices() const
 {
  return 8;
 }

 virtual int getNumEdges() const
 {
  return 12;
 }


 virtual void getVertex(int i,btVector3& vtx) const
 {
  btVector3 halfExtents = getHalfExtentsWithMargin();

  vtx = btVector3(
    halfExtents.x() * (1-(i&1)) - halfExtents.x() * (i&1),
    halfExtents.y() * (1-((i&2)>>1)) - halfExtents.y() * ((i&2)>>1),
    halfExtents.z() * (1-((i&4)>>2)) - halfExtents.z() * ((i&4)>>2));
 }


 virtual void getPlaneEquation(btVector4& plane,int i) const
 {
  btVector3 halfExtents = getHalfExtentsWithoutMargin();

  switch (i)
  {
  case 0:
   plane.setValue(btScalar(1.),btScalar(0.),btScalar(0.),-halfExtents.x());
   break;
  case 1:
   plane.setValue(btScalar(-1.),btScalar(0.),btScalar(0.),-halfExtents.x());
   break;
  case 2:
   plane.setValue(btScalar(0.),btScalar(1.),btScalar(0.),-halfExtents.y());
   break;
  case 3:
   plane.setValue(btScalar(0.),btScalar(-1.),btScalar(0.),-halfExtents.y());
   break;
  case 4:
   plane.setValue(btScalar(0.),btScalar(0.),btScalar(1.),-halfExtents.z());
   break;
  case 5:
   plane.setValue(btScalar(0.),btScalar(0.),btScalar(-1.),-halfExtents.z());
   break;
  default:
   ;
  }
 }


 virtual void getEdge(int i,btVector3& pa,btVector3& pb) const

 {
  int edgeVert0 = 0;
  int edgeVert1 = 0;

  switch (i)
  {
  case 0:
    edgeVert0 = 0;
    edgeVert1 = 1;
   break;
  case 1:
    edgeVert0 = 0;
    edgeVert1 = 2;
   break;
  case 2:
   edgeVert0 = 1;
   edgeVert1 = 3;

   break;
  case 3:
   edgeVert0 = 2;
   edgeVert1 = 3;
   break;
  case 4:
   edgeVert0 = 0;
   edgeVert1 = 4;
   break;
  case 5:
   edgeVert0 = 1;
   edgeVert1 = 5;

   break;
  case 6:
   edgeVert0 = 2;
   edgeVert1 = 6;
   break;
  case 7:
   edgeVert0 = 3;
   edgeVert1 = 7;
   break;
  case 8:
   edgeVert0 = 4;
   edgeVert1 = 5;
   break;
  case 9:
   edgeVert0 = 4;
   edgeVert1 = 6;
   break;
  case 10:
   edgeVert0 = 5;
   edgeVert1 = 7;
   break;
  case 11:
   edgeVert0 = 6;
   edgeVert1 = 7;
   break;
  default:
   ;

  }

  getVertex(edgeVert0,pa );
  getVertex(edgeVert1,pb );
 }





 virtual bool isInside(const btVector3& pt,btScalar tolerance) const
 {
  btVector3 halfExtents = getHalfExtentsWithoutMargin();



  bool result = (pt.x() <= (halfExtents.x()+tolerance)) &&
      (pt.x() >= (-halfExtents.x()-tolerance)) &&
      (pt.y() <= (halfExtents.y()+tolerance)) &&
      (pt.y() >= (-halfExtents.y()-tolerance)) &&
      (pt.z() <= (halfExtents.z()+tolerance)) &&
      (pt.z() >= (-halfExtents.z()-tolerance));

  return result;
 }



 virtual const char* getName()const
 {
  return "Box";
 }

 virtual int getNumPreferredPenetrationDirections() const
 {
  return 6;
 }

 virtual void getPreferredPenetrationDirection(int index, btVector3& penetrationVector) const
 {
  switch (index)
  {
  case 0:
   penetrationVector.setValue(btScalar(1.),btScalar(0.),btScalar(0.));
   break;
  case 1:
   penetrationVector.setValue(btScalar(-1.),btScalar(0.),btScalar(0.));
   break;
  case 2:
   penetrationVector.setValue(btScalar(0.),btScalar(1.),btScalar(0.));
   break;
  case 3:
   penetrationVector.setValue(btScalar(0.),btScalar(-1.),btScalar(0.));
   break;
  case 4:
   penetrationVector.setValue(btScalar(0.),btScalar(0.),btScalar(1.));
   break;
  case 5:
   penetrationVector.setValue(btScalar(0.),btScalar(0.),btScalar(-1.));
   break;
  default:
   ;
  }
 }

};
# 21 "C:/bullet3-master/src/BulletCollision/CollisionShapes/btTriangleShape.h" 2

class btTriangleShape : public btPolyhedralConvexShape
{


public:

inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 btVector3 m_vertices1[3];

 virtual int getNumVertices() const
 {
  return 3;
 }

 btVector3& getVertexPtr(int index)
 {
  return m_vertices1[index];
 }

 const btVector3& getVertexPtr(int index) const
 {
  return m_vertices1[index];
 }
 virtual void getVertex(int index,btVector3& vert) const
 {
  vert = m_vertices1[index];
 }

 virtual int getNumEdges() const
 {
  return 3;
 }

 virtual void getEdge(int i,btVector3& pa,btVector3& pb) const
 {
  getVertex(i,pa);
  getVertex((i+1)%3,pb);
 }


 virtual void getAabb(const btTransform& t,btVector3& aabbMin,btVector3& aabbMax)const
 {

  getAabbSlow(t,aabbMin,aabbMax);
 }

 btVector3 localGetSupportingVertexWithoutMargin(const btVector3& dir)const
 {
        btVector3 dots = dir.dot3(m_vertices1[0], m_vertices1[1], m_vertices1[2]);
    return m_vertices1[dots.maxAxis()];

 }

 virtual void batchedUnitVectorGetSupportingVertexWithoutMargin(const btVector3* vectors,btVector3* supportVerticesOut,int numVectors) const
 {
  for (int i=0;i<numVectors;i++)
  {
   const btVector3& dir = vectors[i];
            btVector3 dots = dir.dot3(m_vertices1[0], m_vertices1[1], m_vertices1[2]);
     supportVerticesOut[i] = m_vertices1[dots.maxAxis()];
  }

 }

 btTriangleShape() : btPolyhedralConvexShape ()
    {
  m_shapeType = TRIANGLE_SHAPE_PROXYTYPE;
 }

 btTriangleShape(const btVector3& p0,const btVector3& p1,const btVector3& p2) : btPolyhedralConvexShape ()
    {
  m_shapeType = TRIANGLE_SHAPE_PROXYTYPE;
        m_vertices1[0] = p0;
        m_vertices1[1] = p1;
        m_vertices1[2] = p2;
    }


 virtual void getPlane(btVector3& planeNormal,btVector3& planeSupport,int i) const
 {
  getPlaneEquation(i,planeNormal,planeSupport);
 }

 virtual int getNumPlanes() const
 {
  return 1;
 }

 void calcNormal(btVector3& normal) const
 {
  normal = (m_vertices1[1]-m_vertices1[0]).cross(m_vertices1[2]-m_vertices1[0]);
  normal.normalize();
 }

 virtual void getPlaneEquation(int i, btVector3& planeNormal,btVector3& planeSupport) const
 {
  (void)i;
  calcNormal(planeNormal);
  planeSupport = m_vertices1[0];
 }

 virtual void calculateLocalInertia(btScalar mass,btVector3& inertia) const
 {
  (void)mass;
  ;
  inertia.setValue(btScalar(0.),btScalar(0.),btScalar(0.));
 }

  virtual bool isInside(const btVector3& pt,btScalar tolerance) const
 {
  btVector3 normal;
  calcNormal(normal);

  btScalar dist = pt.dot(normal);
  btScalar planeconst = m_vertices1[0].dot(normal);
  dist -= planeconst;
  if (dist >= -tolerance && dist <= tolerance)
  {

   int i;
   for (i=0;i<3;i++)
   {
    btVector3 pa,pb;
    getEdge(i,pa,pb);
    btVector3 edge = pb-pa;
    btVector3 edgeNormal = edge.cross(normal);
    edgeNormal.normalize();
    btScalar dist = pt.dot( edgeNormal);
    btScalar edgeConst = pa.dot(edgeNormal);
    dist -= edgeConst;
    if (dist < -tolerance)
     return false;
   }

   return true;
  }

  return false;
 }

  virtual const char* getName()const
  {
   return "Triangle";
  }

  virtual int getNumPreferredPenetrationDirections() const
  {
   return 2;
  }

  virtual void getPreferredPenetrationDirection(int index, btVector3& penetrationVector) const
  {
   calcNormal(penetrationVector);
   if (index)
    penetrationVector *= btScalar(-1.);
  }


};
# 6 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionDispatch/btCollisionObject.h" 1
# 28 "C:/bullet3-master/src/BulletCollision/CollisionDispatch/btCollisionObject.h"
struct btBroadphaseProxy;
class btCollisionShape;
struct btCollisionShapeData;
# 1 "C:/bullet3-master/src/LinearMath/btMotionState.h" 1
# 23 "C:/bullet3-master/src/LinearMath/btMotionState.h"
class btMotionState
{
 public:

  virtual ~btMotionState()
  {

  }

  virtual void getWorldTransform(btTransform& worldTrans ) const =0;


  virtual void setWorldTransform(const btTransform& worldTrans)=0;


};
# 32 "C:/bullet3-master/src/BulletCollision/CollisionDispatch/btCollisionObject.h" 2



typedef btAlignedObjectArray<class btCollisionObject*> btCollisionObjectArray;
# 49 "C:/bullet3-master/src/BulletCollision/CollisionDispatch/btCollisionObject.h"
class btCollisionObject
{

protected:

 btTransform m_worldTransform;



 btTransform m_interpolationWorldTransform;


 btVector3 m_interpolationLinearVelocity;
 btVector3 m_interpolationAngularVelocity;

 btVector3 m_anisotropicFriction;
 int m_hasAnisotropicFriction;
 btScalar m_contactProcessingThreshold;

 btBroadphaseProxy* m_broadphaseHandle;
 btCollisionShape* m_collisionShape;

 void* m_extensionPointer;




 btCollisionShape* m_rootCollisionShape;

 int m_collisionFlags;

 int m_islandTag1;
 int m_companionId;

 mutable int m_activationState1;
 mutable btScalar m_deactivationTime;

 btScalar m_friction;
 btScalar m_restitution;
 btScalar m_rollingFriction;



 int m_internalType;



    void* m_userObjectPointer;

    int m_userIndex;


 btScalar m_hitFraction;


 btScalar m_ccdSweptSphereRadius;


 btScalar m_ccdMotionThreshold;


 int m_checkCollideWith;

 btAlignedObjectArray<const btCollisionObject*> m_objectsWithoutCollisionCheck;


 int m_updateRevision;


public:

 inline void* operator new(size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete(void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new(size_t, void* ptr) { return ptr; } inline void operator delete(void*, void*) { } inline void* operator new[](size_t sizeInBytes) { return btAlignedAllocInternal(sizeInBytes,16); } inline void operator delete[](void* ptr) { btAlignedFreeInternal(ptr); } inline void* operator new[](size_t, void* ptr) { return ptr; } inline void operator delete[](void*, void*) { };

 enum CollisionFlags
 {
  CF_STATIC_OBJECT= 1,
  CF_KINEMATIC_OBJECT= 2,
  CF_NO_CONTACT_RESPONSE = 4,
  CF_CUSTOM_MATERIAL_CALLBACK = 8,
  CF_CHARACTER_OBJECT = 16,
  CF_DISABLE_VISUALIZE_OBJECT = 32,
  CF_DISABLE_SPU_COLLISION_PROCESSING = 64
 };

 enum CollisionObjectTypes
 {
  CO_COLLISION_OBJECT =1,
  CO_RIGID_BODY=2,


  CO_GHOST_OBJECT=4,
  CO_SOFT_BODY=8,
  CO_HF_FLUID=16,
  CO_USER_TYPE=32,
  CO_FEATHERSTONE_LINK=64
 };

 enum AnisotropicFrictionFlags
 {
  CF_ANISOTROPIC_FRICTION_DISABLED=0,
  CF_ANISOTROPIC_FRICTION = 1,
  CF_ANISOTROPIC_ROLLING_FRICTION = 2
 };

 inline bool mergesSimulationIslands() const
 {

  return ((m_collisionFlags & (CF_STATIC_OBJECT | CF_KINEMATIC_OBJECT | CF_NO_CONTACT_RESPONSE) )==0);
 }

 const btVector3& getAnisotropicFriction() const
 {
  return m_anisotropicFriction;
 }
 void setAnisotropicFriction(const btVector3& anisotropicFriction, int frictionMode = CF_ANISOTROPIC_FRICTION)
 {
  m_anisotropicFriction = anisotropicFriction;
  bool isUnity = (anisotropicFriction[0]!=1.f) || (anisotropicFriction[1]!=1.f) || (anisotropicFriction[2]!=1.f);
  m_hasAnisotropicFriction = isUnity?frictionMode : 0;
 }
 bool hasAnisotropicFriction(int frictionMode = CF_ANISOTROPIC_FRICTION) const
 {
  return (m_hasAnisotropicFriction&frictionMode)!=0;
 }



 void setContactProcessingThreshold( btScalar contactProcessingThreshold)
 {
  m_contactProcessingThreshold = contactProcessingThreshold;
 }
 btScalar getContactProcessingThreshold() const
 {
  return m_contactProcessingThreshold;
 }

 inline bool isStaticObject() const {
  return (m_collisionFlags & CF_STATIC_OBJECT) != 0;
 }

 inline bool isKinematicObject() const
 {
  return (m_collisionFlags & CF_KINEMATIC_OBJECT) != 0;
 }

 inline bool isStaticOrKinematicObject() const
 {
  return (m_collisionFlags & (CF_KINEMATIC_OBJECT | CF_STATIC_OBJECT)) != 0 ;
 }

 inline bool hasContactResponse() const {
  return (m_collisionFlags & CF_NO_CONTACT_RESPONSE)==0;
 }


 btCollisionObject();

 virtual ~btCollisionObject();

 virtual void setCollisionShape(btCollisionShape* collisionShape)
 {
  m_updateRevision++;
  m_collisionShape = collisionShape;
  m_rootCollisionShape = collisionShape;
 }

 inline const btCollisionShape* getCollisionShape() const
 {
  return m_collisionShape;
 }

 inline btCollisionShape* getCollisionShape()
 {
  return m_collisionShape;
 }

 void setIgnoreCollisionCheck(const btCollisionObject* co, bool ignoreCollisionCheck)
 {
  if (ignoreCollisionCheck)
  {




   m_objectsWithoutCollisionCheck.push_back(co);

  }
  else
  {
   m_objectsWithoutCollisionCheck.remove(co);
  }
  m_checkCollideWith = m_objectsWithoutCollisionCheck.size() > 0;
 }

 virtual bool checkCollideWithOverride(const btCollisionObject* co) const
 {
  int index = m_objectsWithoutCollisionCheck.findLinearSearch(co);
  if (index < m_objectsWithoutCollisionCheck.size())
  {
   return false;
  }
  return true;
 }






 void* internalGetExtensionPointer() const
 {
  return m_extensionPointer;
 }


 void internalSetExtensionPointer(void* pointer)
 {
  m_extensionPointer = pointer;
 }

 inline int getActivationState() const { return m_activationState1;}

 void setActivationState(int newState) const;

 void setDeactivationTime(btScalar time)
 {
  m_deactivationTime = time;
 }
 btScalar getDeactivationTime() const
 {
  return m_deactivationTime;
 }

 void forceActivationState(int newState) const;

 void activate(bool forceActivation = false) const;

 inline bool isActive() const
 {
  return ((getActivationState() != 2) && (getActivationState() != 5));
 }

 void setRestitution(btScalar rest)
 {
  m_updateRevision++;
  m_restitution = rest;
 }
 btScalar getRestitution() const
 {
  return m_restitution;
 }
 void setFriction(btScalar frict)
 {
  m_updateRevision++;
  m_friction = frict;
 }
 btScalar getFriction() const
 {
  return m_friction;
 }

 void setRollingFriction(btScalar frict)
 {
  m_updateRevision++;
  m_rollingFriction = frict;
 }
 btScalar getRollingFriction() const
 {
  return m_rollingFriction;
 }



 int getInternalType() const
 {
  return m_internalType;
 }

 btTransform& getWorldTransform()
 {
  return m_worldTransform;
 }

 const btTransform& getWorldTransform() const
 {
  return m_worldTransform;
 }

 void setWorldTransform(const btTransform& worldTrans)
 {
  m_updateRevision++;
  m_worldTransform = worldTrans;
 }


 inline btBroadphaseProxy* getBroadphaseHandle()
 {
  return m_broadphaseHandle;
 }

 inline const btBroadphaseProxy* getBroadphaseHandle() const
 {
  return m_broadphaseHandle;
 }

 void setBroadphaseHandle(btBroadphaseProxy* handle)
 {
  m_broadphaseHandle = handle;
 }


 const btTransform& getInterpolationWorldTransform() const
 {
  return m_interpolationWorldTransform;
 }

 btTransform& getInterpolationWorldTransform()
 {
  return m_interpolationWorldTransform;
 }

 void setInterpolationWorldTransform(const btTransform& trans)
 {
  m_updateRevision++;
  m_interpolationWorldTransform = trans;
 }

 void setInterpolationLinearVelocity(const btVector3& linvel)
 {
  m_updateRevision++;
  m_interpolationLinearVelocity = linvel;
 }

 void setInterpolationAngularVelocity(const btVector3& angvel)
 {
  m_updateRevision++;
  m_interpolationAngularVelocity = angvel;
 }

 const btVector3& getInterpolationLinearVelocity() const
 {
  return m_interpolationLinearVelocity;
 }

 const btVector3& getInterpolationAngularVelocity() const
 {
  return m_interpolationAngularVelocity;
 }

 inline int getIslandTag() const
 {
  return m_islandTag1;
 }

 void setIslandTag(int tag)
 {
  m_islandTag1 = tag;
 }

 inline int getCompanionId() const
 {
  return m_companionId;
 }

 void setCompanionId(int id)
 {
  m_companionId = id;
 }

 inline btScalar getHitFraction() const
 {
  return m_hitFraction;
 }

 void setHitFraction(btScalar hitFraction)
 {
  m_hitFraction = hitFraction;
 }


 inline int getCollisionFlags() const
 {
  return m_collisionFlags;
 }

 void setCollisionFlags(int flags)
 {
  m_collisionFlags = flags;
 }


 btScalar getCcdSweptSphereRadius() const
 {
  return m_ccdSweptSphereRadius;
 }


 void setCcdSweptSphereRadius(btScalar radius)
 {
  m_ccdSweptSphereRadius = radius;
 }

 btScalar getCcdMotionThreshold() const
 {
  return m_ccdMotionThreshold;
 }

 btScalar getCcdSquareMotionThreshold() const
 {
  return m_ccdMotionThreshold*m_ccdMotionThreshold;
 }




 void setCcdMotionThreshold(btScalar ccdMotionThreshold)
 {
  m_ccdMotionThreshold = ccdMotionThreshold;
 }


 void* getUserPointer() const
 {
  return m_userObjectPointer;
 }

 int getUserIndex() const
 {
  return m_userIndex;
 }

 void setUserPointer(void* userPointer)
 {
  m_userObjectPointer = userPointer;
 }


 void setUserIndex(int index)
 {
  m_userIndex = index;
 }

 int getUpdateRevisionInternal() const
 {
  return m_updateRevision;
 }


 inline bool checkCollideWith(const btCollisionObject* co) const
 {
  if (m_checkCollideWith)
   return checkCollideWithOverride(co);

  return true;
 }

 virtual int calculateSerializeBufferSize() const;


 virtual const char* serialize(void* dataBuffer, class btSerializer* serializer) const;

 virtual void serializeSingleObject(class btSerializer* serializer) const;

};


struct btCollisionObjectDoubleData
{
 void *m_broadphaseHandle;
 void *m_collisionShape;
 btCollisionShapeData *m_rootCollisionShape;
 char *m_name;

 btTransformDoubleData m_worldTransform;
 btTransformDoubleData m_interpolationWorldTransform;
 btVector3DoubleData m_interpolationLinearVelocity;
 btVector3DoubleData m_interpolationAngularVelocity;
 btVector3DoubleData m_anisotropicFriction;
 double m_contactProcessingThreshold;
 double m_deactivationTime;
 double m_friction;
 double m_rollingFriction;
 double m_restitution;
 double m_hitFraction;
 double m_ccdSweptSphereRadius;
 double m_ccdMotionThreshold;

 int m_hasAnisotropicFriction;
 int m_collisionFlags;
 int m_islandTag1;
 int m_companionId;
 int m_activationState1;
 int m_internalType;
 int m_checkCollideWith;

 char m_padding[4];
};


struct btCollisionObjectFloatData
{
 void *m_broadphaseHandle;
 void *m_collisionShape;
 btCollisionShapeData *m_rootCollisionShape;
 char *m_name;

 btTransformFloatData m_worldTransform;
 btTransformFloatData m_interpolationWorldTransform;
 btVector3FloatData m_interpolationLinearVelocity;
 btVector3FloatData m_interpolationAngularVelocity;
 btVector3FloatData m_anisotropicFriction;
 float m_contactProcessingThreshold;
 float m_deactivationTime;
 float m_friction;
 float m_rollingFriction;

 float m_restitution;
 float m_hitFraction;
 float m_ccdSweptSphereRadius;
 float m_ccdMotionThreshold;

 int m_hasAnisotropicFriction;
 int m_collisionFlags;
 int m_islandTag1;
 int m_companionId;
 int m_activationState1;
 int m_internalType;
 int m_checkCollideWith;
 char m_padding[4];
};



inline int btCollisionObject::calculateSerializeBufferSize() const
{
 return sizeof(btCollisionObjectFloatData);
}
# 7 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h" 1
# 20 "C:/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h"
# 1 "C:/bullet3-master/src/LinearMath/btTransformUtil.h" 1
# 25 "C:/bullet3-master/src/LinearMath/btTransformUtil.h"
inline btVector3 btAabbSupport(const btVector3& halfExtents,const btVector3& supportDir)
{
 return btVector3(supportDir.x() < btScalar(0.0) ? -halfExtents.x() : halfExtents.x(),
      supportDir.y() < btScalar(0.0) ? -halfExtents.y() : halfExtents.y(),
      supportDir.z() < btScalar(0.0) ? -halfExtents.z() : halfExtents.z());
}







class btTransformUtil
{

public:

 static void integrateTransform(const btTransform& curTrans,const btVector3& linvel,const btVector3& angvel,btScalar timeStep,btTransform& predictedTransform)
 {
  predictedTransform.setOrigin(curTrans.getOrigin() + linvel * timeStep);
# 55 "C:/bullet3-master/src/LinearMath/btTransformUtil.h"
  btVector3 axis;
  btScalar fAngle = angvel.length();

  if (fAngle*timeStep > btScalar(0.5)*(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)))
  {
   fAngle = btScalar(0.5)*(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)) / timeStep;
  }

  if ( fAngle < btScalar(0.001) )
  {

   axis = angvel*( btScalar(0.5)*timeStep-(timeStep*timeStep*timeStep)*(btScalar(0.020833333333))*fAngle*fAngle );
  }
  else
  {

   axis = angvel*( btSin(btScalar(0.5)*fAngle*timeStep)/fAngle );
  }
  btQuaternion dorn (axis.x(),axis.y(),axis.z(),btCos( fAngle*timeStep*btScalar(0.5) ));
  btQuaternion orn0 = curTrans.getRotation();

  btQuaternion predictedOrn = dorn * orn0;
  predictedOrn.normalize();

  predictedTransform.setRotation(predictedOrn);
 }

 static void calculateVelocityQuaternion(const btVector3& pos0,const btVector3& pos1,const btQuaternion& orn0,const btQuaternion& orn1,btScalar timeStep,btVector3& linVel,btVector3& angVel)
 {
  linVel = (pos1 - pos0) / timeStep;
  btVector3 axis;
  btScalar angle;
  if (orn0 != orn1)
  {
   calculateDiffAxisAngleQuaternion(orn0,orn1,axis,angle);
   angVel = axis * angle / timeStep;
  } else
  {
   angVel.setValue(0,0,0);
  }
 }

 static void calculateDiffAxisAngleQuaternion(const btQuaternion& orn0,const btQuaternion& orn1a,btVector3& axis,btScalar& angle)
 {
  btQuaternion orn1 = orn0.nearest(orn1a);
  btQuaternion dorn = orn1 * orn0.inverse();
  angle = dorn.getAngle();
  axis = btVector3(dorn.x(),dorn.y(),dorn.z());
  axis[3] = btScalar(0.);

  btScalar len = axis.length2();
  if (len < 1.19209289550781250000e-7F*1.19209289550781250000e-7F)
   axis = btVector3(btScalar(1.),btScalar(0.),btScalar(0.));
  else
   axis /= btSqrt(len);
 }

 static void calculateVelocity(const btTransform& transform0,const btTransform& transform1,btScalar timeStep,btVector3& linVel,btVector3& angVel)
 {
  linVel = (transform1.getOrigin() - transform0.getOrigin()) / timeStep;
  btVector3 axis;
  btScalar angle;
  calculateDiffAxisAngle(transform0,transform1,axis,angle);
  angVel = axis * angle / timeStep;
 }

 static void calculateDiffAxisAngle(const btTransform& transform0,const btTransform& transform1,btVector3& axis,btScalar& angle)
 {
  btMatrix3x3 dmat = transform1.getBasis() * transform0.getBasis().inverse();
  btQuaternion dorn;
  dmat.getRotation(dorn);


  dorn.normalize();

  angle = dorn.getAngle();
  axis = btVector3(dorn.x(),dorn.y(),dorn.z());
  axis[3] = btScalar(0.);

  btScalar len = axis.length2();
  if (len < 1.19209289550781250000e-7F*1.19209289550781250000e-7F)
   axis = btVector3(btScalar(1.),btScalar(0.),btScalar(0.));
  else
   axis /= btSqrt(len);
 }

};




class btConvexSeparatingDistanceUtil
{
 btQuaternion m_ornA;
 btQuaternion m_ornB;
 btVector3 m_posA;
 btVector3 m_posB;

 btVector3 m_separatingNormal;

 btScalar m_boundingRadiusA;
 btScalar m_boundingRadiusB;
 btScalar m_separatingDistance;

public:

 btConvexSeparatingDistanceUtil(btScalar boundingRadiusA,btScalar boundingRadiusB)
  :m_boundingRadiusA(boundingRadiusA),
  m_boundingRadiusB(boundingRadiusB),
  m_separatingDistance(0.f)
 {
 }

 btScalar getConservativeSeparatingDistance()
 {
  return m_separatingDistance;
 }

 void updateSeparatingDistance(const btTransform& transA,const btTransform& transB)
 {
  const btVector3& toPosA = transA.getOrigin();
  const btVector3& toPosB = transB.getOrigin();
  btQuaternion toOrnA = transA.getRotation();
  btQuaternion toOrnB = transB.getRotation();

  if (m_separatingDistance>0.f)
  {


   btVector3 linVelA,angVelA,linVelB,angVelB;
   btTransformUtil::calculateVelocityQuaternion(m_posA,toPosA,m_ornA,toOrnA,btScalar(1.),linVelA,angVelA);
   btTransformUtil::calculateVelocityQuaternion(m_posB,toPosB,m_ornB,toOrnB,btScalar(1.),linVelB,angVelB);
   btScalar maxAngularProjectedVelocity = angVelA.length() * m_boundingRadiusA + angVelB.length() * m_boundingRadiusB;
   btVector3 relLinVel = (linVelB-linVelA);
   btScalar relLinVelocLength = relLinVel.dot(m_separatingNormal);
   if (relLinVelocLength<0.f)
   {
    relLinVelocLength = 0.f;
   }

   btScalar projectedMotion = maxAngularProjectedVelocity +relLinVelocLength;
   m_separatingDistance -= projectedMotion;
  }

  m_posA = toPosA;
  m_posB = toPosB;
  m_ornA = toOrnA;
  m_ornB = toOrnB;
 }

 void initSeparatingDistance(const btVector3& separatingVector,btScalar separatingDistance,const btTransform& transA,const btTransform& transB)
 {
  m_separatingDistance = separatingDistance;

  if (m_separatingDistance>0.f)
  {
   m_separatingNormal = separatingVector;

   const btVector3& toPosA = transA.getOrigin();
   const btVector3& toPosB = transB.getOrigin();
   btQuaternion toOrnA = transA.getRotation();
   btQuaternion toOrnB = transB.getRotation();
   m_posA = toPosA;
   m_posB = toPosB;
   m_ornA = toOrnA;
   m_ornB = toOrnB;
  }
 }

};
# 21 "C:/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h" 2






 struct btConstraintRow {
  btScalar m_normal[3];
  btScalar m_rhs;
  btScalar m_jacDiagInv;
  btScalar m_lowerLimit;
  btScalar m_upperLimit;
  btScalar m_accumImpulse;
 };
 typedef btConstraintRow PfxConstraintRow;






class btManifoldPoint
 {
  public:
   btManifoldPoint()
    :m_userPersistentData(0),
    m_lateralFrictionInitialized(false),
                m_appliedImpulse(0.f),
                m_appliedImpulseLateral1(0.f),
    m_appliedImpulseLateral2(0.f),
    m_contactMotion1(0.f),
    m_contactMotion2(0.f),
    m_contactCFM1(0.f),
    m_contactCFM2(0.f),
    m_lifeTime(0)
   {
   }

   btManifoldPoint( const btVector3 &pointA, const btVector3 &pointB,
     const btVector3 &normal,
     btScalar distance ) :
     m_localPointA( pointA ),
     m_localPointB( pointB ),
     m_normalWorldOnB( normal ),
     m_distance1( distance ),
     m_combinedFriction(btScalar(0.)),
     m_combinedRollingFriction(btScalar(0.)),
     m_combinedRestitution(btScalar(0.)),
     m_userPersistentData(0),
     m_lateralFrictionInitialized(false),
                    m_appliedImpulse(0.f),
                    m_appliedImpulseLateral1(0.f),
     m_appliedImpulseLateral2(0.f),
     m_contactMotion1(0.f),
     m_contactMotion2(0.f),
     m_contactCFM1(0.f),
     m_contactCFM2(0.f),
     m_lifeTime(0)
   {

   }



   btVector3 m_localPointA;
   btVector3 m_localPointB;
   btVector3 m_positionWorldOnB;

   btVector3 m_positionWorldOnA;
   btVector3 m_normalWorldOnB;

   btScalar m_distance1;
   btScalar m_combinedFriction;
   btScalar m_combinedRollingFriction;
   btScalar m_combinedRestitution;


   int m_partId0;
   int m_partId1;
   int m_index0;
   int m_index1;

   mutable void* m_userPersistentData;
   bool m_lateralFrictionInitialized;

   btScalar m_appliedImpulse;
   btScalar m_appliedImpulseLateral1;
   btScalar m_appliedImpulseLateral2;
   btScalar m_contactMotion1;
   btScalar m_contactMotion2;
   btScalar m_contactCFM1;
   btScalar m_contactCFM2;

   int m_lifeTime;

   btVector3 m_lateralFrictionDir1;
   btVector3 m_lateralFrictionDir2;




   btScalar getDistance() const
   {
    return m_distance1;
   }
   int getLifeTime() const
   {
    return m_lifeTime;
   }

   const btVector3& getPositionWorldOnA() const {
    return m_positionWorldOnA;

   }

   const btVector3& getPositionWorldOnB() const
   {
    return m_positionWorldOnB;
   }

   void setDistance(btScalar dist)
   {
    m_distance1 = dist;
   }


   btScalar getAppliedImpulse() const
   {
    return m_appliedImpulse;
   }



 };
# 8 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/LinearMath/btIDebugDraw.h" 1
# 28 "C:/bullet3-master/src/LinearMath/btIDebugDraw.h"
class btIDebugDraw
{
 public:

 enum DebugDrawModes
 {
  DBG_NoDebug=0,
  DBG_DrawWireframe = 1,
  DBG_DrawAabb=2,
  DBG_DrawFeaturesText=4,
  DBG_DrawContactPoints=8,
  DBG_NoDeactivation=16,
  DBG_NoHelpText = 32,
  DBG_DrawText=64,
  DBG_ProfileTimings = 128,
  DBG_EnableSatComparison = 256,
  DBG_DisableBulletLCP = 512,
  DBG_EnableCCD = 1024,
  DBG_DrawConstraints = (1 << 11),
  DBG_DrawConstraintLimits = (1 << 12),
  DBG_FastWireframe = (1<<13),
  DBG_DrawNormals = (1<<14),
  DBG_DrawFrames = (1<<15),
  DBG_MAX_DEBUG_DRAW_MODE
 };

 virtual ~btIDebugDraw() {};

 virtual void drawLine(const btVector3& from,const btVector3& to,const btVector3& color)=0;

 virtual void drawLine(const btVector3& from,const btVector3& to, const btVector3& fromColor, const btVector3& toColor)
 {
        (void) toColor;
  drawLine (from, to, fromColor);
 }

 virtual void drawSphere(btScalar radius, const btTransform& transform, const btVector3& color)
 {

  btVector3 center = transform.getOrigin();
  btVector3 up = transform.getBasis().getColumn(1);
  btVector3 axis = transform.getBasis().getColumn(0);
  btScalar minTh = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
  btScalar maxTh = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
  btScalar minPs = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
  btScalar maxPs = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
  btScalar stepDegrees = 30.f;
  drawSpherePatch(center, up, axis, radius,minTh, maxTh, minPs, maxPs, color, stepDegrees ,false);
  drawSpherePatch(center, up, -axis, radius,minTh, maxTh, minPs, maxPs, color, stepDegrees,false );
 }

 virtual void drawSphere (const btVector3& p, btScalar radius, const btVector3& color)
 {
  btTransform tr;
  tr.setIdentity();
  tr.setOrigin(p);
  drawSphere(radius,tr,color);
 }

 virtual void drawTriangle(const btVector3& v0,const btVector3& v1,const btVector3& v2,const btVector3& ,const btVector3& ,const btVector3& ,const btVector3& color, btScalar alpha)
 {
  drawTriangle(v0,v1,v2,color,alpha);
 }
 virtual void drawTriangle(const btVector3& v0,const btVector3& v1,const btVector3& v2,const btVector3& color, btScalar )
 {
  drawLine(v0,v1,color);
  drawLine(v1,v2,color);
  drawLine(v2,v0,color);
 }

 virtual void drawContactPoint(const btVector3& PointOnB,const btVector3& normalOnB,btScalar distance,int lifeTime,const btVector3& color)=0;

 virtual void reportErrorWarning(const char* warningString) = 0;

 virtual void draw3dText(const btVector3& location,const char* textString) = 0;

 virtual void setDebugMode(int debugMode) =0;

 virtual int getDebugMode() const = 0;

 virtual void drawAabb(const btVector3& from,const btVector3& to,const btVector3& color)
 {

  btVector3 halfExtents = (to-from)* 0.5f;
  btVector3 center = (to+from) *0.5f;
  int i,j;

  btVector3 edgecoord(1.f,1.f,1.f),pa,pb;
  for (i=0;i<4;i++)
  {
   for (j=0;j<3;j++)
   {
    pa = btVector3(edgecoord[0]*halfExtents[0], edgecoord[1]*halfExtents[1],
     edgecoord[2]*halfExtents[2]);
    pa+=center;

    int othercoord = j%3;
    edgecoord[othercoord]*=-1.f;
    pb = btVector3(edgecoord[0]*halfExtents[0], edgecoord[1]*halfExtents[1],
     edgecoord[2]*halfExtents[2]);
    pb+=center;

    drawLine(pa,pb,color);
   }
   edgecoord = btVector3(-1.f,-1.f,-1.f);
   if (i<3)
    edgecoord[i]*=-1.f;
  }
 }
 virtual void drawTransform(const btTransform& transform, btScalar orthoLen)
 {
  btVector3 start = transform.getOrigin();
  drawLine(start, start+transform.getBasis() * btVector3(orthoLen, 0, 0), btVector3(0.7f,0,0));
  drawLine(start, start+transform.getBasis() * btVector3(0, orthoLen, 0), btVector3(0,0.7f,0));
  drawLine(start, start+transform.getBasis() * btVector3(0, 0, orthoLen), btVector3(0,0,0.7f));
 }

 virtual void drawArc(const btVector3& center, const btVector3& normal, const btVector3& axis, btScalar radiusA, btScalar radiusB, btScalar minAngle, btScalar maxAngle,
    const btVector3& color, bool drawSect, btScalar stepDegrees = btScalar(10.f))
 {
  const btVector3& vx = axis;
  btVector3 vy = normal.cross(axis);
  btScalar step = stepDegrees * ((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0));
  int nSteps = (int)btFabs((maxAngle - minAngle) / step);
  if(!nSteps) nSteps = 1;
  btVector3 prev = center + radiusA * vx * btCos(minAngle) + radiusB * vy * btSin(minAngle);
  if(drawSect)
  {
   drawLine(center, prev, color);
  }
  for(int i = 1; i <= nSteps; i++)
  {
   btScalar angle = minAngle + (maxAngle - minAngle) * btScalar(i) / btScalar(nSteps);
   btVector3 next = center + radiusA * vx * btCos(angle) + radiusB * vy * btSin(angle);
   drawLine(prev, next, color);
   prev = next;
  }
  if(drawSect)
  {
   drawLine(center, prev, color);
  }
 }
 virtual void drawSpherePatch(const btVector3& center, const btVector3& up, const btVector3& axis, btScalar radius,
  btScalar minTh, btScalar maxTh, btScalar minPs, btScalar maxPs, const btVector3& color, btScalar stepDegrees = btScalar(10.f),bool drawCenter = true)
 {
  btVector3 vA[74];
  btVector3 vB[74];
  btVector3 *pvA = vA, *pvB = vB, *pT;
  btVector3 npole = center + up * radius;
  btVector3 spole = center - up * radius;
  btVector3 arcStart;
  btScalar step = stepDegrees * ((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0));
  const btVector3& kv = up;
  const btVector3& iv = axis;
  btVector3 jv = kv.cross(iv);
  bool drawN = false;
  bool drawS = false;
  if(minTh <= -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)))
  {
   minTh = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)) + step;
   drawN = true;
  }
  if(maxTh >= (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)))
  {
   maxTh = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)) - step;
   drawS = true;
  }
  if(minTh > maxTh)
  {
   minTh = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)) + step;
   maxTh = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5)) - step;
   drawN = drawS = true;
  }
  int n_hor = (int)((maxTh - minTh) / step) + 1;
  if(n_hor < 2) n_hor = 2;
  btScalar step_h = (maxTh - minTh) / btScalar(n_hor - 1);
  bool isClosed = false;
  if(minPs > maxPs)
  {
   minPs = -btScalar(3.1415926535897932384626433832795029) + step;
   maxPs = btScalar(3.1415926535897932384626433832795029);
   isClosed = true;
  }
  else if((maxPs - minPs) >= btScalar(3.1415926535897932384626433832795029) * btScalar(2.f))
  {
   isClosed = true;
  }
  else
  {
   isClosed = false;
  }
  int n_vert = (int)((maxPs - minPs) / step) + 1;
  if(n_vert < 2) n_vert = 2;
  btScalar step_v = (maxPs - minPs) / btScalar(n_vert - 1);
  for(int i = 0; i < n_hor; i++)
  {
   btScalar th = minTh + btScalar(i) * step_h;
   btScalar sth = radius * btSin(th);
   btScalar cth = radius * btCos(th);
   for(int j = 0; j < n_vert; j++)
   {
    btScalar psi = minPs + btScalar(j) * step_v;
    btScalar sps = btSin(psi);
    btScalar cps = btCos(psi);
    pvB[j] = center + cth * cps * iv + cth * sps * jv + sth * kv;
    if(i)
    {
     drawLine(pvA[j], pvB[j], color);
    }
    else if(drawS)
    {
     drawLine(spole, pvB[j], color);
    }
    if(j)
    {
     drawLine(pvB[j-1], pvB[j], color);
    }
    else
    {
     arcStart = pvB[j];
    }
    if((i == (n_hor - 1)) && drawN)
    {
     drawLine(npole, pvB[j], color);
    }

    if (drawCenter)
    {
     if(isClosed)
     {
      if(j == (n_vert-1))
      {
       drawLine(arcStart, pvB[j], color);
      }
     }
     else
     {
      if(((!i) || (i == (n_hor-1))) && ((!j) || (j == (n_vert-1))))
      {
       drawLine(center, pvB[j], color);
      }
     }
    }
   }
   pT = pvA; pvA = pvB; pvB = pT;
  }
 }


 virtual void drawBox(const btVector3& bbMin, const btVector3& bbMax, const btVector3& color)
 {
  drawLine(btVector3(bbMin[0], bbMin[1], bbMin[2]), btVector3(bbMax[0], bbMin[1], bbMin[2]), color);
  drawLine(btVector3(bbMax[0], bbMin[1], bbMin[2]), btVector3(bbMax[0], bbMax[1], bbMin[2]), color);
  drawLine(btVector3(bbMax[0], bbMax[1], bbMin[2]), btVector3(bbMin[0], bbMax[1], bbMin[2]), color);
  drawLine(btVector3(bbMin[0], bbMax[1], bbMin[2]), btVector3(bbMin[0], bbMin[1], bbMin[2]), color);
  drawLine(btVector3(bbMin[0], bbMin[1], bbMin[2]), btVector3(bbMin[0], bbMin[1], bbMax[2]), color);
  drawLine(btVector3(bbMax[0], bbMin[1], bbMin[2]), btVector3(bbMax[0], bbMin[1], bbMax[2]), color);
  drawLine(btVector3(bbMax[0], bbMax[1], bbMin[2]), btVector3(bbMax[0], bbMax[1], bbMax[2]), color);
  drawLine(btVector3(bbMin[0], bbMax[1], bbMin[2]), btVector3(bbMin[0], bbMax[1], bbMax[2]), color);
  drawLine(btVector3(bbMin[0], bbMin[1], bbMax[2]), btVector3(bbMax[0], bbMin[1], bbMax[2]), color);
  drawLine(btVector3(bbMax[0], bbMin[1], bbMax[2]), btVector3(bbMax[0], bbMax[1], bbMax[2]), color);
  drawLine(btVector3(bbMax[0], bbMax[1], bbMax[2]), btVector3(bbMin[0], bbMax[1], bbMax[2]), color);
  drawLine(btVector3(bbMin[0], bbMax[1], bbMax[2]), btVector3(bbMin[0], bbMin[1], bbMax[2]), color);
 }
 virtual void drawBox(const btVector3& bbMin, const btVector3& bbMax, const btTransform& trans, const btVector3& color)
 {
  drawLine(trans * btVector3(bbMin[0], bbMin[1], bbMin[2]), trans * btVector3(bbMax[0], bbMin[1], bbMin[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMin[1], bbMin[2]), trans * btVector3(bbMax[0], bbMax[1], bbMin[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMax[1], bbMin[2]), trans * btVector3(bbMin[0], bbMax[1], bbMin[2]), color);
  drawLine(trans * btVector3(bbMin[0], bbMax[1], bbMin[2]), trans * btVector3(bbMin[0], bbMin[1], bbMin[2]), color);
  drawLine(trans * btVector3(bbMin[0], bbMin[1], bbMin[2]), trans * btVector3(bbMin[0], bbMin[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMin[1], bbMin[2]), trans * btVector3(bbMax[0], bbMin[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMax[1], bbMin[2]), trans * btVector3(bbMax[0], bbMax[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMin[0], bbMax[1], bbMin[2]), trans * btVector3(bbMin[0], bbMax[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMin[0], bbMin[1], bbMax[2]), trans * btVector3(bbMax[0], bbMin[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMin[1], bbMax[2]), trans * btVector3(bbMax[0], bbMax[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMax[0], bbMax[1], bbMax[2]), trans * btVector3(bbMin[0], bbMax[1], bbMax[2]), color);
  drawLine(trans * btVector3(bbMin[0], bbMax[1], bbMax[2]), trans * btVector3(bbMin[0], bbMin[1], bbMax[2]), color);
 }

 virtual void drawCapsule(btScalar radius, btScalar halfHeight, int upAxis, const btTransform& transform, const btVector3& color)
 {
  int stepDegrees = 30;

  btVector3 capStart(0.f,0.f,0.f);
  capStart[upAxis] = -halfHeight;

  btVector3 capEnd(0.f,0.f,0.f);
  capEnd[upAxis] = halfHeight;


  {

   btTransform childTransform = transform;
   childTransform.getOrigin() = transform * capStart;
   {
    btVector3 center = childTransform.getOrigin();
    btVector3 up = childTransform.getBasis().getColumn((upAxis+1)%3);
    btVector3 axis = -childTransform.getBasis().getColumn(upAxis);
    btScalar minTh = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar maxTh = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar minPs = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar maxPs = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));

    drawSpherePatch(center, up, axis, radius,minTh, maxTh, minPs, maxPs, color, btScalar(stepDegrees) ,false);
   }



  }

  {
   btTransform childTransform = transform;
   childTransform.getOrigin() = transform * capEnd;
   {
    btVector3 center = childTransform.getOrigin();
    btVector3 up = childTransform.getBasis().getColumn((upAxis+1)%3);
    btVector3 axis = childTransform.getBasis().getColumn(upAxis);
    btScalar minTh = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar maxTh = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar minPs = -(btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    btScalar maxPs = (btScalar(3.1415926535897932384626433832795029) * btScalar(0.5));
    drawSpherePatch(center, up, axis, radius,minTh, maxTh, minPs, maxPs, color, btScalar(stepDegrees) ,false);
   }
  }


  btVector3 start = transform.getOrigin();

  for (int i=0;i<360;i+=stepDegrees)
  {
   capEnd[(upAxis+1)%3] = capStart[(upAxis+1)%3] = btSin(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   capEnd[(upAxis+2)%3] = capStart[(upAxis+2)%3] = btCos(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   drawLine(start+transform.getBasis() * capStart,start+transform.getBasis() * capEnd, color);
  }

 }

 virtual void drawCylinder(btScalar radius, btScalar halfHeight, int upAxis, const btTransform& transform, const btVector3& color)
 {
  btVector3 start = transform.getOrigin();
  btVector3 offsetHeight(0,0,0);
  offsetHeight[upAxis] = halfHeight;
  int stepDegrees=30;
  btVector3 capStart(0.f,0.f,0.f);
  capStart[upAxis] = -halfHeight;
  btVector3 capEnd(0.f,0.f,0.f);
  capEnd[upAxis] = halfHeight;

  for (int i=0;i<360;i+=stepDegrees)
  {
   capEnd[(upAxis+1)%3] = capStart[(upAxis+1)%3] = btSin(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   capEnd[(upAxis+2)%3] = capStart[(upAxis+2)%3] = btCos(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   drawLine(start+transform.getBasis() * capStart,start+transform.getBasis() * capEnd, color);
  }

  btVector3 yaxis(0,0,0);
  yaxis[upAxis] = btScalar(1.0);
  btVector3 xaxis(0,0,0);
  xaxis[(upAxis+1)%3] = btScalar(1.0);
  drawArc(start-transform.getBasis()*(offsetHeight),transform.getBasis()*yaxis,transform.getBasis()*xaxis,radius,radius,0,(btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)),color,false,btScalar(10.0));
  drawArc(start+transform.getBasis()*(offsetHeight),transform.getBasis()*yaxis,transform.getBasis()*xaxis,radius,radius,0,(btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)),color,false,btScalar(10.0));
 }

 virtual void drawCone(btScalar radius, btScalar height, int upAxis, const btTransform& transform, const btVector3& color)
 {
  int stepDegrees = 30;
  btVector3 start = transform.getOrigin();

  btVector3 offsetHeight(0,0,0);
  btScalar halfHeight = height * btScalar(0.5);
  offsetHeight[upAxis] = halfHeight;
  btVector3 offsetRadius(0,0,0);
  offsetRadius[(upAxis+1)%3] = radius;
  btVector3 offset2Radius(0,0,0);
  offset2Radius[(upAxis+2)%3] = radius;


  btVector3 capEnd(0.f,0.f,0.f);
  capEnd[upAxis] = -halfHeight;

  for (int i=0;i<360;i+=stepDegrees)
  {
   capEnd[(upAxis+1)%3] = btSin(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   capEnd[(upAxis+2)%3] = btCos(btScalar(i)*((btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)) / btScalar(360.0)))*radius;
   drawLine(start+transform.getBasis() * (offsetHeight),start+transform.getBasis() * capEnd, color);
  }

  drawLine(start+transform.getBasis() * (offsetHeight),start+transform.getBasis() * (-offsetHeight+offsetRadius),color);
  drawLine(start+transform.getBasis() * (offsetHeight),start+transform.getBasis() * (-offsetHeight-offsetRadius),color);
  drawLine(start+transform.getBasis() * (offsetHeight),start+transform.getBasis() * (-offsetHeight+offset2Radius),color);
  drawLine(start+transform.getBasis() * (offsetHeight),start+transform.getBasis() * (-offsetHeight-offset2Radius),color);


  btVector3 yaxis(0,0,0);
  yaxis[upAxis] = btScalar(1.0);
  btVector3 xaxis(0,0,0);
  xaxis[(upAxis+1)%3] = btScalar(1.0);
  drawArc(start-transform.getBasis()*(offsetHeight),transform.getBasis()*yaxis,transform.getBasis()*xaxis,radius,radius,0,(btScalar(2.0) * btScalar(3.1415926535897932384626433832795029)),color,false,10.0);
 }

 virtual void drawPlane(const btVector3& planeNormal, btScalar planeConst, const btTransform& transform, const btVector3& color)
 {
  btVector3 planeOrigin = planeNormal * planeConst;
  btVector3 vec0,vec1;
  btPlaneSpace1(planeNormal,vec0,vec1);
  btScalar vecLen = 100.f;
  btVector3 pt0 = planeOrigin + vec0*vecLen;
  btVector3 pt1 = planeOrigin - vec0*vecLen;
  btVector3 pt2 = planeOrigin + vec1*vecLen;
  btVector3 pt3 = planeOrigin - vec1*vecLen;
  drawLine(transform*pt0,transform*pt1,color);
  drawLine(transform*pt2,transform*pt3,color);
 }

 virtual void flushLines()
 {
 }
};
# 9 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 1 "C:/bullet3-master/src/BulletCollision/CollisionDispatch/btCollisionObjectWrapper.h" 1





class btCollisionShape;
class btCollisionObject;
class btTransform;







struct btCollisionObjectWrapper;
struct btCollisionObjectWrapper
{
private: void* operator new(size_t size); void operator delete(void*);

private:
 btCollisionObjectWrapper(const btCollisionObjectWrapper&);
 btCollisionObjectWrapper* operator=(const btCollisionObjectWrapper&);

public:
 const btCollisionObjectWrapper* m_parent;
 const btCollisionShape* m_shape;
 const btCollisionObject* m_collisionObject;
 const btTransform& m_worldTransform;
 int m_partId;
 int m_index;

 btCollisionObjectWrapper(const btCollisionObjectWrapper* parent, const btCollisionShape* shape, const btCollisionObject* collisionObject, const btTransform& worldTransform, int partId, int index)
 : m_parent(parent), m_shape(shape), m_collisionObject(collisionObject), m_worldTransform(worldTransform),
 m_partId(partId), m_index(index)
 {}

 inline const btTransform& getWorldTransform() const { return m_worldTransform; }
 inline const btCollisionObject* getCollisionObject() const { return m_collisionObject; }
 inline const btCollisionShape* getCollisionShape() const { return m_shape; }
};
# 10 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp" 2
# 34 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
static int btGetHash(int partId, int triangleIndex)
{
 int hash = (partId<<(31-10)) | triangleIndex;
 return hash;
}



static btScalar btGetAngle(const btVector3& edgeA, const btVector3& normalA,const btVector3& normalB)
{
 const btVector3 refAxis0 = edgeA;
 const btVector3 refAxis1 = normalA;
 const btVector3 swingAxis = normalB;
 btScalar angle = btAtan2(swingAxis.dot(refAxis0), swingAxis.dot(refAxis1));
 return angle;
}


struct btConnectivityProcessor : public btTriangleCallback
{
 int m_partIdA;
 int m_triangleIndexA;
 btVector3* m_triangleVerticesA;
 btTriangleInfoMap* m_triangleInfoMap;


 virtual void processTriangle(btVector3* triangle, int partId, int triangleIndex)
 {

  if ((m_partIdA == partId) && (m_triangleIndexA == triangleIndex))
   return;






  int numshared = 0;
  int sharedVertsA[3]={-1,-1,-1};
  int sharedVertsB[3]={-1,-1,-1};


  btScalar crossBSqr = ((triangle[1]-triangle[0]).cross(triangle[2]-triangle[0])).length2();
  if (crossBSqr < m_triangleInfoMap->m_equalVertexThreshold)
   return;


  btScalar crossASqr = ((m_triangleVerticesA[1]-m_triangleVerticesA[0]).cross(m_triangleVerticesA[2]-m_triangleVerticesA[0])).length2();

  if (crossASqr< m_triangleInfoMap->m_equalVertexThreshold)
   return;
# 99 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
  for (int i=0;i<3;i++)
  {
   for (int j=0;j<3;j++)
   {
    if ( (m_triangleVerticesA[i]-triangle[j]).length2() < m_triangleInfoMap->m_equalVertexThreshold)
    {
     sharedVertsA[numshared] = i;
     sharedVertsB[numshared] = j;
     numshared++;

     if(numshared >= 3)
      return;
    }
   }

   if(numshared >= 3)
    return;
  }
  switch (numshared)
  {
  case 0:
   {
    break;
   }
  case 1:
   {

    break;
   }
  case 2:
   {


    if (sharedVertsA[0] == 0 && sharedVertsA[1] == 2)
    {
     sharedVertsA[0] = 2;
     sharedVertsA[1] = 0;
     int tmp = sharedVertsB[1];
     sharedVertsB[1] = sharedVertsB[0];
     sharedVertsB[0] = tmp;
    }

    int hash = btGetHash(m_partIdA,m_triangleIndexA);

    btTriangleInfo* info = m_triangleInfoMap->find(hash);
    if (!info)
    {
     btTriangleInfo tmp;
     m_triangleInfoMap->insert(hash,tmp);
     info = m_triangleInfoMap->find(hash);
    }

    int sumvertsA = sharedVertsA[0]+sharedVertsA[1];
    int otherIndexA = 3-sumvertsA;


    btVector3 edge(m_triangleVerticesA[sharedVertsA[1]]-m_triangleVerticesA[sharedVertsA[0]]);

    btTriangleShape tA(m_triangleVerticesA[0],m_triangleVerticesA[1],m_triangleVerticesA[2]);
    int otherIndexB = 3-(sharedVertsB[0]+sharedVertsB[1]);

    btTriangleShape tB(triangle[sharedVertsB[1]],triangle[sharedVertsB[0]],triangle[otherIndexB]);


    btVector3 normalA;
    btVector3 normalB;
    tA.calcNormal(normalA);
    tB.calcNormal(normalB);
    edge.normalize();
    btVector3 edgeCrossA = edge.cross(normalA).normalize();

    {
     btVector3 tmp = m_triangleVerticesA[otherIndexA]-m_triangleVerticesA[sharedVertsA[0]];
     if (edgeCrossA.dot(tmp) < 0)
     {
      edgeCrossA*=-1;
     }
    }

    btVector3 edgeCrossB = edge.cross(normalB).normalize();

    {
     btVector3 tmp = triangle[otherIndexB]-triangle[sharedVertsB[0]];
     if (edgeCrossB.dot(tmp) < 0)
     {
      edgeCrossB*=-1;
     }
    }

    btScalar angle2 = 0;
    btScalar ang4 = 0.f;


    btVector3 calculatedEdge = edgeCrossA.cross(edgeCrossB);
    btScalar len2 = calculatedEdge.length2();

    btScalar correctedAngle(0);
    btVector3 calculatedNormalB = normalA;
    bool isConvex = false;

    if (len2<m_triangleInfoMap->m_planarEpsilon)
    {
     angle2 = 0.f;
     ang4 = 0.f;
    } else
    {

     calculatedEdge.normalize();
     btVector3 calculatedNormalA = calculatedEdge.cross(edgeCrossA);
     calculatedNormalA.normalize();
     angle2 = btGetAngle(calculatedNormalA,edgeCrossA,edgeCrossB);
     ang4 = btScalar(3.1415926535897932384626433832795029)-angle2;
     btScalar dotA = normalA.dot(edgeCrossB);

     isConvex = (dotA<0.);

     correctedAngle = isConvex ? ang4 : -ang4;
     btQuaternion orn2(calculatedEdge,-correctedAngle);
     calculatedNormalB = btMatrix3x3(orn2)*normalA;


    }
# 230 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
    switch (sumvertsA)
    {
    case 1:
     {
      btVector3 edge = m_triangleVerticesA[0]-m_triangleVerticesA[1];
      btQuaternion orn(edge,-correctedAngle);
      btVector3 computedNormalB = quatRotate(orn,normalA);
      btScalar bla = computedNormalB.dot(normalB);
      if (bla<0)
      {
       computedNormalB*=-1;
       info->m_flags |= 8;
      }







      info->m_edgeV0V1Angle = -correctedAngle;

      if (isConvex)
       info->m_flags |= 1;
      break;
     }
    case 2:
     {
      btVector3 edge = m_triangleVerticesA[2]-m_triangleVerticesA[0];
      btQuaternion orn(edge,-correctedAngle);
      btVector3 computedNormalB = quatRotate(orn,normalA);
      if (computedNormalB.dot(normalB)<0)
      {
       computedNormalB*=-1;
       info->m_flags |= 32;
      }







      info->m_edgeV2V0Angle = -correctedAngle;
      if (isConvex)
       info->m_flags |= 4;
      break;
     }
    case 3:
     {
      btVector3 edge = m_triangleVerticesA[1]-m_triangleVerticesA[2];
      btQuaternion orn(edge,-correctedAngle);
      btVector3 computedNormalB = quatRotate(orn,normalA);
      if (computedNormalB.dot(normalB)<0)
      {
       info->m_flags |= 16;
       computedNormalB*=-1;
      }






      info->m_edgeV1V2Angle = -correctedAngle;

      if (isConvex)
       info->m_flags |= 2;
      break;
     }
    }

    break;
   }
  default:
   {

   }

  }
 }
};



void btGenerateInternalEdgeInfo (btBvhTriangleMeshShape*trimeshShape, btTriangleInfoMap* triangleInfoMap)
{

 if (trimeshShape->getTriangleInfoMap())
  return;

 trimeshShape->setTriangleInfoMap(triangleInfoMap);

 btStridingMeshInterface* meshInterface = trimeshShape->getMeshInterface();
 const btVector3& meshScaling = meshInterface->getScaling();

 for (int partId = 0; partId< meshInterface->getNumSubParts();partId++)
 {
  const unsigned char *vertexbase = 0;
  int numverts = 0;
  PHY_ScalarType type = PHY_INTEGER;
  int stride = 0;
  const unsigned char *indexbase = 0;
  int indexstride = 0;
  int numfaces = 0;
  PHY_ScalarType indicestype = PHY_INTEGER;


  btVector3 triangleVerts[3];
  meshInterface->getLockedReadOnlyVertexIndexBase(&vertexbase,numverts, type,stride,&indexbase,indexstride,numfaces,indicestype,partId);
  btVector3 aabbMin,aabbMax;

  for (int triangleIndex = 0 ; triangleIndex < numfaces;triangleIndex++)
  {
   unsigned int* gfxbase = (unsigned int*)(indexbase+triangleIndex*indexstride);

   for (int j=2;j>=0;j--)
   {

    int graphicsindex = indicestype==PHY_SHORT?((unsigned short*)gfxbase)[j]:gfxbase[j];
    if (type == PHY_FLOAT)
    {
     float* graphicsbase = (float*)(vertexbase+graphicsindex*stride);
     triangleVerts[j] = btVector3(
      graphicsbase[0]*meshScaling.getX(),
      graphicsbase[1]*meshScaling.getY(),
      graphicsbase[2]*meshScaling.getZ());
    }
    else
    {
     double* graphicsbase = (double*)(vertexbase+graphicsindex*stride);
     triangleVerts[j] = btVector3( btScalar(graphicsbase[0]*meshScaling.getX()), btScalar(graphicsbase[1]*meshScaling.getY()), btScalar(graphicsbase[2]*meshScaling.getZ()));
    }
   }
   aabbMin.setValue(btScalar(1e18f),btScalar(1e18f),btScalar(1e18f));
   aabbMax.setValue(btScalar(-1e18f),btScalar(-1e18f),btScalar(-1e18f));
   aabbMin.setMin(triangleVerts[0]);
   aabbMax.setMax(triangleVerts[0]);
   aabbMin.setMin(triangleVerts[1]);
   aabbMax.setMax(triangleVerts[1]);
   aabbMin.setMin(triangleVerts[2]);
   aabbMax.setMax(triangleVerts[2]);

   btConnectivityProcessor connectivityProcessor;
   connectivityProcessor.m_partIdA = partId;
   connectivityProcessor.m_triangleIndexA = triangleIndex;
   connectivityProcessor.m_triangleVerticesA = &triangleVerts[0];
   connectivityProcessor.m_triangleInfoMap = triangleInfoMap;

   trimeshShape->processAllTriangles(&connectivityProcessor,aabbMin,aabbMax);
  }

 }

}






void btNearestPointInLineSegment(const btVector3 &point, const btVector3& line0, const btVector3& line1, btVector3& nearestPoint)
{
 btVector3 lineDelta = line1 - line0;


 if ( lineDelta.fuzzyZero())
 {
  nearestPoint = line0;
 }
 else
 {
  btScalar delta = (point-line0).dot(lineDelta) / (lineDelta).dot(lineDelta);


  if ( delta < 0 )
   delta = 0;
  else if ( delta > 1 )
   delta = 1;

  nearestPoint = line0 + lineDelta*delta;
 }
}




bool btClampNormal(const btVector3& edge,const btVector3& tri_normal_org,const btVector3& localContactNormalOnB, btScalar correctedEdgeAngle, btVector3 & clampedLocalNormal)
{
 btVector3 tri_normal = tri_normal_org;



 btVector3 edgeCross = edge.cross(tri_normal).normalize();
 btScalar curAngle = btGetAngle(edgeCross,tri_normal,localContactNormalOnB);

 if (correctedEdgeAngle<0)
 {
  if (curAngle < correctedEdgeAngle)
  {
   btScalar diffAngle = correctedEdgeAngle-curAngle;
   btQuaternion rotation(edge,diffAngle );
   clampedLocalNormal = btMatrix3x3(rotation)*localContactNormalOnB;
   return true;
  }
 }

 if (correctedEdgeAngle>=0)
 {
  if (curAngle > correctedEdgeAngle)
  {
   btScalar diffAngle = correctedEdgeAngle-curAngle;
   btQuaternion rotation(edge,diffAngle );
   clampedLocalNormal = btMatrix3x3(rotation)*localContactNormalOnB;
   return true;
  }
 }
 return false;
}




void btAdjustInternalEdgeContacts(btManifoldPoint& cp, const btCollisionObjectWrapper* colObj0Wrap,const btCollisionObjectWrapper* colObj1Wrap, int partId0, int index0, int normalAdjustFlags)
{

 if (colObj0Wrap->getCollisionShape()->getShapeType() != TRIANGLE_SHAPE_PROXYTYPE)
  return;

 btBvhTriangleMeshShape* trimesh = 0;

 if( colObj0Wrap->getCollisionObject()->getCollisionShape()->getShapeType() == SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE )
    trimesh = ((btScaledBvhTriangleMeshShape*)colObj0Wrap->getCollisionObject()->getCollisionShape())->getChildShape();
   else
    trimesh = (btBvhTriangleMeshShape*)colObj0Wrap->getCollisionObject()->getCollisionShape();

    btTriangleInfoMap* triangleInfoMapPtr = (btTriangleInfoMap*) trimesh->getTriangleInfoMap();
 if (!triangleInfoMapPtr)
  return;

 int hash = btGetHash(partId0,index0);


 btTriangleInfo* info = triangleInfoMapPtr->find(hash);
 if (!info)
  return;

 btScalar frontFacing = (normalAdjustFlags & BT_TRIANGLE_CONVEX_BACKFACE_MODE)==0? 1.f : -1.f;

 const btTriangleShape* tri_shape = static_cast<const btTriangleShape*>(colObj0Wrap->getCollisionShape());
 btVector3 v0,v1,v2;
 tri_shape->getVertex(0,v0);
 tri_shape->getVertex(1,v1);
 tri_shape->getVertex(2,v2);



 btVector3 red(1,0,0), green(0,1,0),blue(0,0,1),white(1,1,1),black(0,0,0);
 btVector3 tri_normal;
 tri_shape->calcNormal(tri_normal);


 btVector3 nearest;
 btNearestPointInLineSegment(cp.m_localPointB,v0,v1,nearest);

 btVector3 contact = cp.m_localPointB;







 bool isNearEdge = false;

 int numConcaveEdgeHits = 0;
 int numConvexEdgeHits = 0;

 btVector3 localContactNormalOnB = colObj0Wrap->getWorldTransform().getBasis().transpose() * cp.m_normalWorldOnB;
 localContactNormalOnB.normalize();


 int bestedge=-1;
 btScalar disttobestedge=1e18f;


 if (btFabs(info->m_edgeV0V1Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {
    btVector3 nearest;
    btNearestPointInLineSegment( cp.m_localPointB, v0, v1, nearest );
    btScalar len=(contact-nearest).length();

    if( len < disttobestedge )
    {
       bestedge=0;
       disttobestedge=len;
      }
   }

 if (btFabs(info->m_edgeV1V2Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {
    btVector3 nearest;
    btNearestPointInLineSegment( cp.m_localPointB, v1, v2, nearest );
    btScalar len=(contact-nearest).length();

    if( len < disttobestedge )
    {
       bestedge=1;
       disttobestedge=len;
      }
   }

 if (btFabs(info->m_edgeV2V0Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {
    btVector3 nearest;
    btNearestPointInLineSegment( cp.m_localPointB, v2, v0, nearest );
    btScalar len=(contact-nearest).length();

    if( len < disttobestedge )
    {
       bestedge=2;
       disttobestedge=len;
      }
   }





 if (btFabs(info->m_edgeV0V1Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {



  btScalar len = (contact-nearest).length();
  if(len<triangleInfoMapPtr->m_edgeDistanceThreshold)
  if( bestedge==0 )
  {
   btVector3 edge(v0-v1);
   isNearEdge = true;

   if (info->m_edgeV0V1Angle==btScalar(0))
   {
    numConcaveEdgeHits++;
   } else
   {

    bool isEdgeConvex = (info->m_flags & 1);
    btScalar swapFactor = isEdgeConvex ? btScalar(1) : btScalar(-1);




    btVector3 nA = swapFactor * tri_normal;

    btQuaternion orn(edge,info->m_edgeV0V1Angle);
    btVector3 computedNormalB = quatRotate(orn,tri_normal);
    if (info->m_flags & 8)
     computedNormalB*=-1;
    btVector3 nB = swapFactor*computedNormalB;

    btScalar NdotA = localContactNormalOnB.dot(nA);
    btScalar NdotB = localContactNormalOnB.dot(nB);
    bool backFacingNormal = (NdotA< triangleInfoMapPtr->m_convexEpsilon) && (NdotB<triangleInfoMapPtr->m_convexEpsilon);
# 603 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
    if (backFacingNormal)
    {
     numConcaveEdgeHits++;
    }
    else
    {
     numConvexEdgeHits++;
     btVector3 clampedLocalNormal;
     bool isClamped = btClampNormal(edge,swapFactor*tri_normal,localContactNormalOnB, info->m_edgeV0V1Angle,clampedLocalNormal);
     if (isClamped)
     {
      if (((normalAdjustFlags & BT_TRIANGLE_CONVEX_DOUBLE_SIDED)!=0) || (clampedLocalNormal.dot(frontFacing*tri_normal)>0))
      {
       btVector3 newNormal = colObj0Wrap->getWorldTransform().getBasis() * clampedLocalNormal;

       cp.m_normalWorldOnB = newNormal;

       cp.m_positionWorldOnB = cp.m_positionWorldOnA - cp.m_normalWorldOnB * cp.m_distance1;
       cp.m_localPointB = colObj0Wrap->getWorldTransform().invXform(cp.m_positionWorldOnB);

      }
     }
    }
   }
  }
 }

 btNearestPointInLineSegment(contact,v1,v2,nearest);
# 639 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
 if (btFabs(info->m_edgeV1V2Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {






  btScalar len = (contact-nearest).length();
  if(len<triangleInfoMapPtr->m_edgeDistanceThreshold)
  if( bestedge==1 )
  {
   isNearEdge = true;




   btVector3 edge(v1-v2);

   isNearEdge = true;

   if (info->m_edgeV1V2Angle == btScalar(0))
   {
    numConcaveEdgeHits++;
   } else
   {
    bool isEdgeConvex = (info->m_flags & 2)!=0;
    btScalar swapFactor = isEdgeConvex ? btScalar(1) : btScalar(-1);




    btVector3 nA = swapFactor * tri_normal;

    btQuaternion orn(edge,info->m_edgeV1V2Angle);
    btVector3 computedNormalB = quatRotate(orn,tri_normal);
    if (info->m_flags & 16)
     computedNormalB*=-1;
    btVector3 nB = swapFactor*computedNormalB;
# 686 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
    btScalar NdotA = localContactNormalOnB.dot(nA);
    btScalar NdotB = localContactNormalOnB.dot(nB);
    bool backFacingNormal = (NdotA< triangleInfoMapPtr->m_convexEpsilon) && (NdotB<triangleInfoMapPtr->m_convexEpsilon);

    if (backFacingNormal)
    {
     numConcaveEdgeHits++;
    }
    else
    {
     numConvexEdgeHits++;
     btVector3 localContactNormalOnB = colObj0Wrap->getWorldTransform().getBasis().transpose() * cp.m_normalWorldOnB;
     btVector3 clampedLocalNormal;
     bool isClamped = btClampNormal(edge,swapFactor*tri_normal,localContactNormalOnB, info->m_edgeV1V2Angle,clampedLocalNormal);
     if (isClamped)
     {
      if (((normalAdjustFlags & BT_TRIANGLE_CONVEX_DOUBLE_SIDED)!=0) || (clampedLocalNormal.dot(frontFacing*tri_normal)>0))
      {
       btVector3 newNormal = colObj0Wrap->getWorldTransform().getBasis() * clampedLocalNormal;

       cp.m_normalWorldOnB = newNormal;

       cp.m_positionWorldOnB = cp.m_positionWorldOnA - cp.m_normalWorldOnB * cp.m_distance1;
       cp.m_localPointB = colObj0Wrap->getWorldTransform().invXform(cp.m_positionWorldOnB);
      }
     }
    }
   }
  }
 }

 btNearestPointInLineSegment(contact,v2,v0,nearest);







 if (btFabs(info->m_edgeV2V0Angle)< triangleInfoMapPtr->m_maxEdgeAngleThreshold)
 {





  btScalar len = (contact-nearest).length();
  if(len<triangleInfoMapPtr->m_edgeDistanceThreshold)
  if( bestedge==2 )
  {
   isNearEdge = true;




   btVector3 edge(v2-v0);

   if (info->m_edgeV2V0Angle==btScalar(0))
   {
    numConcaveEdgeHits++;
   } else
   {

    bool isEdgeConvex = (info->m_flags & 4)!=0;
    btScalar swapFactor = isEdgeConvex ? btScalar(1) : btScalar(-1);




    btVector3 nA = swapFactor * tri_normal;
    btQuaternion orn(edge,info->m_edgeV2V0Angle);
    btVector3 computedNormalB = quatRotate(orn,tri_normal);
    if (info->m_flags & 32)
     computedNormalB*=-1;
    btVector3 nB = swapFactor*computedNormalB;







    btScalar NdotA = localContactNormalOnB.dot(nA);
    btScalar NdotB = localContactNormalOnB.dot(nB);
    bool backFacingNormal = (NdotA< triangleInfoMapPtr->m_convexEpsilon) && (NdotB<triangleInfoMapPtr->m_convexEpsilon);

    if (backFacingNormal)
    {
     numConcaveEdgeHits++;
    }
    else
    {
     numConvexEdgeHits++;



     btVector3 localContactNormalOnB = colObj0Wrap->getWorldTransform().getBasis().transpose() * cp.m_normalWorldOnB;
     btVector3 clampedLocalNormal;
     bool isClamped = btClampNormal(edge,swapFactor*tri_normal,localContactNormalOnB,info->m_edgeV2V0Angle,clampedLocalNormal);
     if (isClamped)
     {
      if (((normalAdjustFlags & BT_TRIANGLE_CONVEX_DOUBLE_SIDED)!=0) || (clampedLocalNormal.dot(frontFacing*tri_normal)>0))
      {
       btVector3 newNormal = colObj0Wrap->getWorldTransform().getBasis() * clampedLocalNormal;

       cp.m_normalWorldOnB = newNormal;

       cp.m_positionWorldOnB = cp.m_positionWorldOnA - cp.m_normalWorldOnB * cp.m_distance1;
       cp.m_localPointB = colObj0Wrap->getWorldTransform().invXform(cp.m_positionWorldOnB);
      }
     }
    }
   }


  }
 }
# 811 "C:\\bullet3-master\\src\\BulletCollision\\CollisionDispatch\\btInternalEdgeUtility.cpp"
 if (isNearEdge)
 {

  if (numConcaveEdgeHits>0)
  {
   if ((normalAdjustFlags & BT_TRIANGLE_CONCAVE_DOUBLE_SIDED)!=0)
   {

    if (tri_normal.dot(localContactNormalOnB) < 0)
    {
     tri_normal *= -1;
    }
    cp.m_normalWorldOnB = colObj0Wrap->getWorldTransform().getBasis()*tri_normal;
   } else
   {
    btVector3 newNormal = tri_normal *frontFacing;

    btScalar d = newNormal.dot(localContactNormalOnB) ;
    if (d< 0)
    {
     return;
    }

    cp.m_normalWorldOnB = colObj0Wrap->getWorldTransform().getBasis() *newNormal;
   }


   cp.m_positionWorldOnB = cp.m_positionWorldOnA - cp.m_normalWorldOnB * cp.m_distance1;
   cp.m_localPointB = colObj0Wrap->getWorldTransform().invXform(cp.m_positionWorldOnB);
  }
 }
}
