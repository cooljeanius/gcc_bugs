	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	leal	-264(%ebp), %ebx
	subl	$264, %esp
	movl	%ebx, %edi
	pushl	8(%ebp)
	pushl	%ebx
	call	_strcpy
	xorl	%eax, %eax
	movl	$64, %ecx
	rep; stosl
	movl	%ebx, (%esp)
	call	_sink
	addl	$16, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	leal	-264(%ebp), %ebx
	subl	$260, %esp
	movl	%ebx, %edi
	pushl	$256
	pushl	8(%ebp)
	pushl	%ebx
	call	_strncpy
	xorl	%eax, %eax
	movl	$64, %ecx
	rep; stosl
	movl	%ebx, (%esp)
	call	_sink
	addl	$16, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
	.subsections_via_symbols
