	.text
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$36, %esp
	leal	-12(%ebp), %eax
	pushl	%eax
	call	_f
	xorl	%eax, %eax
	leave
	ret
	.align 4,0x90
	.globl _h
_h:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	leal	-16(%ebp), %eax
	subl	$32, %esp
	pushl	%eax
	call	_f
	movl	-12(%ebp), %ebx
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_f
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.subsections_via_symbols
