	.text
	.align 4,0x90
	.globl _f1
_f1:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 4,0x90
	.globl _f2
_f2:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.subsections_via_symbols
