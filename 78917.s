	.text
	.align 4,0x90
	.globl _g
_g:
LFB0:
	subq	$8, %rsp
LCFI0:
	xorl	%edi, %edi
	call	_strlen
	addq	$8, %rsp
LCFI1:
	ret
LFE0:
	.cstring
lC0:
	.ascii "123\0"
	.text
	.align 4,0x90
	.globl _f
_f:
LFB1:
	subq	$8, %rsp
LCFI2:
	movl	$0, %eax
	testl	%edi, %edi
	leaq	1+lC0(%rip), %rdi
	cmove	%rax, %rdi
	call	_strlen
	addq	$8, %rsp
LCFI3:
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
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB0
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$6,LFE1-LFB1
	.quad L$set$6
	.byte	0
	.byte	0x4
	.set L$set$7,LCFI2-LFB1
	.long L$set$7
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
	.ident	"GCC: (GNU) 10.0.0 20190426 (experimental) [trunk revision 270609]"
	.subsections_via_symbols
