	.cstring
lC0:
	.ascii "%lu\0"
	.text
	.align 4,0x90
	.globl _h
_h:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	pushl	$0
	addl	$lC0-L1$pb, %eax
	pushl	%eax
	call	_f
	addl	$16, %esp
	leave
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.subsections_via_symbols
