	.text
	.cstring
lC1:
	.ascii "%i %i\0"
	.text
	.globl _f
_f:
LFB0:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$16, %rsp
	movq	lC0(%rip), %rax
	leaq	-8(%rbp), %rcx
	movd	%rax, %xmm0
	movl	$1, %edx
	leaq	lC1(%rip), %rsi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	_sprintf
	movq	lC0(%rip), %rax
	leaq	-8(%rbp), %rcx
	movd	%rax, %xmm0
	movl	$1, %edx
	leaq	lC1(%rip), %rsi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	_sprintf
	nop
	leave
LCFI2:
	ret
LFE0:
	.literal8
	.align 3
lC0:
	.long	0
	.long	1073741824
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
	.ident	"GCC: (GNU) 10.0.0 20191007 (experimental) [trunk revision 276658]"
	.subsections_via_symbols
