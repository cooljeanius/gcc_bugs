	.text
	.globl __Z1f9tEnumType
__Z1f9tEnumType:
LFB0:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	sete	%al
	popq	%rbp
LCFI2:
	ret
LFE0:
	.globl __Z1g9tEnumType
__Z1g9tEnumType:
LFB1:
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	sete	%al
	popq	%rbp
LCFI5:
	ret
LFE1:
	.globl _main
_main:
LFB2:
	pushq	%rbp
LCFI6:
	movq	%rsp, %rbp
LCFI7:
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L6
	movl	$0, %edi
	call	__Z1f9tEnumType
	movzbl	%al, %eax
	jmp	L7
L6:
	movl	$1, %edi
	call	__Z1g9tEnumType
	movzbl	%al, %eax
L7:
	leave
LCFI8:
	ret
LFE2:
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
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$7,LFE1-LFB1
	.quad L$set$7
	.byte	0
	.byte	0x4
	.set L$set$8,LCFI3-LFB1
	.long L$set$8
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$11,LEFDE5-LASFDE5
	.long L$set$11
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2-.
	.set L$set$12,LFE2-LFB2
	.quad L$set$12
	.byte	0
	.byte	0x4
	.set L$set$13,LCFI6-LFB2
	.long L$set$13
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE5:
	.ident	"GCC: (GNU) 10.0.0 20191007 (experimental) [trunk revision 276658]"
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
