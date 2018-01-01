	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
LFB16:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$20, %esp
	pushl	$4
	call	__Znwm
	call	___cxa_pure_virtual
LFE16:
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
	.long	LFB16-.
	.set L$set$2,LFE16-LFB16
	.long L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB16
	.long L$set$3
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x4
	.align 2
LEFDE1:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
