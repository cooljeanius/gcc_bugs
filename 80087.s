	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 6
	.globl	_f1                     ## -- Begin function f1
	.p2align	4, 0x90
_f1:                                    ## @f1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f2                     ## -- Begin function f2
	.p2align	4, 0x90
_f2:                                    ## @f2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
