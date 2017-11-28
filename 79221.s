	.cstring
lC0:
	.ascii "01234567\0"
lC1:
	.ascii "89abcd\0"
	.text
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	cmpl	$0, 8(%ebp)
	pushl	$3
	leal	lC1-L1$pb(%eax), %ecx
	leal	lC0-L1$pb(%eax), %edx
	cmovns	%ecx, %edx
	pushl	%edx
	pushl	l_d$non_lazy_ptr-L1$pb(%eax)
	call	___strcat_chk
	addl	$16, %esp
	leave
	ret
	.cstring
lC2:
	.ascii "12345678\0"
lC3:
	.ascii "87654321\0"
	.text
	.align 4,0x90
	.globl _gf
_gf:
	call	___x86.get_pc_thunk.ax
L2$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	cmpl	$0, 8(%ebp)
	pushl	$3
	leal	lC3-L2$pb(%eax), %ecx
	leal	lC2-L2$pb(%eax), %edx
	cmovns	%ecx, %edx
	pushl	%edx
	pushl	l_d$non_lazy_ptr-L2$pb(%eax)
	call	___strcat_chk
	addl	$16, %esp
	leave
	ret
	.comm	_d,3
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_d$non_lazy_ptr:
	.indirect_symbol _d
	.long	0
	.subsections_via_symbols
