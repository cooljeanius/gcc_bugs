	.text
	.globl __Z3foov
__Z3foov:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L1$pb:
	call	__Z1gv
LFE0:
	.globl _i
	.zerofill __DATA,__pu_bss2,_i,4,2
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 1
	.globl __ZN1BIXadL_Z1gvEEE3fooEv
	.weak_definition __ZN1BIXadL_Z1gvEEE3fooEv
__ZN1BIXadL_Z1gvEEE3fooEv:
LFB2:
	pushl	%ebp
LCFI2:
	movl	%esp, %ebp
LCFI3:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	call	__Z1gv
LFE2:
	.text
__Z41__static_initialization_and_destruction_0ii:
LFB3:
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	pushl	%ebx
	subl	$20, %esp
LCFI6:
	call	___x86.get_pc_thunk.bx
L3$pb:
	cmpl	$1, 8(%ebp)
	jne	L5
	cmpl	$65535, 12(%ebp)
	jne	L5
	subl	$12, %esp
	leal	-9(%ebp), %eax
	pushl	%eax
	call	__ZN1BIXadL_Z1gvEEE3fooEv
	addl	$16, %esp
	leal	_i-L3$pb(%ebx), %eax
	movl	$0, (%eax)
L5:
	nop
	movl	-4(%ebp), %ebx
	leave
LCFI7:
	ret
LFE3:
__GLOBAL__sub_I_79996.cc:
LFB4:
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L4$pb:
	subl	$8, %esp
	pushl	$65535
	pushl	$1
	call	__Z41__static_initialization_and_destruction_0ii
	addl	$16, %esp
	leave
LCFI10:
	ret
LFE4:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB5:
	movl	(%esp), %eax
	ret
LFE5:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB6:
	movl	(%esp), %ebx
	ret
LFE6:
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
	.long	LFB0-.
	.set L$set$2,LFE0-LFB0
	.long L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB0
	.long L$set$3
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB2-.
	.set L$set$6,LFE2-LFB2
	.long L$set$6
	.byte	0
	.byte	0x4
	.set L$set$7,LCFI2-LFB2
	.long L$set$7
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.long	LFB5-.
	.set L$set$10,LFE5-LFB5
	.long L$set$10
	.byte	0
	.align 2
LEFDE5:
LSFDE7:
	.set L$set$11,LEFDE7-LASFDE7
	.long L$set$11
LASFDE7:
	.long	LASFDE7-EH_frame1
	.long	LFB6-.
	.set L$set$12,LFE6-LFB6
	.long L$set$12
	.byte	0
	.align 2
LEFDE7:
	.mod_init_func
	.align 2
	.long	__GLOBAL__sub_I_79996.cc
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
