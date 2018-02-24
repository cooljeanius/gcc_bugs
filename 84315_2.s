	.text
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$31, 8(%ebp)
	popl	%ebp
	movl	l_a$non_lazy_ptr-L1$pb(%eax), %edx
	movl	$0, %eax
	cmovbe	%edx, %eax
	ret
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
	movl	0, %eax
	ud2
	.comm	_a,32,5
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_a$non_lazy_ptr:
	.indirect_symbol _a
	.long	0
	.subsections_via_symbols
