	.comm	_a,32,5
	.text
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	call	___x86.get_pc_thunk.ax
L1$pb:
	subl	$12, %esp
	leal	-40(%ebp), %eax
	pushl	%eax
	call	_f
	addl	$16, %esp
	nop
	leave
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.subsections_via_symbols
