	.zerofill __DATA,__bss2,__ZL1i,4,2
	.zerofill __DATA,__bss2,__ZL1j,4,2
	.text
__Z41__static_initialization_and_destruction_0ii:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	call	___x86.get_pc_thunk.ax
L1$pb:
	cmpl	$1, 8(%ebp)
	jne	L3
	cmpl	$65535, 12(%ebp)
	jne	L3
	leal	__ZL1i-L1$pb(%eax), %edx
	movl	(%edx), %edx
	leal	__ZL1j-L1$pb(%eax), %eax
	movl	%edx, (%eax)
L3:
	nop
	popl	%ebp
LCFI2:
	ret
LFE0:
__GLOBAL__sub_I_zzz.c:
LFB1:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	call	___x86.get_pc_thunk.ax
L2$pb:
	pushl	$65535
	pushl	$1
	call	__Z41__static_initialization_and_destruction_0ii
	addl	$8, %esp
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
	.mod_init_func
	.align 2
	.long	__GLOBAL__sub_I_zzz.c
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
