	.text
	.globl _main
_main:
LFB0:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
	subl	$52, %esp
LCFI2:
	call	___x86.get_pc_thunk.bx
L1$pb:
	cmpl	$0, -12(%ebp)
	setne	%al
	testb	%al, %al
	je	L2
	movl	$-1, %edx
	jmp	L3
L2:
	movl	$-2, %edx
L3:
	subl	$4, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	_main._omp_fn.0-L1$pb(%ebx), %eax
	pushl	%eax
	pushl	%edx
	call	_GOACC_parallel_keyed
	addl	$32, %esp
	cmpb	$0, -13(%ebp)
	je	L4
	movl	$-1, %edx
	jmp	L5
L4:
	movl	$-2, %edx
L5:
	subl	$4, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	_main._omp_fn.1-L1$pb(%ebx), %eax
	pushl	%eax
	pushl	%edx
	call	_GOACC_parallel_keyed
	addl	$32, %esp
	cmpl	$0, -20(%ebp)
	setne	%al
	testb	%al, %al
	je	L6
	movl	$-1, %edx
	jmp	L7
L6:
	movl	$-2, %edx
L7:
	subl	$4, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	_main._omp_fn.2-L1$pb(%ebx), %eax
	pushl	%eax
	pushl	%edx
	call	_GOACC_parallel_keyed
	addl	$32, %esp
	cmpb	$0, -21(%ebp)
	je	L8
	movl	$-1, %edx
	jmp	L9
L8:
	movl	$-2, %edx
L9:
	subl	$4, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	_main._omp_fn.3-L1$pb(%ebx), %eax
	pushl	%eax
	pushl	%edx
	call	_GOACC_parallel_keyed
	addl	$32, %esp
	cmpl	$0, -28(%ebp)
	setne	%al
	testb	%al, %al
	je	L10
	movl	$-1, %eax
	jmp	L11
L10:
	movl	$-2, %eax
L11:
	subl	$12, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%eax
	call	_GOACC_data_start
	addl	$32, %esp
	call	_GOACC_data_end
	cmpb	$0, -29(%ebp)
	je	L12
	movl	$-1, %eax
	jmp	L13
L12:
	movl	$-2, %eax
L13:
	subl	$12, %esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%eax
	call	_GOACC_data_start
	addl	$32, %esp
	call	_GOACC_data_end
	cmpl	$0, -36(%ebp)
	setne	%al
	leal	-52(%ebp), %edx
	movl	%edx, -48(%ebp)
	testb	%al, %al
	je	L14
	movl	$-1, %edx
	jmp	L15
L14:
	movl	$-2, %edx
L15:
	subl	$4, %esp
	pushl	$0
	pushl	$-2
	leal	__ZZ4mainE18.omp_data_kinds.10-L1$pb(%ebx), %eax
	pushl	%eax
	leal	__ZZ4mainE17.omp_data_sizes.9-L1$pb(%ebx), %eax
	pushl	%eax
	leal	-48(%ebp), %eax
	pushl	%eax
	pushl	$1
	pushl	%edx
	call	_GOACC_update
	addl	$32, %esp
	leal	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	cmpb	$0, -37(%ebp)
	je	L16
	movl	$-1, %edx
	jmp	L17
L16:
	movl	$-2, %edx
L17:
	subl	$4, %esp
	pushl	$0
	pushl	$-2
	leal	__ZZ4mainE18.omp_data_kinds.13-L1$pb(%ebx), %eax
	pushl	%eax
	leal	__ZZ4mainE18.omp_data_sizes.12-L1$pb(%ebx), %eax
	pushl	%eax
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	$1
	pushl	%edx
	call	_GOACC_update
	addl	$32, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
LCFI3:
	ret
LFE0:
_main._omp_fn.0:
LFB1:
	call	___x86.get_pc_thunk.ax
L2$pb:
	ret
LFE1:
_main._omp_fn.1:
LFB2:
	call	___x86.get_pc_thunk.ax
L3$pb:
	ret
LFE2:
_main._omp_fn.2:
LFB3:
	call	___x86.get_pc_thunk.ax
L4$pb:
	ret
LFE3:
_main._omp_fn.3:
LFB4:
	call	___x86.get_pc_thunk.ax
L5$pb:
	ret
LFE4:
	.data
	.align 2
__ZZ4mainE17.omp_data_sizes.9:
	.long	4
	.align 1
__ZZ4mainE18.omp_data_kinds.10:
	.word	642
	.align 2
__ZZ4mainE18.omp_data_sizes.12:
	.long	4
	.align 1
__ZZ4mainE18.omp_data_kinds.13:
	.word	642
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB5:
	movl	(%esp), %eax
	ret
LFE5:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB6:
	movl	(%esp), %ebx
	ret
LFE6:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB5-.
	.set L$set$2,LFE5-LFB5
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB6-.
	.set L$set$4,LFE6-LFB6
	.long L$set$4
	.byte	0
	.align 2
LEFDE3:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
