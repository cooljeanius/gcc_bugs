	.text
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	movl	l_d$non_lazy_ptr-L1$pb(%eax), %eax
	movl	$858927408, (%eax)
	movl	$926299444, 4(%eax)
	popl	%ebp
	ret
	.align 4,0x90
	.globl _g
_g:
	call	___x86.get_pc_thunk.ax
L2$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	movl	8(%ebp), %edx
	movl	l_d$non_lazy_ptr-L2$pb(%eax), %eax
	movl	4(%edx), %ebx
	movl	(%edx), %ecx
	movl	%ebx, 4(%eax)
	movl	%ecx, (%eax)
	popl	%ebx
	popl	%ebp
	ret
	.comm	_d,3
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_d$non_lazy_ptr:
	.indirect_symbol _d
	.long	0
	.subsections_via_symbols
