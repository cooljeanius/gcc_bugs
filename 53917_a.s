	.text
	.globl _fn4
_fn4:
LFB1:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$16, %rsp
	cmpl	$0, -4(%rbp)
	jne	L1
	xorl	%eax, %eax
	call	_fn2
	testl	%eax, %eax
	jne	L1
	leave
LCFI2:
	jmp	_fn1
L1:
LCFI3:
	leave
LCFI4:
	ret
LFE1:
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
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xb
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE1:
	.ident	"GCC: (GNU) 10.0.0 20191007 (experimental) [trunk revision 276658]"
	.subsections_via_symbols
