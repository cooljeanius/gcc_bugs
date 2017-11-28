	.text
	.globl _fn4
_fn4:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, -12(%ebp)
	jne	L1
	call	_fn2
	testl	%eax, %eax
	jne	L1
	leave
	jmp	_fn1
L1:
	leave
	ret
	.subsections_via_symbols
