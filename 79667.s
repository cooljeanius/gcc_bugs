	.text
	.globl __Z1fv
__Z1fv:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$16, %esp
	call	___x86.get_pc_thunk.ax
L1$pb:
	nop
	leave
LCFI2:
	ret
LFE0:
	.globl __Z1gv
__Z1gv:
LFB1:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	subl	$16, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	nop
	leave
LCFI5:
	ret
LFE1:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB2:
	movl	(%esp), %eax
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
