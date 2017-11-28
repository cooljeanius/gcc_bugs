	.cstring
lC0:
	.ascii "1234578\0"
lC1:
	.ascii "87654321\0"
	.text
	.align 4,0x90
	.globl __Z3fooP1Si
__Z3fooP1Si:
LFB0:
	call	___x86.get_pc_thunk.dx
L1$pb:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	leal	lC1-L1$pb(%edx), %ecx
	leal	lC0-L1$pb(%edx), %eax
	movl	12(%ebp), %edx
	testl	%edx, %edx
	cmove	%ecx, %eax
	movl	%eax, 12(%ebp)
	popl	%ebp
LCFI2:
	jmp	_strcpy
LFE0:
	.align 4,0x90
	.globl __Z3barP1Si
__Z3barP1Si:
LFB1:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	movl	8(%ebp), %eax
	movl	$875770417, (%eax)
	movl	$3684149, 4(%eax)
	popl	%ebp
LCFI5:
	ret
LFE1:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.dx
	.private_extern	___x86.get_pc_thunk.dx
___x86.get_pc_thunk.dx:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB2:
	movl	(%esp), %edx
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
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB2-.
	.set L$set$2,LFE2-LFB2
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
