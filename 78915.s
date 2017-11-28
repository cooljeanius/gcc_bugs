	.text
	.align 4,0x90
	.globl _f0
_f0:
	pushl	%ebp
	movl	$1, %eax
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 4,0x90
	.globl _f1
_f1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	addl	$30, %eax
	andl	$-16, %eax
	subl	%eax, %esp
	leal	15(%esp), %eax
	andl	$-16, %eax
	movl	(%eax), %eax
	leave
	addl	$1, %eax
	ret
	.align 4,0x90
	.globl _f2
_f2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	pushl	8(%ebp)
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L8
	movl	(%eax), %eax
	leave
	addl	$1, %eax
	ret
L8:
	leave
	movl	$-1, %eax
	ret
	.subsections_via_symbols
