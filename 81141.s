	.text
	.align 4,0x90
	.globl _h
_h:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
	.align 4,0x90
	.globl _hh
_hh:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movb	$49, 1(%eax)
	popl	%ebp
	ret
	.subsections_via_symbols
