	.text
	.align 4,0x90
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$16, %esp
	movl	12(%ebp), %ebx
	pushl	%ebx
	call	_strlen
	addl	$12, %esp
	addl	$1, %eax
	pushl	%eax
	pushl	%ebx
	pushl	8(%ebp)
	call	_memcpy
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _g
_g:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	12(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	_strlen
	popl	%edx
	popl	%ecx
	pushl	%ebx
	movl	%eax, %esi
	pushl	8(%ebp)
	call	_strcat
	movl	%ebx, (%esp)
	call	_strlen
	addl	$16, %esp
	cmpl	%eax, %esi
	jne	L6
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__g:
_g.cold.0:
L6:
	call	_abort
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
	.subsections_via_symbols
