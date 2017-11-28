	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl _f
_f:
LFB0:
	subq	$8, %rsp
LCFI0:
	cmpq	$3, %rdi
	ja	L3
	addq	$8, %rsp
LCFI1:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__f:
_f.cold.0:
L3:
LCFI2:
	call	_abort
LFE0:
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
	.text
	.align 4,0x90
	.globl _g
_g:
LFB1:
	ret
LFE1:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl _h
_h:
LFB2:
	cmpl	$2, %edi
	ja	L14
	subq	$8, %rsp
LCFI3:
	testl	$4294967292, %edi
	jne	L12
	addq	$8, %rsp
LCFI4:
	ret
	.align 4,0x90
L14:
	ret
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__h:
_h.cold.1:
L12:
LCFI5:
	call	_abort
LFE2:
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
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
	.set L$set$2,LHOTE0-LFB0
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB0
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LCOLDB0-.
	.set L$set$6,LCOLDE0-LCOLDB0
	.quad L$set$6
	.byte	0
	.byte	0x1
	.quad	LCFI2-.
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$7,LEFDE5-LASFDE5
	.long L$set$7
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB1-.
	.set L$set$8,LFE1-LFB1
	.quad L$set$8
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$9,LEFDE7-LASFDE7
	.long L$set$9
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB2-.
	.set L$set$10,LHOTE1-LFB2
	.quad L$set$10
	.byte	0
	.byte	0x4
	.set L$set$11,LCFI3-LFB2
	.long L$set$11
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$12,LCFI4-LCFI3
	.long L$set$12
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$13,LEFDE9-LASFDE9
	.long L$set$13
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LCOLDB1-.
	.set L$set$14,LCOLDE1-LCOLDB1
	.quad L$set$14
	.byte	0
	.byte	0x1
	.quad	LCFI5-.
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE9:
	.subsections_via_symbols
