	.text
	.align 4,0x90
	.globl __Z1fP1S
__Z1fP1S:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%esi
	pushl	%ebx
LCFI2:
	subl	$12, %esp
	pushl	$1
LEHB0:
	call	__Znwm
LEHE0:
	addl	$12, %esp
	pushl	$0
	movl	%eax, %esi
	pushl	$1
	pushl	%eax
LEHB1:
LCFI3:
	call	__ZN1SC1EiPS_
LEHE1:
	movl	8(%ebp), %eax
	addl	$16, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
LCFI4:
	popl	%esi
LCFI5:
	popl	%ebp
LCFI6:
	ret
L3:
LCFI7:
	movl	%eax, %ebx
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	%esi
	call	__ZdlPvm
	movl	%ebx, (%esp)
LEHB2:
	call	__Unwind_Resume
LEHE2:
LFE0:
	.section __DATA,__gcc_except_tab
GCC_except_table0:
LLSDA0:
	.byte	0xff
	.byte	0xff
	.byte	0x3
	.byte	0x27
	.set L$set$0,LEHB0-LFB0
	.long L$set$0
	.set L$set$1,LEHE0-LEHB0
	.long L$set$1
	.long	0
	.byte	0
	.set L$set$2,LEHB1-LFB0
	.long L$set$2
	.set L$set$3,LEHE1-LEHB1
	.long L$set$3
	.set L$set$4,L3-LFB0
	.long L$set$4
	.byte	0
	.set L$set$5,LEHB2-LFB0
	.long L$set$5
	.set L$set$6,LEHE2-LEHB2
	.long L$set$6
	.long	0
	.byte	0
	.text
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$7,LECIE1-LSCIE1
	.long L$set$7
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zPLR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x7
	.byte	0x9b
	.long	l___gxx_personality_v0$non_lazy_ptr-.
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
LSFDE1:
	.set L$set$8,LEFDE1-LASFDE1
	.long L$set$8
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB0-.
	.set L$set$9,LFE0-LFB0
	.long L$set$9
	.byte	0x4
	.long	LLSDA0-.
	.byte	0x4
	.set L$set$10,LCFI0-LFB0
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI1-LCFI0
	.long L$set$11
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$12,LCFI2-LCFI1
	.long L$set$12
	.byte	0x86
	.byte	0x3
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$13,LCFI3-LCFI2
	.long L$set$13
	.byte	0x2e
	.byte	0x10
	.byte	0x4
	.set L$set$14,LCFI4-LCFI3
	.long L$set$14
	.byte	0xa
	.byte	0xc3
	.byte	0x4
	.set L$set$15,LCFI5-LCFI4
	.long L$set$15
	.byte	0xc6
	.byte	0x4
	.set L$set$16,LCFI6-LCFI5
	.long L$set$16
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.set L$set$17,LCFI7-LCFI6
	.long L$set$17
	.byte	0xb
	.align 2
LEFDE1:
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol ___gxx_personality_v0
	.long	0
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
