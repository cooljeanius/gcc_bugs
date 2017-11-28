	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	pushl	8(%ebp)
	leal	-16(%ebp), %eax
	pushl	%eax
	call	_strcpy
	leave
	ret
	.align 4,0x90
	.globl _h
_h:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$28, %esp
	leal	-16(%ebp), %eax
	pushl	$8
	pushl	8(%ebp)
	pushl	%eax
	call	_strncpy
	leave
	ret
	.subsections_via_symbols
