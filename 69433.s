	.text
	.align 4,0x90
	.globl __Z2f0v
__Z2f0v:
LFB0:
	pushl	%ebp
LCFI0:
	xorl	%eax, %eax
	movl	%esp, %ebp
LCFI1:
	popl	%ebp
LCFI2:
	ret
LFE0:
	.cstring
lC0:
	.ascii "def\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl __Z2f1i
__Z2f1i:
LFB1:
	call	___x86.get_pc_thunk.ax
L1$pb:
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	movl	8(%ebp), %edx
	testl	%edx, %edx
	jne	L5
	addl	$lC0-L1$pb, %eax
	jmp	L4
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of___Z2f1i:
__Z2f1i.cold.0:
L5:
LCFI5:
	xorl	%eax, %eax
L4:
	popl	%ebp
LCFI6:
	ret
LFE1:
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
	.text
	.align 4,0x90
	.globl __Z2f2v
__Z2f2v:
LFB2:
	pushl	%ebp
LCFI7:
	movl	%esp, %ebp
LCFI8:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
LCFI9:
	call	___x86.get_pc_thunk.bx
L2$pb:
	subl	$28, %esp
	movl	$6513249, -28(%ebp)
	movzbl	__ZGVZ2f2vE1s-L2$pb(%ebx), %eax
	testb	%al, %al
	je	L8
L12:
	movl	__ZZ2f2vE1s-L2$pb(%ebx), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI10:
	popl	%esi
LCFI11:
	popl	%edi
LCFI12:
	popl	%ebp
LCFI13:
	ret
	.align 4,0x90
L8:
LCFI14:
	leal	__ZGVZ2f2vE1s-L2$pb(%ebx), %edi
	subl	$12, %esp
	pushl	%edi
	call	___cxa_guard_acquire
	addl	$16, %esp
	testl	%eax, %eax
	je	L12
	leal	-28(%ebp), %esi
	subl	$12, %esp
	pushl	%edi
	movl	%esi, __ZZ2f2vE1s-L2$pb(%ebx)
	call	___cxa_guard_release
	addl	$16, %esp
	movl	%esi, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI15:
	popl	%esi
LCFI16:
	popl	%edi
LCFI17:
	popl	%ebp
LCFI18:
	ret
LFE2:
	.align 4,0x90
	.globl __Z2f3v
__Z2f3v:
LFB3:
	pushl	%ebp
LCFI19:
	movl	%esp, %ebp
LCFI20:
	popl	%ebp
LCFI21:
	ret
LFE3:
	.zerofill __DATA,__bss3,__ZGVZ2f2vE1s,8,3
	.zerofill __DATA,__bss2,__ZZ2f2vE1s,4,2
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB4:
	movl	(%esp), %eax
	ret
LFE4:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
LFB5:
	movl	(%esp), %ebx
	ret
LFE5:
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
	.long	LFB4-.
	.set L$set$2,LFE4-LFB4
	.long L$set$2
	.byte	0
	.align 2
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB5-.
	.set L$set$4,LFE5-LFB5
	.long L$set$4
	.byte	0
	.align 2
LEFDE3:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
