	.text
	.globl _foo
_foo:
	call	___x86.get_pc_thunk.ax
L1$pb:
	movl	$0, %eax
	ret
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.subsections_via_symbols
