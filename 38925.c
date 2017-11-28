/*
 * The below program demonstrates a defeciency with gcc's constraint
 * syntax for 64-bit code: it's not possible to directly constrain an
 * operand to a register in the range r8 through r15.
 *
 * Furthermore, it is not possible to use '%rbp' in a constraint.
 *
 * It has been shown that gcc can assign a local variable to a
 * particular register
 * (http://gcc.gnu.org/bugzilla/show_bug.cgi?id=16331) but that does
 * not properly work when %rbp is being used.
 *
 * The code below executes a 'vmrun' instruction.  The intent of the
 * inline assembly is to indicate that all the named registers can be
 * clobbered by the 'vmrun' instruction.
 *
 * For simplicity, I've only set '_rbp' to zero to show that this
 * local variable is assigned to '%rbp'.
 *
 * Here is a snippet of the code that is generated:
 *
 *
 * 32:  48 8b 2d 00 00 00 00   mov    0(%rip),%rbp        # origRSP
 * 39:  48 8b 05 00 00 00 00   mov    0(%rip),%rax        # &guestVMCB
 * 40:  31 ed                  xor    %ebp,%ebp           # zero _rbp
 * 42:  0f 01 d8               vmrun
 * 45:  48 8b 3d 00 00 00 00   mov    0(%rip),%rdi        # 4c <test_function+0x3c>
 * 4c:  48 8d 75 f8            lea    0xfffffffffffffff8(%rbp),%rsi  # origRSP - 8
 *
 *
 * origRSP is allocated to '%rbp', and '_rsp' is allocated to the same
 * register.  Even though '_rsp' is set to zero and 'vmrun' can
 * clobber all the named registers, the compiler still uses '%rbp' as
 * if it were not modified at address 0x4c.
 *
 * Also, to add to the unusual behavior, removing the function
 * 'SetupVMCB' causes the issue to vanish.  SetupVMCB is unused.
 *
 * Using built-in specs.
 * Target: x86_64-redhat-linux
 * Configured with: ../configure --prefix=/usr \
 *                  --mandir=/usr/share/man \
 *                  --infodir=/usr/share/info                           \
 *                  --enable-shared --enable-threads=posix \
 *                  --enable-checking=release \
 *                  --with-system-zlib --enable-__cxa_atexit           \
 *                  --disable-libunwind-exceptions --enable-libgcj-multifile \
 *                  --enable-languages=c,c++,objc,obj-c++,java,fortran,ada \
 *                  --enable-java-awt=gtk --disable-dssi --enable-plugin \
 *                  --with-java-home=/usr/lib/jvm/java-1.4.2-gcj-1.4.2.0/jre \
 *                  --with-cpu=generic --host=x86_64-redhat-linux
 * Thread model: posix
 * gcc version 4.1.2 20071124 (Red Hat 4.1.2-42)
 *
 *
 * To build:
 *
 *   gcc -O2 -c -o main.o main.c
 *   objdump --disassemble main.o
 *
 */

typedef unsigned long uint64;
typedef struct {
	unsigned char  pad[256];
	uint64 rsp;
} VMCB;

void failure(uint64 a, uint64 b);
void SetupVMCB(uint64 rip, unsigned cpl);

uint64        guestVMCB;
volatile VMCB mappedGuestVMCB;

static inline __attribute__((always_inline)) void
VMRUN(uint64 vmcb)
{
	register unsigned long _rbx asm("rbx");
	register unsigned long _rcx asm("rcx");
	register unsigned long _rdx asm("rdx");
	register unsigned long _rbp asm("rbp") = 0;
	register unsigned long _rsi asm("rsi");
	register unsigned long _rdi asm("rdi");
	register unsigned long _r8 asm("r8");
	register unsigned long _r9 asm("r9");
	register unsigned long _r10 asm("r10");
	register unsigned long _r11 asm("r11");
	register unsigned long _r12 asm("r12");
	register unsigned long _r13 asm("r13");
	register unsigned long _r14 asm("r14");
	register unsigned long _r15 asm("r15");
	
	__asm__ __volatile__("vmrun"
						 : "+c" (_rcx), "+d" (_rdx), "+b" (_rbx), "+r" (_rbp),
						 "+S" (_rsi), "+D" (_rdi), "+r" (_r8), "+r" (_r9),
						 "+r" (_r10), "+r" (_r11), "+r" (_r12), "+r" (_r13),
						 "+r" (_r14), "+r" (_r15)
						 : "a" (vmcb)
						 : "memory");
}

int
test_function(void)
{
	uint64 origRSP;
	origRSP = mappedGuestVMCB.rsp;
	VMRUN(guestVMCB);
	{
		uint64 _act = (mappedGuestVMCB.rsp);
		uint64 _exp = (origRSP - sizeof(unsigned long));
		if (_exp != _act) {
			failure(_act, _exp);
		}
	}
	return 0;
}

void
SetupVMCB(uint64 rip, unsigned int cpl)
{
	(void)rip;
	(void)cpl;
}
