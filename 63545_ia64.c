typedef int TItype __attribute__((mode(TI)));
typedef int DItype __attribute__((mode(DI)));
typedef unsigned int UDItype __attribute__((mode(DI)));

struct DWstruct { DItype high, low; };

typedef union
	{
		struct DWstruct s;
		TItype ll;
	} DWunion;

TItype
__multi3(TItype u, TItype v)
{
	const DWunion uu = { .ll = u };
	const DWunion vv = { .ll = v };
	DWunion w = { .ll = ({ DWunion __w; __asm__("xma.hu %0 = %2, %3, f0\n\txma.l %1 = %2, %3, f0" : "=&f" (__w.s.high)
												, "=f" (__w.s.low) : "f" (uu.s.low), "f" (vv.s.low)); __w.ll; }) };
	
	w.s.high += ((UDItype)uu.s.low * (UDItype)vv.s.high
				 + (UDItype)uu.s.high * (UDItype)vv.s.low);
	
	return w.ll;
}
