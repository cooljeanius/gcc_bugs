	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	call	___x86.get_pc_thunk.si
L1$pb:
	pushl	%ebx
	movl	8(%ebp), %ebx
	subl	$8, %esp
	leal	_foo-L1$pb(%esi), %eax
	pushl	%eax
	pushl	%ebx
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L1
	leal	_bar-L1$pb(%esi), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	%ebx
	call	_strcmp
	addl	$16, %esp
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	subl	$1, %eax
L1:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.globl _bar
	.const
	.align 2
_bar:
	.ascii "123\0"
	.globl _foo
	.align 2
_foo:
	.ascii "123\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.si
	.private_extern	___x86.get_pc_thunk.si
___x86.get_pc_thunk.si:
	movl	(%esp), %esi
	ret
	.subsections_via_symbols
