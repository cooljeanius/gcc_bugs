	.text
	.globl _do_add
_do_add:
	pushl	%ebp
	movl	%esp, %ebp
	call	___x86.get_pc_thunk.ax
L1$pb:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	popl	%ebp
	ret
	.globl _add_by_incrementing
_add_by_incrementing:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	movl	12(%ebp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	12(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%ebp)
	jmp	L4
L5:
	addl	$1, 8(%ebp)
L4:
	movl	-4(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -4(%ebp)
	testl	%eax, %eax
	jg	L5
	movl	8(%ebp), %eax
	leave
	ret
	.cstring
LC0:
	.ascii "%d\12\0"
	.text
	.globl _main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	___x86.get_pc_thunk.bx
L3$pb:
	movl	$3, -12(%ebp)
	movl	$6, -16(%ebp)
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$8, %esp
	pushl	%eax
	leal	LC0-L3$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
	subl	$8, %esp
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	_do_add
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	LC0-L3$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
	subl	$8, %esp
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	_add_by_incrementing
	addl	$16, %esp
	subl	$8, %esp
	pushl	%eax
	leal	LC0-L3$pb(%ebx), %eax
	pushl	%eax
	call	_printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.subsections_via_symbols
