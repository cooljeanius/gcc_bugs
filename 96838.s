	.text
	.p2align 4
	.globl _f
_f:
LFB0:
	pushq	%rbp
LCFI0:
	movl	$2147483648, %eax
	movq	%rsp, %rbp
LCFI1:
	pushq	%r12
	subq	$8, %rsp
LCFI2:
	cmpq	%rax, %rdi
	cmovnb	%rdi, %rax
	movl	%eax, %edi
	movq	%rax, %r12
	call	_salloc
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	-8(%rbp), %r12
	leave
LCFI3:
	ret
LFE0:
	.p2align 4
	.globl _g
_g:
LFB1:
	pushq	%rbp
LCFI4:
	movl	$2147483648, %eax
	movq	%rsp, %rbp
LCFI5:
	pushq	%r12
	subq	$8, %rsp
LCFI6:
	cmpq	%rax, %rdi
	cmovnb	%rdi, %rax
	movl	%eax, %edi
	movq	%rax, %r12
	call	_ualloc
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_memset
	movq	-8(%rbp), %r12
	leave
LCFI7:
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
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$7,LEFDE3-LASFDE3
	.long L$set$7
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$8,LFE1-LFB1
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI4-LFB1
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE3:
	.ident	"GCC: (GNU) 11.0.0 20200518 (experimental)"
	.subsections_via_symbols
