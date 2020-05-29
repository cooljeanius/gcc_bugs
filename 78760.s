	.text
	.cstring
lC0:
	.ascii "1234578\0"
lC1:
	.ascii "87654321\0"
	.text
	.p2align 4
	.globl _foo
_foo:
LFB0:
	leaq	lC1(%rip), %rax
	testl	%esi, %esi
	leaq	lC0(%rip), %rsi
	cmove	%rax, %rsi
	jmp	_strcpy
LFE0:
	.p2align 4
	.globl _bar
_bar:
LFB1:
	movabsq	$15823300344361521, %rax
	movq	%rax, (%rdi)
	ret
LFE1:
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
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$4,LFE1-LFB1
	.quad L$set$4
	.byte	0
	.align 3
LEFDE3:
	.ident	"GCC: (GNU) 10.0.0 20191007 (experimental) [trunk revision 276658]"
	.subsections_via_symbols
