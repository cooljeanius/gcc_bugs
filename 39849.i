# 1 "../../../libgcc/../gcc/config/soft-fp/divtf3.c"
# 1 "/localdata/install/gcc/trunk/build/i686-pc-linux-gnu/libgcc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../../libgcc/../gcc/config/soft-fp/divtf3.c"
# 32 "../../../libgcc/../gcc/config/soft-fp/divtf3.c"
# 1 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 1
# 40 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h"
# 1 "../.././gcc/sfp-machine.h" 1



# 1 "../../../libgcc/config/i386/32/sfp-machine.h" 1







typedef int __gcc_CMPtype __attribute__ ((mode (__libgcc_cmp_return__)));
# 120 "../../../libgcc/config/i386/32/sfp-machine.h"
struct fenv
{
  unsigned short int __control_word;
  unsigned short int __unused1;
  unsigned short int __status_word;
  unsigned short int __unused2;
  unsigned short int __tags;
  unsigned short int __unused3;
  unsigned int __eip;
  unsigned short int __cs_selector;
  unsigned int __opcode:11;
  unsigned int __unused4:5;
  unsigned int __data_offset;
  unsigned short int __data_selector;
  unsigned short int __unused5;
};
# 5 "../.././gcc/sfp-machine.h" 2
# 41 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2
# 170 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h"
# 1 "../../../libgcc/../gcc/config/soft-fp/op-1.h" 1
# 171 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2
# 1 "../../../libgcc/../gcc/config/soft-fp/op-2.h" 1
# 172 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2
# 1 "../../../libgcc/../gcc/config/soft-fp/op-4.h" 1
# 173 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2
# 1 "../../../libgcc/../gcc/config/soft-fp/op-8.h" 1
# 174 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2
# 1 "../../../libgcc/../gcc/config/soft-fp/op-common.h" 1
# 175 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2





typedef int QItype __attribute__((mode(QI)));
typedef int SItype __attribute__((mode(SI)));
typedef int DItype __attribute__((mode(DI)));
typedef unsigned int UQItype __attribute__((mode(QI)));
typedef unsigned int USItype __attribute__((mode(SI)));
typedef unsigned int UDItype __attribute__((mode(DI)));

typedef unsigned int UHWtype __attribute__((mode(HI)));
# 203 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h"
# 1 "../../../libgcc/../gcc/longlong.h" 1
# 63 "../../../libgcc/../gcc/longlong.h"
extern const UQItype __clz_tab[256] ;
# 204 "../../../libgcc/../gcc/config/soft-fp/soft-fp.h" 2






extern void abort (void);
# 33 "../../../libgcc/../gcc/config/soft-fp/divtf3.c" 2
# 1 "../../../libgcc/../gcc/config/soft-fp/quad.h" 1
# 63 "../../../libgcc/../gcc/config/soft-fp/quad.h"
typedef float TFtype __attribute__((mode(TF)));



union _FP_UNION_Q
{
  TFtype flt;
  struct
  {
# 80 "../../../libgcc/../gcc/config/soft-fp/quad.h"
    unsigned long frac0 : 32;
    unsigned long frac1 : 32;
    unsigned long frac2 : 32;
    unsigned long frac3 : 113 - (((unsigned int)1 << (113 -1) % 32) != 0)-(32 * 3);
    unsigned exp : 15;
    unsigned sign : 1;

  } bits __attribute__((packed));
};
# 34 "../../../libgcc/../gcc/config/soft-fp/divtf3.c" 2

TFtype __divtf3(TFtype a, TFtype b)
{
  int _fex = 0; unsigned short _fcw __attribute__ ((unused)) = 0;
  int A_c __attribute__((unused)), A_s, A_e; unsigned int A_f[4]; int B_c __attribute__((unused)), B_s, B_e; unsigned int B_f[4]; int R_c __attribute__((unused)), R_s, R_e; unsigned int R_f[4];
  TFtype r;

  do { __asm__ ("fnstcw %0" : "=m" (_fcw)); } while (0);
  do { do { union _FP_UNION_Q _flo; _flo.flt = (a); A_f[0] = _flo.bits.frac0; A_f[1] = _flo.bits.frac1; A_f[2] = _flo.bits.frac2; A_f[3] = _flo.bits.frac3; A_e = _flo.bits.exp; A_s = _flo.bits.sign; } while (0); do { switch (A_e) { default: (A_f[3]) |= ((unsigned int)1 << (113 -1) % 32); do { int _up, _down, _skip, _i; _skip = (3) / 32; _up = (3) % 32; _down = 32 - _up; if (!_up) for (_i = 3; _i >= _skip; --_i) A_f[_i] = A_f[_i-_skip]; else { for (_i = 3; _i > _skip; --_i) A_f[_i] = A_f[_i-_skip] << _up | A_f[_i-_skip-1] >> _down; A_f[_i--] = A_f[0] << _up; } for (; _i >= 0; --_i) A_f[_i] = 0; } while (0); A_e -= 16383; A_c = 0; break; case 0: if (((A_f[0] | A_f[1] | A_f[2] | A_f[3]) == 0)) A_c = 1; else { int _shift; do { if (A_f[3]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (A_f[3]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (A_f[3]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (A_f[3]); else abort (); } while (0); } else if (A_f[2]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (A_f[2]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (A_f[2]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (A_f[2]); else abort (); } while (0); _shift += 32; } else if (A_f[1]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (A_f[1]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (A_f[1]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (A_f[1]); else abort (); } while (0); _shift += 32*2; } else { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (A_f[0]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (A_f[0]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (A_f[0]); else abort (); } while (0); _shift += 32*3; } } while(0); _shift -= ((4*32) - 113); do { int _up, _down, _skip, _i; _skip = ((_shift+3)) / 32; _up = ((_shift+3)) % 32; _down = 32 - _up; if (!_up) for (_i = 3; _i >= _skip; --_i) A_f[_i] = A_f[_i-_skip]; else { for (_i = 3; _i > _skip; --_i) A_f[_i] = A_f[_i-_skip] << _up | A_f[_i-_skip-1] >> _down; A_f[_i--] = A_f[0] << _up; } for (; _i >= 0; --_i) A_f[_i] = 0; } while (0); A_e -= 16383 - 1 + _shift; A_c = 0; _fex |= (0x02); } break; case 32767: if (((A_f[0] | A_f[1] | A_f[2] | A_f[3]) == 0)) A_c = 2; else { A_c = 3; if (!((A_f[3]) & ((unsigned int)1 << (113 -2) % 32))) _fex |= (0x01); } break; } } while (0); } while (0);
  do { do { union _FP_UNION_Q _flo; _flo.flt = (b); B_f[0] = _flo.bits.frac0; B_f[1] = _flo.bits.frac1; B_f[2] = _flo.bits.frac2; B_f[3] = _flo.bits.frac3; B_e = _flo.bits.exp; B_s = _flo.bits.sign; } while (0); do { switch (B_e) { default: (B_f[3]) |= ((unsigned int)1 << (113 -1) % 32); do { int _up, _down, _skip, _i; _skip = (3) / 32; _up = (3) % 32; _down = 32 - _up; if (!_up) for (_i = 3; _i >= _skip; --_i) B_f[_i] = B_f[_i-_skip]; else { for (_i = 3; _i > _skip; --_i) B_f[_i] = B_f[_i-_skip] << _up | B_f[_i-_skip-1] >> _down; B_f[_i--] = B_f[0] << _up; } for (; _i >= 0; --_i) B_f[_i] = 0; } while (0); B_e -= 16383; B_c = 0; break; case 0: if (((B_f[0] | B_f[1] | B_f[2] | B_f[3]) == 0)) B_c = 1; else { int _shift; do { if (B_f[3]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (B_f[3]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (B_f[3]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (B_f[3]); else abort (); } while (0); } else if (B_f[2]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (B_f[2]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (B_f[2]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (B_f[2]); else abort (); } while (0); _shift += 32; } else if (B_f[1]) { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (B_f[1]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (B_f[1]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (B_f[1]); else abort (); } while (0); _shift += 32*2; } else { do { if (sizeof (unsigned int) == sizeof (unsigned int)) _shift = __builtin_clz (B_f[0]); else if (sizeof (unsigned int) == sizeof (unsigned long)) _shift = __builtin_clzl (B_f[0]); else if (sizeof (unsigned int) == sizeof (unsigned long long)) _shift = __builtin_clzll (B_f[0]); else abort (); } while (0); _shift += 32*3; } } while(0); _shift -= ((4*32) - 113); do { int _up, _down, _skip, _i; _skip = ((_shift+3)) / 32; _up = ((_shift+3)) % 32; _down = 32 - _up; if (!_up) for (_i = 3; _i >= _skip; --_i) B_f[_i] = B_f[_i-_skip]; else { for (_i = 3; _i > _skip; --_i) B_f[_i] = B_f[_i-_skip] << _up | B_f[_i-_skip-1] >> _down; B_f[_i--] = B_f[0] << _up; } for (; _i >= 0; --_i) B_f[_i] = 0; } while (0); B_e -= 16383 - 1 + _shift; B_c = 0; _fex |= (0x02); } break; case 32767: if (((B_f[0] | B_f[1] | B_f[2] | B_f[3]) == 0)) B_c = 2; else { B_c = 3; if (!((B_f[3]) & ((unsigned int)1 << (113 -2) % 32))) _fex |= (0x01); } break; } } while (0); } while (0);
  do { R_s = A_s ^ B_s; switch ((((A_c) << 2) | (B_c))) { case (((0) << 2) | (0)): R_c = 0; R_e = A_e - B_e; do { int _i; unsigned int _n_f[4]; unsigned int _m_f[4]; (_n_f[3] = 0, _n_f[2] = 0, _n_f[1] = 0, _n_f[0] = 0); if ((A_f[3] > B_f[3] || (A_f[3] == B_f[3] && (A_f[2] > B_f[2] || (A_f[2] == B_f[2] && (A_f[1] > B_f[1] || (A_f[1] == B_f[1] && A_f[0] > B_f[0]) )) )) )) { _n_f[3] = A_f[0] << (32 - 1); do { int _up, _down, _skip, _i; _skip = (1) / 32; _down = (1) % 32; _up = 32 - _down; if (!_down) for (_i = 0; _i <= 3-_skip; ++_i) A_f[_i] = A_f[_i+_skip]; else { for (_i = 0; _i < 3-_skip; ++_i) A_f[_i] = A_f[_i+_skip] >> _down | A_f[_i+_skip+1] << _up; A_f[_i++] = A_f[3] >> _down; } for (; _i < 4; ++_i) A_f[_i] = 0; } while (0); } else R_e--; do { int _up, _down, _skip, _i; _skip = (((4*32) - (3 + 113))) / 32; _up = (((4*32) - (3 + 113))) % 32; _down = 32 - _up; if (!_up) for (_i = 3; _i >= _skip; --_i) B_f[_i] = B_f[_i-_skip]; else { for (_i = 3; _i > _skip; --_i) B_f[_i] = B_f[_i-_skip] << _up | B_f[_i-_skip-1] >> _down; B_f[_i--] = B_f[0] << _up; } for (; _i >= 0; --_i) B_f[_i] = 0; } while (0); for (_i = 3; ; _i--) { if (A_f[3] == B_f[3]) { R_f[_i] = -1; if (!_i) break; __asm__ ("sub{l} {%11,%3|%3,%11}\n\t" "sbb{l} {%9,%2|%2,%9}\n\t" "sbb{l} {%7,%1|%1,%7}\n\t" "sbb{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "0" ((USItype) (B_f[2])), "g" ((USItype) (A_f[2])), "1" ((USItype) (B_f[1])), "g" ((USItype) (A_f[1])), "2" ((USItype) (B_f[0])), "g" ((USItype) (A_f[0])), "3" ((USItype) (0)), "im" ((USItype) (_n_f[_i]))); __asm__ ("sub{l} {%11,%3|%3,%11}\n\t" "sbb{l} {%9,%2|%2,%9}\n\t" "sbb{l} {%7,%1|%1,%7}\n\t" "sbb{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "0" ((USItype) (B_f[3])), "g" ((USItype) (A_f[3])), "1" ((USItype) (B_f[2])), "g" ((USItype) (A_f[2])), "2" ((USItype) (B_f[1])), "g" ((USItype) (A_f[1])), "3" ((USItype) (B_f[0])), "im" ((USItype) (A_f[0]))); if (A_f[3] > B_f[3]) { R_f[_i] = -2; __asm__ ("add{l} {%11,%3|%3,%11}\n\t" "adc{l} {%9,%2|%2,%9}\n\t" "adc{l} {%7,%1|%1,%7}\n\t" "adc{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "%0" ((USItype) (B_f[3])), "g" ((USItype) (A_f[3])), "%1" ((USItype) (B_f[2])), "g" ((USItype) (A_f[2])), "%2" ((USItype) (B_f[1])), "g" ((USItype) (A_f[1])), "%3" ((USItype) (B_f[0])), "g" ((USItype) (A_f[0]))); } } else { __asm__ ("div{l} %4" : "=a" ((USItype) (R_f[_i])), "=d" ((USItype) (A_f[3])) : "0" ((USItype) (A_f[2])), "1" ((USItype) (A_f[3])), "rm" ((USItype) (B_f[3]))); do { unsigned int _t; __asm__ ("mul{l} %3" : "=a" ((USItype) (_m_f[0])), "=d" ((USItype) (_m_f[1])) : "%0" ((USItype) (R_f[_i])), "rm" ((USItype) (B_f[0]))); __asm__ ("mul{l} %3" : "=a" ((USItype) (_t)), "=d" ((USItype) (_m_f[2])) : "%0" ((USItype) (R_f[_i])), "rm" ((USItype) (B_f[1]))); __asm__ ("add{l} {%5,%1|%1,%5}\n\tadc{l} {%3,%0|%0,%3}" : "=r" ((USItype) (_m_f[2])), "=&r" ((USItype) (_m_f[1])) : "%0" ((USItype) (_m_f[2])), "g" ((USItype) (0)), "%1" ((USItype) (_m_f[1])), "g" ((USItype) (_t))); __asm__ ("mul{l} %3" : "=a" ((USItype) (_t)), "=d" ((USItype) (_m_f[3])) : "%0" ((USItype) (R_f[_i])), "rm" ((USItype) (B_f[2]))); __asm__ ("add{l} {%5,%1|%1,%5}\n\tadc{l} {%3,%0|%0,%3}" : "=r" ((USItype) (_m_f[3])), "=&r" ((USItype) (_m_f[2])) : "%0" ((USItype) (_m_f[3])), "g" ((USItype) (0)), "%1" ((USItype) (_m_f[2])), "g" ((USItype) (_t))); } while (0); A_f[2] = A_f[1]; A_f[1] = A_f[0]; A_f[0] = _n_f[_i]; if ((_m_f[3] > A_f[3] || (_m_f[3] == A_f[3] && (_m_f[2] > A_f[2] || (_m_f[2] == A_f[2] && (_m_f[1] > A_f[1] || (_m_f[1] == A_f[1] && _m_f[0] > A_f[0]) )) )) )) { R_f[_i]--; __asm__ ("add{l} {%11,%3|%3,%11}\n\t" "adc{l} {%9,%2|%2,%9}\n\t" "adc{l} {%7,%1|%1,%7}\n\t" "adc{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "%0" ((USItype) (B_f[3])), "g" ((USItype) (A_f[3])), "%1" ((USItype) (B_f[2])), "g" ((USItype) (A_f[2])), "%2" ((USItype) (B_f[1])), "g" ((USItype) (A_f[1])), "%3" ((USItype) (B_f[0])), "g" ((USItype) (A_f[0]))); if ((A_f[3] > B_f[3] || (A_f[3] == B_f[3] && (A_f[2] > B_f[2] || (A_f[2] == B_f[2] && (A_f[1] > B_f[1] || (A_f[1] == B_f[1] && A_f[0] >= B_f[0]) )) )) ) && (_m_f[3] > A_f[3] || (_m_f[3] == A_f[3] && (_m_f[2] > A_f[2] || (_m_f[2] == A_f[2] && (_m_f[1] > A_f[1] || (_m_f[1] == A_f[1] && _m_f[0] > A_f[0]) )) )) )) { R_f[_i]--; __asm__ ("add{l} {%11,%3|%3,%11}\n\t" "adc{l} {%9,%2|%2,%9}\n\t" "adc{l} {%7,%1|%1,%7}\n\t" "adc{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "%0" ((USItype) (B_f[3])), "g" ((USItype) (A_f[3])), "%1" ((USItype) (B_f[2])), "g" ((USItype) (A_f[2])), "%2" ((USItype) (B_f[1])), "g" ((USItype) (A_f[1])), "%3" ((USItype) (B_f[0])), "g" ((USItype) (A_f[0]))); } } do { unsigned int _t0, _t1, _t2, _t3; _t0 = A_f[0], _t1 = A_f[1], _t2 = A_f[2], _t3 = A_f[3]; __asm__ ("sub{l} {%11,%3|%3,%11}\n\t" "sbb{l} {%9,%2|%2,%9}\n\t" "sbb{l} {%7,%1|%1,%7}\n\t" "sbb{l} {%5,%0|%0,%5}" : "=r" ((USItype) (A_f[3])), "=&r" ((USItype) (A_f[2])), "=&r" ((USItype) (A_f[1])), "=&r" ((USItype) (A_f[0])) : "0" ((USItype) (_t3)), "g" ((USItype) (_m_f[3])), "1" ((USItype) (_t2)), "g" ((USItype) (_m_f[2])), "2" ((USItype) (_t1)), "g" ((USItype) (_m_f[1])), "3" ((USItype) (_t0)), "im" ((USItype) (_m_f[0]))); } while (0); if (!_i) { if (!(A_f[0] == _m_f[0] && A_f[1] == _m_f[1] && A_f[2] == _m_f[2] && A_f[3] == _m_f[3])) R_f[0] |= ((unsigned int)1 << 0); break; } } } } while (0); break; case (((3) << 2) | (3)): do { if ((A_f[3] > B_f[3] || (A_f[3] == B_f[3] && (A_f[2] > B_f[2] || (A_f[2] == B_f[2] && (A_f[1] > B_f[1] || (A_f[1] == B_f[1] && A_f[0] > B_f[0]) )) )) ) || ((A_f[0] == B_f[0] && A_f[1] == B_f[1] && A_f[2] == B_f[2] && A_f[3] == B_f[3]) && ('/' == '+' || '/' == '*'))) { R_s = A_s; (R_f[0] = A_f[0], R_f[1] = A_f[1], R_f[2] = A_f[2], R_f[3] = A_f[3]); } else { R_s = B_s; (R_f[0] = B_f[0], R_f[1] = B_f[1], R_f[2] = B_f[2], R_f[3] = B_f[3]); } R_c = 3; } while (0); break; case (((3) << 2) | (0)): case (((3) << 2) | (2)): case (((3) << 2) | (1)): R_s = A_s; (R_f[0] = A_f[0], R_f[1] = A_f[1], R_f[2] = A_f[2], R_f[3] = A_f[3]); R_c = A_c; break; case (((0) << 2) | (3)): case (((2) << 2) | (3)): case (((1) << 2) | (3)): R_s = B_s; (R_f[0] = B_f[0], R_f[1] = B_f[1], R_f[2] = B_f[2], R_f[3] = B_f[3]); R_c = B_c; break; case (((0) << 2) | (2)): case (((1) << 2) | (2)): case (((1) << 2) | (0)): R_c = 1; break; case (((0) << 2) | (1)): _fex |= (0x04); case (((2) << 2) | (1)): case (((2) << 2) | (0)): R_c = 2; break; case (((2) << 2) | (2)): case (((1) << 2) | (1)): R_s = 1; R_c = 3; (R_f[3] = ((unsigned int)1 << (113 -2) % 32), R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); _fex |= (0x01); break; default: abort(); } } while (0);
  do { do { switch (R_c) { case 0: R_e += 16383; if (R_e > 0) { do { if ((R_f[0]) & 7) _fex |= (0x20); switch ((_fcw & 0xc00)) { case 0: do { if (((R_f[0]) & 15) != ((unsigned int)1 << 2)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 2)) < ((unsigned int)1 << 2)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0xc00: (void)0; break; case 0x800: do { if (!R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0x400: do { if (R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; } } while (0); if (((R_f[3]) & ((unsigned int)1 << ((3 + 113) % 32)))) { ((R_f[3]) &= ~((unsigned int)1 << ((3 + 113) % 32))); R_e++; } do { int _up, _down, _skip, _i; _skip = (3) / 32; _down = (3) % 32; _up = 32 - _down; if (!_down) for (_i = 0; _i <= 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip]; else { for (_i = 0; _i < 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip] >> _down | R_f[_i+_skip+1] << _up; R_f[_i++] = R_f[3] >> _down; } for (; _i < 4; ++_i) R_f[_i] = 0; } while (0); if (R_e >= 32767) { switch ((_fcw & 0xc00)) { case 0: R_c = 2; break; case 0x800: if (!R_s) R_c = 2; break; case 0x400: if (R_s) R_c = 2; break; } if (R_c == 2) { R_e = 32767; (R_f[3] = 0, R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); } else { R_e = 32767 - 1; (R_f[3] = (~(signed int)0), R_f[2] = (~(signed int)0), R_f[1] = (~(signed int)0), R_f[0] = (~(signed int)0)); } _fex |= (0x08); _fex |= (0x20); } } else { R_e = -R_e + 1; if (R_e <= (3 + 113)) { do { int _sticky; do { int _up, _down, _skip, _i; unsigned int _s; _skip = (R_e) / 32; _down = (R_e) % 32; _up = 32 - _down; for (_s = _i = 0; _i < _skip; ++_i) _s |= R_f[_i]; if (!_down) for (_i = 0; _i <= 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip]; else { _s |= R_f[_i] << _up; for (_i = 0; _i < 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip] >> _down | R_f[_i+_skip+1] << _up; R_f[_i++] = R_f[3] >> _down; } for (; _i < 4; ++_i) R_f[_i] = 0; _sticky = (_s != 0); } while (0); R_f[0] |= _sticky; } while (0); do { if ((R_f[0]) & 7) _fex |= (0x20); switch ((_fcw & 0xc00)) { case 0: do { if (((R_f[0]) & 15) != ((unsigned int)1 << 2)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 2)) < ((unsigned int)1 << 2)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0xc00: (void)0; break; case 0x800: do { if (!R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0x400: do { if (R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; } } while (0); if ((R_f[3]) & (((unsigned int)1 << ((3 + 113) % 32)) >> 1)) { R_e = 1; (R_f[3] = 0, R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); } else { R_e = 0; do { int _up, _down, _skip, _i; _skip = (3) / 32; _down = (3) % 32; _up = 32 - _down; if (!_down) for (_i = 0; _i <= 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip]; else { for (_i = 0; _i < 3-_skip; ++_i) R_f[_i] = R_f[_i+_skip] >> _down | R_f[_i+_skip+1] << _up; R_f[_i++] = R_f[3] >> _down; } for (; _i < 4; ++_i) R_f[_i] = 0; } while (0); _fex |= (0x10); } } else { R_e = 0; if (!((R_f[0] | R_f[1] | R_f[2] | R_f[3]) == 0)) { (R_f[3] = 0, R_f[2] = 0, R_f[1] = 0, R_f[0] = 1); do { if ((R_f[0]) & 7) _fex |= (0x20); switch ((_fcw & 0xc00)) { case 0: do { if (((R_f[0]) & 15) != ((unsigned int)1 << 2)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 2)) < ((unsigned int)1 << 2)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0xc00: (void)0; break; case 0x800: do { if (!R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; case 0x400: do { if (R_s && ((R_f[0]) & 7)) do { unsigned int _t; _t = ((R_f[0] += ((unsigned int)1 << 3)) < ((unsigned int)1 << 3)); R_f[1] += _t; _t = (R_f[1] < _t); R_f[2] += _t; _t = (R_f[2] < _t); R_f[3] += _t; } while (0); } while (0); break; } } while (0); (R_f[0]) >>= (3); } _fex |= (0x10); } } break; case 1: R_e = 0; (R_f[3] = 0, R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); break; case 2: R_e = 32767; (R_f[3] = 0, R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); break; case 3: R_e = 32767; if (!1) { (R_f[3] = ((unsigned int)1 << (113 -2) % 32), R_f[2] = 0, R_f[1] = 0, R_f[0] = 0); R_s = 1; } else (R_f[3]) |= ((unsigned int)1 << (113 -2) % 32); break; } } while (0); do { union _FP_UNION_Q _flo; _flo.bits.frac0 = R_f[0]; _flo.bits.frac1 = R_f[1]; _flo.bits.frac2 = R_f[2]; _flo.bits.frac3 = R_f[3]; _flo.bits.exp = R_e; _flo.bits.sign = R_s; (r) = _flo.flt; } while (0); } while (0);
  do { if (_fex & 0x01) { float f = 0.0; __asm__ __volatile__ ("fdiv %0" : "+t" (f)); __asm__ __volatile__ ("fwait"); } if (_fex & 0x04) { float f = 1.0, g = 0.0; __asm__ __volatile__ ("fdivp" : "=t" (f) : "0" (f), "u" (g) : "st(1)"); __asm__ __volatile__ ("fwait"); } if (_fex & 0x08) { struct fenv temp; __asm__ __volatile__ ("fnstenv %0" : "=m" (temp)); temp.__status_word |= 0x08; __asm__ __volatile__ ("fldenv %0" : : "m" (temp)); __asm__ __volatile__ ("fwait"); } if (_fex & 0x10) { struct fenv temp; __asm__ __volatile__ ("fnstenv %0" : "=m" (temp)); temp.__status_word |= 0x10; __asm__ __volatile__ ("fldenv %0" : : "m" (temp)); __asm__ __volatile__ ("fwait"); } if (_fex & 0x20) { struct fenv temp; __asm__ __volatile__ ("fnstenv %0" : "=m" (temp)); temp.__status_word |= 0x20; __asm__ __volatile__ ("fldenv %0" : : "m" (temp)); __asm__ __volatile__ ("fwait"); } } while (0);

  return r;
}
