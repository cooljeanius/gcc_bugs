	.text
	.align 4,0x90
	.globl _f0
_f0:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 4,0x90
	.globl _f1
_f1:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.align 4,0x90
	.globl _g0
_g0:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _g1
_g1:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	leal	-17(%ebp), %eax
	subl	$28, %esp
	movl	$3420978, -17(%ebp)
	leal	-12(%ebp), %ebx
	pushl	%eax
	pushl	%ebx
	movl	$0, -13(%ebp)
	movb	$0, -9(%ebp)
	call	_strcat
	movl	%ebx, (%esp)
	call	_strlen
	addl	$16, %esp
	cmpl	$3, %eax
	jne	L10
	movl	-4(%ebp), %ebx
	leave
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__g1:
_g1.cold.0:
L10:
	call	_abort
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
	.subsections_via_symbols
