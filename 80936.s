	.text
	.align 4,0x90
	.globl _zero0
_zero0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L5
	leave
	ret
	.align 4,0x90
L5:
	subl	$4, %esp
	pushl	12(%ebp)
	pushl	$0
	pushl	$0
	call	_memset
	addl	$16, %esp
	leave
	ret
	.align 4,0x90
	.globl _zero1
_zero1:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_zero0
	.align 4,0x90
	.globl _copy0
_copy0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L11
	popl	%ebp
	ret
	.align 4,0x90
L11:
	popl	%ebp
	jmp	_memcpy
	.align 4,0x90
	.globl _copy1
_copy1:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	L15
	popl	%ebp
	ret
	.align 4,0x90
L15:
	popl	%ebp
	jmp	_memcpy
	.align 4,0x90
	.globl _copy2
_copy2:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L19
	popl	%ebp
	ret
	.align 4,0x90
L19:
	popl	%ebp
	jmp	_memmove
	.align 4,0x90
	.globl _copy3
_copy3:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	L23
	popl	%ebp
	ret
	.align 4,0x90
L23:
	popl	%ebp
	jmp	_memmove
	.align 4,0x90
	.globl _cmp0
_cmp0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L27
	xorl	%eax, %eax
	popl	%ebp
	ret
	.align 4,0x90
L27:
	popl	%ebp
	jmp	_memcmp
	.align 4,0x90
	.globl _cmp1
_cmp1:
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	L31
	xorl	%eax, %eax
	popl	%ebp
	ret
	.align 4,0x90
L31:
	popl	%ebp
	jmp	_memcmp
	.align 4,0x90
	.globl _cmp2
_cmp2:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_cmp0
	.align 4,0x90
	.globl _cmp3
_cmp3:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	jmp	_cmp1
	.subsections_via_symbols
