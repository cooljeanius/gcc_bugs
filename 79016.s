	.text
	.align 4,0x90
	.globl _fauto
_fauto:
LFB0:
	subq	$24, %rsp
LCFI0:
	leaq	13(%rsp), %rdi
	movl	$0, 13(%rsp)
	movb	$0, 17(%rsp)
	call	_f
	addq	$24, %rsp
LCFI1:
	ret
LFE0:
	.align 4,0x90
	.globl _funnamed
_funnamed:
LFB1:
	subq	$24, %rsp
LCFI2:
	leaq	13(%rsp), %rdi
	movl	$16843009, 13(%rsp)
	movb	$1, 17(%rsp)
	call	_f
	addq	$24, %rsp
LCFI3:
	ret
LFE1:
	.align 4,0x90
	.globl _falloca
_falloca:
LFB2:
	pushq	%rbp
LCFI4:
	movq	%rsp, %rbp
LCFI5:
	subq	$32, %rsp
	leaq	15(%rsp), %rdi
	andq	$-16, %rdi
	movl	$0, (%rdi)
	movb	$0, 4(%rdi)
	call	_f
	leave
LCFI6:
	ret
LFE2:
	.align 4,0x90
	.globl _fmalloc
_fmalloc:
LFB3:
	subq	$8, %rsp
LCFI7:
	movl	$3, %edi
	call	_malloc
	movl	$0, (%rax)
	movq	%rax, %rdi
	movb	$0, 4(%rax)
	addq	$8, %rsp
LCFI8:
	jmp	_f
LFE3:
	.align 4,0x90
	.globl _fvla
_fvla:
LFB4:
	cmpl	$3, %edi
	movl	$3, %eax
	pushq	%rbp
LCFI9:
	cmova	%eax, %edi
	movq	%rsp, %rbp
LCFI10:
	movl	%edi, %edi
	addq	$15, %rdi
	shrq	$4, %rdi
	salq	$4, %rdi
	subq	%rdi, %rsp
	movq	%rsp, %rdi
	movl	$0, (%rsp)
	movb	$0, 4(%rsp)
	call	_f
	leave
LCFI11:
	ret
LFE4:
	.align 4,0x90
	.globl _g
_g:
LFB13:
	pushq	%rbx
LCFI12:
	movq	%rdi, %rbx
	movl	$8, %edi
	call	_f1
	movq	(%rbx), %rdx
	movq	%rdx, (%rax)
	movzbl	8(%rbx), %edx
	movb	%dl, 8(%rax)
	popq	%rbx
LCFI13:
	ret
LFE13:
	.align 4,0x90
	.globl _h
_h:
LFB14:
	pushq	%rbx
LCFI14:
	movq	%rdi, %rbx
	movl	$8, %edi
	call	_f1
	movq	%rbx, %rsi
	movl	$8, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	___memcpy_chk
	popq	%rbx
LCFI15:
	ret
LFE14:
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
	.byte	0x20
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
	.byte	0x20
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2-.
	.set L$set$10,LFE2-LFB2
	.quad L$set$10
	.byte	0
	.byte	0x4
	.set L$set$11,LCFI4-LFB2
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$13,LCFI6-LCFI5
	.long L$set$13
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$14,LEFDE7-LASFDE7
	.long L$set$14
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB3-.
	.set L$set$15,LFE3-LFB3
	.quad L$set$15
	.byte	0
	.byte	0x4
	.set L$set$16,LCFI7-LFB3
	.long L$set$16
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$17,LCFI8-LCFI7
	.long L$set$17
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$18,LEFDE9-LASFDE9
	.long L$set$18
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB4-.
	.set L$set$19,LFE4-LFB4
	.quad L$set$19
	.byte	0
	.byte	0x4
	.set L$set$20,LCFI9-LFB4
	.long L$set$20
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$21,LCFI10-LCFI9
	.long L$set$21
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$22,LCFI11-LCFI10
	.long L$set$22
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$23,LEFDE11-LASFDE11
	.long L$set$23
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB13-.
	.set L$set$24,LFE13-LFB13
	.quad L$set$24
	.byte	0
	.byte	0x4
	.set L$set$25,LCFI12-LFB13
	.long L$set$25
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$26,LCFI13-LCFI12
	.long L$set$26
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$27,LEFDE13-LASFDE13
	.long L$set$27
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB14-.
	.set L$set$28,LFE14-LFB14
	.quad L$set$28
	.byte	0
	.byte	0x4
	.set L$set$29,LCFI14-LFB14
	.long L$set$29
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$30,LCFI15-LCFI14
	.long L$set$30
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE13:
	.subsections_via_symbols
