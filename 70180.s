	.globl _p
	.data
	.align 2
_p:
	.long	4
	.globl _q
	.zerofill __DATA,__pu_bss2,_q,4,2
	.globl _r
	.zerofill __DATA,__pu_bss2,_r,4,2
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
