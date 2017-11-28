	.comm	_a,123456,5
	.text
	.globl _farray
_farray:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$123464, %esp
	call	___x86.get_pc_thunk.ax
L1$pb:
	subl	$12, %esp
	leal	-123464(%ebp), %eax
	pushl	%eax
	call	_sink
	addl	$16, %esp
	nop
	leave
	ret
	.globl _funnamed_array
_funnamed_array:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$123464, %esp
	call	___x86.get_pc_thunk.ax
L2$pb:
	leal	-123464(%ebp), %eax
	movl	$123456, %edx
	subl	$4, %esp
	pushl	%edx
	pushl	$0
	pushl	%eax
	call	_memset
	addl	$16, %esp
	subl	$12, %esp
	leal	-123464(%ebp), %eax
	pushl	%eax
	call	_sink
	addl	$16, %esp
	nop
	leave
	ret
	.globl _fvla
_fvla:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	___x86.get_pc_thunk.ax
L3$pb:
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	$123456, -12(%ebp)
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -16(%ebp)
	movl	%eax, %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	subl	%eax, %esp
	movl	%esp, %eax
	addl	$0, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	_sink
	addl	$16, %esp
	movl	%ebx, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
	.globl _falloca
_falloca:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	___x86.get_pc_thunk.ax
L4$pb:
	movl	$16, %eax
	subl	$1, %eax
	addl	$123471, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	subl	%eax, %esp
	movl	%esp, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -12(%ebp)
	subl	$12, %esp
	pushl	-12(%ebp)
	call	_sink
	addl	$16, %esp
	nop
	leave
	ret
	.globl _fmalloc
_fmalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	___x86.get_pc_thunk.ax
L5$pb:
	subl	$12, %esp
	pushl	$123456
	call	_malloc
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	subl	$12, %esp
	pushl	-12(%ebp)
	call	_sink
	addl	$16, %esp
	nop
	leave
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.subsections_via_symbols
