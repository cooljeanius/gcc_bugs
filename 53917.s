	.text
	.globl _fn3
_fn3:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	movl	l_a$non_lazy_ptr-L1$pb(%eax), %edx
	movl	l_b$non_lazy_ptr-L1$pb(%eax), %ebx
	cmpl	$0, (%edx)
	je	L2
	movl	$0, (%ebx)
	jmp	L1
L2:
	call	_fn2
	testl	%eax, %eax
	jne	L4
	movl	$1, (%ebx)
	jmp	L5
L4:
	xorl	%eax, %eax
	movl	%eax, (%ebx)
	testl	%eax, %eax
	je	L1
L5:
	popl	%edx
	popl	%ebx
	popl	%ebp
	jmp	_fn1
L1:
	popl	%eax
	popl	%ebx
	popl	%ebp
	ret
	.comm	_b,4,2
	.comm	_a,4,2
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_a$non_lazy_ptr:
	.indirect_symbol _a
	.long	0
l_b$non_lazy_ptr:
	.indirect_symbol _b
	.long	0
	.subsections_via_symbols
