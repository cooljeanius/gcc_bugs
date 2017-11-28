	.comm	_d,4,2
	.cstring
lC0:
	.ascii "%r\0"
lC1:
	.ascii "%2$i%1$i\0"
	.text
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	call	___x86.get_pc_thunk.bx
L1$pb:
	subl	$8, %esp
	leal	lC0-L1$pb(%ebx), %eax
	pushl	%eax
	leal	l_d$non_lazy_ptr-L1$pb(%ebx), %eax
	movl	(%eax), %eax
	pushl	%eax
	call	_sprintf
	addl	$16, %esp
	pushl	$234
	pushl	$1
	leal	lC1-L1$pb(%ebx), %eax
	pushl	%eax
	leal	l_d$non_lazy_ptr-L1$pb(%ebx), %eax
	movl	(%eax), %eax
	pushl	%eax
	call	_sprintf
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_d$non_lazy_ptr:
	.indirect_symbol _d
	.long	0
	.subsections_via_symbols
