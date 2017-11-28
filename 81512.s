	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12376, %esp
	leal	15(%esp), %eax
	leave
	andl	$-16, %eax
	ret
	.subsections_via_symbols
