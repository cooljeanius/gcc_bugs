	.text
	.globl _f
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	call	___x86.get_pc_thunk.ax
L1$pb:
	movl	12(%ebp), %eax
	movl	%eax, %ebx
# 2 "65640.c" 1
	foo %ebx,%eax;
# 0 "" 2
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	%ecx, 8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %ebx
# 5 "65640.c" 1
	foo %ebx,%eax;
# 0 "" 2
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	%ecx, 8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %ebx
# 7 "65640.c" 1
	foo %ebx,%eax;
# 0 "" 2
	movl	%eax, 8(%ebp)
	movl	12(%ebp), %edx
	movl	%edx, %eax
# 8 "65640.c" 1
	foo %eax,%ebx;
# 0 "" 2
	movl	%ebx, %ecx
	movl	%ecx, 8(%ebp)
	movl	8(%ebp), %eax
	popl	%ebx
	popl	%ebp
	ret
