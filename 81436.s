	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	leal	-8(%ebp), %eax
	subl	$24, %esp
	pushl	12(%ebp)
	leal	-9(%ebp), %ebx
	pushl	8(%ebp)
	pushl	%eax
	call	_strncat
	movl	%ebx, (%esp)
	call	_sink
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.subsections_via_symbols
