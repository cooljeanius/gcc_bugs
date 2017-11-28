	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _wait_reading_process_output
_wait_reading_process_output:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	leal	l_chan_process$non_lazy_ptr-L1$pb(%eax), %ebx
	.align 4,0x90
L5:
	movl	(%ebx), %eax
	xorl	%edx, %edx
	leal	4096(%eax), %ecx
	.align 4,0x90
L4:
	cmpl	$0, (%eax)
	je	L2
	cmpl	$999, %edx
	jg	L7
	addl	$1, %edx
L2:
	addl	$4, %eax
	cmpl	%ecx, %eax
	jne	L4
	jmp	L5
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__wait_reading_process_output:
_wait_reading_process_output.cold.0:
L7:
	call	_abort
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_chan_process$non_lazy_ptr:
	.indirect_symbol _chan_process
	.long	0
	.subsections_via_symbols
