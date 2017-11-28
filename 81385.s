	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _f
_f:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	pushl	l_a$non_lazy_ptr-L1$pb(%eax)
	call	_strlen
	addl	$16, %esp
	cmpl	$6, %eax
	ja	L3
	leave
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__f:
_f.cold.0:
L3:
	call	_abort
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	pushl	8(%ebp)
	call	_strlen
	addl	$16, %esp
	cmpl	$6, %eax
	ja	L8
	leave
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__g:
_g.cold.1:
L8:
	call	_abort
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
	.comm	_a,7,2
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
	.subsections_via_symbols
