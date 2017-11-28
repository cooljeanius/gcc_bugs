	.text
	.align 4,0x90
	.globl __Z3foov
__Z3foov:
LFB0:
	call	___x86.get_pc_thunk.ax
L1$pb:
	movl	_x-L1$pb(%eax), %edx
	movl	_y-L1$pb(%eax), %eax
	movups	(%edx), %xmm0
	movups	%xmm0, (%eax)
	ret
LFE0:
	.align 4,0x90
	.globl __Z3voov
__Z3voov:
LFB1:
	call	___x86.get_pc_thunk.ax
L2$pb:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$24, %esp
	movaps	_v1-L2$pb(%eax), %xmm0
	movaps	%xmm0, -24(%ebp)
	movaps	%xmm0, _v2-L2$pb(%eax)
	leave
LCFI2:
	ret
LFE1:
	.align 4,0x90
	.globl __Z3aoov
__Z3aoov:
LFB2:
	call	___x86.get_pc_thunk.ax
L3$pb:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	subl	$24, %esp
	movaps	_a1-L3$pb(%eax), %xmm0
	movaps	%xmm0, -24(%ebp)
	movaps	%xmm0, _a2-L3$pb(%eax)
	leave
LCFI5:
	ret
LFE2:
	.align 4,0x90
	.globl __Z4loopv
__Z4loopv:
LFB3:
	call	___x86.get_pc_thunk.ax
L4$pb:
	movl	_z-L4$pb(%eax), %edx
	movups	(%edx), %xmm0
	movl	_y-L4$pb(%eax), %edx
	movl	_x-L4$pb(%eax), %eax
	movups	(%edx), %xmm1
	addps	%xmm1, %xmm0
	movups	%xmm0, (%eax)
	ret
LFE3:
	.align 4,0x90
	.globl __Z4voopv
__Z4voopv:
LFB4:
	call	___x86.get_pc_thunk.ax
L5$pb:
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	subl	$24, %esp
	movaps	_v2-L5$pb(%eax), %xmm1
	movaps	_v3-L5$pb(%eax), %xmm0
	movaps	%xmm1, -24(%ebp)
	addps	%xmm1, %xmm0
	movaps	%xmm0, _v1-L5$pb(%eax)
	leave
LCFI8:
	ret
LFE4:
	.align 4,0x90
	.globl __Z4aoopv
__Z4aoopv:
LFB5:
	call	___x86.get_pc_thunk.ax
L6$pb:
	pushl	%ebp
LCFI9:
	movl	%esp, %ebp
LCFI10:
	subl	$24, %esp
	movaps	_a2-L6$pb(%eax), %xmm1
	movaps	_a3-L6$pb(%eax), %xmm0
	movaps	%xmm1, -24(%ebp)
	addps	%xmm1, %xmm0
	movaps	%xmm0, _a1-L6$pb(%eax)
	leave
LCFI11:
	ret
LFE5:
	.globl _a3
	.zerofill __DATA,__pu_bss4,_a3,16,4
	.globl _a2
	.zerofill __DATA,__pu_bss4,_a2,16,4
	.globl _a1
	.zerofill __DATA,__pu_bss4,_a1,16,4
	.globl _v3
	.zerofill __DATA,__pu_bss4,_v3,16,4
	.globl _v2
	.zerofill __DATA,__pu_bss4,_v2,16,4
	.globl _v1
	.zerofill __DATA,__pu_bss4,_v1,16,4
	.globl _z
	.zerofill __DATA,__pu_bss2,_z,4,2
	.globl _y
	.zerofill __DATA,__pu_bss2,_y,4,2
	.globl _x
	.zerofill __DATA,__pu_bss2,_x,4,2
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB6:
	movl	(%esp), %eax
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
	.long	LFB6-.
	.set L$set$2,LFE6-LFB6
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
