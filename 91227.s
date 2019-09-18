	.text
	.align 4,0x90
	.globl __Z1fPc
__Z1fPc:
LFB0:
	ret
LFE0:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl __Z1gPc
__Z1gPc:
LFB1:
	subq	$24, %rsp
LCFI0:
	leaq	16(%rsp), %rdx
	cmpq	%rdx, %rdi
	jbe	L6
	leaq	13(%rsp), %rax
	cmpq	%rax, %rdi
	jnb	L6
	addq	$24, %rsp
LCFI1:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
__Z1gPc.cold:
LFSB1:
L6:
LCFI2:
	call	_abort
LFE1:
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$4,LHOTE0-LFB1
	.quad L$set$4
	.byte	0
	.byte	0x4
	.set L$set$5,LCFI0-LFB1
	.long L$set$5
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$6,LCFI1-LCFI0
	.long L$set$6
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$7,LEFDE5-LASFDE5
	.long L$set$7
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFSB1-.
	.set L$set$8,LCOLDE0-LFSB1
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI2-LFSB1
	.long L$set$9
	.byte	0xe
	.byte	0x20
	.align 3
LEFDE5:
	.ident	"GCC: (GNU) 10.0.0 20190426 (experimental) [trunk revision 270609]"
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
