	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	$25185, %edx
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movw	%dx, (%eax)
	movb	$99, 2(%eax)
	movl	$6710628, 3(%eax)
	movl	$6, %eax
	popl	%ebp
	ret
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	$25185, %edx
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movw	%dx, (%eax)
	movb	$99, 2(%eax)
	movl	$6710628, 3(%eax)
	popl	%ebp
	jmp	_strlen
	.subsections_via_symbols
