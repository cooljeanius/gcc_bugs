	.text
	.globl __Z12f_ptr_unusedPv
__Z12f_ptr_unusedPv:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	call	___x86.get_pc_thunk.ax
L1$pb:
	nop
	popl	%ebp
LCFI2:
	ret
LFE0:
	.globl __Z14f_ptr_noreturnPFvvE
__Z14f_ptr_noreturnPFvvE:
LFB1:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	movl	8(%ebp), %eax
	call	*%eax
	nop
	leave
LCFI5:
	ret
LFE1:
	.globl __Z14f_ptr_noreturnRFvvE
__Z14f_ptr_noreturnRFvvE:
LFB2:
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L3$pb:
	movl	8(%ebp), %eax
	call	*%eax
	nop
	leave
LCFI8:
	ret
LFE2:
	.globl __Z19ftempl_ptr_noreturnIXadL_Z1fvEEEiv
__Z19ftempl_ptr_noreturnIXadL_Z1fvEEEiv:
LFB5:
	pushl	%ebp
LCFI9:
	movl	%esp, %ebp
LCFI10:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L4$pb:
	call	__Z1fv
	nop
	leave
LCFI11:
	ret
LFE5:
	.globl __Z19ftempl_ref_noreturnIL_Z1fvEEiv
__Z19ftempl_ref_noreturnIL_Z1fvEEiv:
LFB6:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L5$pb:
	call	__Z1fv
	nop
	leave
LCFI14:
	ret
LFE6:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB7:
	movl	(%esp), %eax
	ret
LFE7:
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
	.long	LFB1-.
	.set L$set$2,LFE1-LFB1
	.long L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI3-LFB1
	.long L$set$3
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI4-LCFI3
	.long L$set$4
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$5,LCFI5-LCFI4
	.long L$set$5
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$6,LEFDE3-LASFDE3
	.long L$set$6
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB2-.
	.set L$set$7,LFE2-LFB2
	.long L$set$7
	.byte	0
	.byte	0x4
	.set L$set$8,LCFI6-LFB2
	.long L$set$8
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$9,LCFI7-LCFI6
	.long L$set$9
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$10,LCFI8-LCFI7
	.long L$set$10
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.align 2
LEFDE3:
LSFDE5:
	.set L$set$11,LEFDE5-LASFDE5
	.long L$set$11
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB5-.
	.set L$set$12,LFE5-LFB5
	.long L$set$12
	.byte	0
	.byte	0x4
	.set L$set$13,LCFI9-LFB5
	.long L$set$13
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$14,LCFI10-LCFI9
	.long L$set$14
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$15,LCFI11-LCFI10
	.long L$set$15
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.align 2
LEFDE5:
LSFDE7:
	.set L$set$16,LEFDE7-LASFDE7
	.long L$set$16
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB6-.
	.set L$set$17,LFE6-LFB6
	.long L$set$17
	.byte	0
	.byte	0x4
	.set L$set$18,LCFI12-LFB6
	.long L$set$18
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$19,LCFI13-LCFI12
	.long L$set$19
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$20,LCFI14-LCFI13
	.long L$set$20
	.byte	0xc4
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.align 2
LEFDE7:
LSFDE9:
	.set L$set$21,LEFDE9-LASFDE9
	.long L$set$21
LASFDE9:
	.long	LASFDE9-EH_frame1
	.long	LFB7-.
	.set L$set$22,LFE7-LFB7
	.long L$set$22
	.byte	0
	.align 2
LEFDE9:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
