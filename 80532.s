	.text
	.align 4,0x90
	.globl _free_list
_free_list:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1
	.align 4,0x90
L3:
	subl	$12, %esp
	pushl	%ebx
	call	_free
	movl	(%ebx), %ebx
	addl	$16, %esp
	testl	%ebx, %ebx
	jne	L3
L1:
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
	.globl _foobar
_foobar:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %ebx
	pushl	%ebx
	call	_free
	movl	%ebx, (%esp)
	call	_free
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	$0
	pushl	%ebx
	call	_memset
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.subsections_via_symbols
