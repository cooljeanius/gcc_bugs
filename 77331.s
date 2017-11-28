	.cstring
lC0:
	.ascii "hello %i\0"
lC1:
	.ascii "hello %i world\0"
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
	pushl	8(%ebp)
	leal	lC0-L1$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	leal	lC1-L1$pb(%ebx), %eax
	pushl	%eax
	call	_printf
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
	.subsections_via_symbols
