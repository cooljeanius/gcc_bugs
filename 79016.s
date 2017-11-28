	.text
	.align 4,0x90
	.globl _fauto
_fauto:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$36, %esp
	leal	-11(%ebp), %eax
	movl	$0, -11(%ebp)
	pushl	%eax
	movb	$0, -7(%ebp)
	call	_f
	addl	$16, %esp
	leave
	ret
	.align 4,0x90
	.globl _funnamed
_funnamed:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$36, %esp
	leal	-11(%ebp), %eax
	movl	$16843009, -11(%ebp)
	pushl	%eax
	movb	$1, -7(%ebp)
	call	_f
	addl	$16, %esp
	leave
	ret
	.align 4,0x90
	.globl _falloca
_falloca:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leal	15(%esp), %eax
	subl	$12, %esp
	andl	$-16, %eax
	movl	$0, (%eax)
	movb	$0, 4(%eax)
	pushl	%eax
	call	_f
	addl	$16, %esp
	leave
	ret
	.align 4,0x90
	.globl _fmalloc
_fmalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	pushl	$3
	call	_malloc
	movl	$0, (%eax)
	movb	$0, 4(%eax)
	movl	%eax, (%esp)
	call	_f
	addl	$16, %esp
	leave
	ret
	.align 4,0x90
	.globl _fvla
_fvla:
	pushl	%ebp
	movl	$3, %edx
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cmpl	$3, %eax
	cmova	%edx, %eax
	addl	$15, %eax
	andl	$-16, %eax
	subl	%eax, %esp
	movl	$0, (%esp)
	movl	%esp, %eax
	subl	$12, %esp
	movb	$0, 16(%esp)
	pushl	%eax
	call	_f
	addl	$16, %esp
	leave
	ret
	.subsections_via_symbols
