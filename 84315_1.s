	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
	movl	492, %eax
	ud2
	.subsections_via_symbols
