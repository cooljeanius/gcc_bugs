	.globl _i
	.zerofill __DATA,__pu_bss2,_i,4,2
	.text
__Z41__static_initialization_and_destruction_0ii:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
	subl	$4, %esp
LCFI2:
	call	___x86.get_pc_thunk.bx
L1$pb:
	cmpl	$1, 8(%ebp)
	jne	L3
	cmpl	$65535, 12(%ebp)
	jne	L3
	subl	$8, %esp
	pushl	$0
	pushl	$123
	call	__Z3fooIiEiT_PAmistS0_Li5E_i
	addl	$16, %esp
	movl	%eax, %edx
	leal	_i-L1$pb(%ebx), %eax
	movl	%edx, (%eax)
L3:
	nop
	movl	-4(%ebp), %ebx
	leave
LCFI3:
	ret
LFE0:
__GLOBAL__sub_I_80227_bad.cc:
LFB1:
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	subl	$8, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	subl	$8, %esp
	pushl	$65535
	pushl	$1
	call	__Z41__static_initialization_and_destruction_0ii
	addl	$16, %esp
	leave
LCFI6:
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
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB3:
	movl	(%esp), %ebx
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
	.long	LFB2-.
	.set L$set$2,LFE2-LFB2
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB3-.
	.set L$set$4,LFE3-LFB3
	.long L$set$4
	.byte	0
	.align 2
LEFDE3:
	.mod_init_func
	.align 2
	.long	__GLOBAL__sub_I_80227_bad.cc
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
