	.text
	.align 4,0x90
	.globl _g1
_g1:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	leal	1(%eax), %ebx
	pushl	%ebx
	call	_malloc
	movl	%eax, (%esi)
	movb	$123, (%eax)
	movl	%ebx, (%esp)
	call	_malloc
	movl	%eax, 4(%esi)
	movl	%eax, %ebx
	popl	%eax
	popl	%edx
	pushl	%edi
	pushl	%ebx
	call	_strcpy
	popl	%ecx
	popl	%eax
	pushl	%edi
	pushl	%ebx
	call	_strcpy
	movl	%esi, 8(%ebp)
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_f
	.cstring
lC0:
	.ascii "%-s\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl _g2
_g2:
	call	___x86.get_pc_thunk.dx
L1$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	8(%ebp), %esi
	movl	%edx, -28(%ebp)
	movl	12(%ebp), %edi
	leal	1(%eax), %ebx
	pushl	%ebx
	call	_malloc
	movl	%eax, (%esi)
	movb	$123, (%eax)
	movl	%ebx, (%esp)
	call	_malloc
	movl	-28(%ebp), %edx
	addl	$12, %esp
	movl	%eax, 4(%esi)
	pushl	%edi
	leal	lC0-L1$pb(%edx), %ebx
	pushl	%ebx
	pushl	%eax
	call	_sprintf
	movl	(%esi), %eax
	addl	$16, %esp
	cmpb	$123, (%eax)
	jne	L6
	subl	$4, %esp
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	call	_sprintf
	movl	%esi, 8(%ebp)
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_f
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__g2:
_g2.cold.0:
L6:
	call	_abort
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.dx
	.private_extern	___x86.get_pc_thunk.dx
___x86.get_pc_thunk.dx:
	movl	(%esp), %edx
	ret
	.subsections_via_symbols
