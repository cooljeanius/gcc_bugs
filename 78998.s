	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, 8(%ebp)
	popl	%ebp
	jmp	_strlen
	.subsections_via_symbols
