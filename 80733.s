	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl __Z3foo1E
__Z3foo1E:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$8, %esp
	cmpl	$15, 8(%ebp)
	jg	L3
	leave
LCFI2:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___Z3foo1E:
__Z3foo1E.cold.0:
L3:
LCFI3:
	call	_abort
LFE0:
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl __Z3bar1E
__Z3bar1E:
LFB1:
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	subl	$8, %esp
	cmpl	$255, 8(%ebp)
	jg	L8
	leave
LCFI6:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___Z3bar1E:
__Z3bar1E.cold.1:
L8:
LCFI7:
	call	_abort
LFE1:
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB2:
	.text
LHOTB2:
	.align 4,0x90
	.globl __Z3foo1F
__Z3foo1F:
LFB2:
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	subl	$8, %esp
	cmpb	$15, 8(%ebp)
	ja	L12
	leave
LCFI10:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___Z3foo1F:
__Z3foo1F.cold.2:
L12:
LCFI11:
	call	_abort
LFE2:
LCOLDE2:
	.text
LHOTE2:
	.section __TEXT,__text_cold,regular,pure_instructions
	.text
	.align 4,0x90
	.globl __Z3bar1F
__Z3bar1F:
LFB3:
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	popl	%ebp
LCFI14:
	ret
LFE3:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
