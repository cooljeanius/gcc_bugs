	.cstring
lC0:
	.ascii "%lc foo\0"
	.text
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	pushl	$97
	leal	lC0-L1$pb(%eax), %edx
	movl	l_d$non_lazy_ptr-L1$pb(%eax), %eax
	pushl	%edx
	addl	$1, %eax
	pushl	%eax
	call	_sprintf
	addl	$16, %esp
	leave
	ret
	.cstring
lC1:
	.ascii "%C bar\0"
	.text
	.align 4,0x90
	.globl _g
_g:
	call	___x86.get_pc_thunk.ax
L2$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	pushl	$97
	leal	lC1-L2$pb(%eax), %edx
	movl	l_d$non_lazy_ptr-L2$pb(%eax), %eax
	pushl	%edx
	addl	$1, %eax
	pushl	%eax
	call	_sprintf
	addl	$16, %esp
	leave
	ret
	.comm	_d,1
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
