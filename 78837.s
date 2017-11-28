	.text
	.align 4,0x90
	.globl _f1
_f1:
LFB0:
	pushq	%rbp
LCFI0:
	cmpl	$31, %edi
	movq	%rsp, %rbp
LCFI1:
	jbe	L5
	cmpl	$122, %edi
	movl	%edi, %eax
	ja	L8
L2:
	addq	$30, %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %rdi
	andq	$-16, %rdi
	call	_f0
	leave
LCFI2:
	ret
	.align 4,0x90
L5:
LCFI3:
	movl	$32, %eax
	jmp	L2
	.align 4,0x90
L8:
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, %rdi
	call	_f0
	leave
LCFI4:
	ret
LFE0:
	.align 4,0x90
	.globl _f2
_f2:
LFB1:
	subq	$8, %rsp
LCFI5:
	cmpl	$31, %edi
	jbe	L11
	movl	%edi, %eax
	movl	%edi, %edi
	cmpl	$123, %eax
	jbe	L12
	movq	_malloc@GOTPCREL(%rip), %rax
	call	*%rax
	addq	$8, %rsp
LCFI6:
	movq	%rax, %rdi
	jmp	_f0
	.align 4,0x90
L11:
LCFI7:
	movl	$32, %edi
	movq	_alloca@GOTPCREL(%rip), %rax
	call	*%rax
	addq	$8, %rsp
LCFI8:
	movq	%rax, %rdi
	jmp	_f0
	.align 4,0x90
L12:
LCFI9:
	movq	_alloca@GOTPCREL(%rip), %rax
	call	*%rax
	addq	$8, %rsp
LCFI10:
	movq	%rax, %rdi
	jmp	_f0
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
LSFDE3:
	.set L$set$8,LEFDE3-LASFDE3
	.long L$set$8
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$9,LFE1-LFB1
	.quad L$set$9
	.byte	0
	.byte	0x4
	.set L$set$10,LCFI5-LFB1
	.long L$set$10
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xb
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$14,LCFI9-LCFI8
	.long L$set$14
	.byte	0xb
	.byte	0x4
	.set L$set$15,LCFI10-LCFI9
	.long L$set$15
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
	.subsections_via_symbols
