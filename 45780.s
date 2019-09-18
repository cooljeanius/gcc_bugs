	.text
	.section __TEXT,__text_startup,regular,pure_instructions
	.globl _main
_main:
LFB2:
	testl	%edi, %edi
	movl	%edi, %eax
	je	L2
	testq	%rsi, %rsi
	jne	L3
	addl	%eax, %eax
	andl	$2, %eax
	ret
L3:
	movl	$1, %eax
L2:
	ret
LFE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2-.
	.set L$set$2,LFE2-LFB2
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
	.ident	"GCC: (GNU) 10.0.0 20190426 (experimental) [trunk revision 270609]"
	.subsections_via_symbols
