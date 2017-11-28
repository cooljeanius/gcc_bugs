	.text
	.globl __Z1fP1S
__Z1fP1S:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	call	___x86.get_pc_thunk.ax
L1$pb:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	nop
	popl	%ebp
LCFI2:
	ret
LFE0:
	.globl __Z1gP1S
__Z1gP1S:
LFB1:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	call	___x86.get_pc_thunk.ax
L2$pb:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	nop
	popl	%ebp
LCFI5:
	ret
LFE1:
	.globl __Z1hP1S
__Z1hP1S:
LFB2:
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	call	___x86.get_pc_thunk.ax
L3$pb:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	nop
	popl	%ebp
LCFI8:
	ret
LFE2:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB3:
	movl	(%esp), %eax
	ret
LFE3:
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
	.long	LFB3-.
	.set L$set$2,LFE3-LFB3
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
