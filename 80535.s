	.cstring
lC0:
	.ascii "%'d\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	pushl	$123456
	leal	lC0-L1$pb(%eax), %edx
	pushl	%edx
	pushl	l_d$non_lazy_ptr-L1$pb(%eax)
	call	_sprintf
	addl	$16, %esp
	cmpl	$4, %eax
	jle	L3
	leave
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__f:
_f.cold.0:
L3:
	call	_abort
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
	.comm	_d,1
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
