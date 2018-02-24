	.text
	.align 4,0x90
_scan_separators:
	pushl	%ebp
	movl	%eax, %edx
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L1$pb:
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movzbl	(%eax), %eax
	movzbl	1(%edx), %ecx
	leal	L6-L1$pb(%edi), %esi
	movb	%al, -18(%ebp)
	movl	%esi, -24(%ebp)
	leal	1(%edx), %eax
	testb	%cl, %cl
	je	L3
	movl	%eax, -16(%ebp)
	.align 4,0x90
L2:
	cmpb	$92, %cl
	je	L33
	cmpb	%cl, -18(%ebp)
	je	L41
	movl	-16(%ebp), %eax
	movb	%cl, (%edx)
	leal	1(%edx), %esi
	leal	1(%eax), %ebx
	movzbl	1(%eax), %eax
	testb	%al, %al
	je	L35
L19:
	cmpb	$92, %al
	je	L53
	cmpb	%al, -18(%ebp)
	je	L34
	addl	$1, %esi
	addl	$1, %ebx
	movb	%al, -1(%esi)
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L19
	.align 4,0x90
L35:
	movl	%esi, %edx
	movl	%ebx, %eax
L3:
	cmpb	$0, -18(%ebp)
	movl	$0, %ecx
	cmovne	%ecx, %eax
L17:
	movb	$0, (%edx)
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L33:
	movl	-16(%ebp), %ebx
	movzbl	1(%ebx), %eax
	movb	%al, -17(%ebp)
	testb	%al, %al
	je	L54
L21:
	leal	2(%ebx), %eax
	movl	%eax, -16(%ebp)
	movzbl	-17(%ebp), %eax
	leal	-97(%eax), %ecx
	cmpb	$21, %cl
	ja	L4
	movl	-24(%ebp), %esi
	movzbl	%cl, %ecx
	movl	(%esi,%ecx,4), %eax
	addl	%edi, %eax
	jmp	*%eax
	.align 2,0x90
L6:
	.long	L14-L1$pb
	.long	L13-L1$pb
	.long	L4-L1$pb
	.long	L12-L1$pb
	.long	L11-L1$pb
	.long	L10-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L9-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L4-L1$pb
	.long	L8-L1$pb
	.long	L4-L1$pb
	.long	L7-L1$pb
	.long	L4-L1$pb
	.long	L5-L1$pb
	.align 4,0x90
L5:
	movb	$11, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
L30:
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L7:
	movb	$9, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	jne	L30
	.align 4,0x90
L32:
	movl	-16(%ebp), %eax
	movl	%esi, %edx
	jmp	L3
	.align 4,0x90
L8:
	movb	$13, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L9:
	movb	$10, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L10:
	movb	$12, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L11:
	movb	$27, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L12:
	movb	$127, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L13:
	movb	$8, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L14:
	movb	$7, (%edx)
	movzbl	2(%ebx), %ecx
	leal	1(%edx), %esi
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L4:
	movzbl	-17(%ebp), %eax
	cmpb	%al, -18(%ebp)
	je	L55
	movb	$92, (%edx)
	movzbl	1(%ebx), %ecx
	leal	2(%edx), %esi
	movb	%cl, 1(%edx)
	movzbl	2(%ebx), %ecx
	testb	%cl, %cl
	je	L32
	movl	%esi, %edx
	jmp	L2
	.align 4,0x90
L53:
	movzbl	1(%ebx), %eax
	movl	%esi, %edx
	movb	%al, -17(%ebp)
	testb	%al, %al
	jne	L21
L54:
	leal	1(%ebx), %eax
	jmp	L3
	.align 4,0x90
L55:
	movzbl	-18(%ebp), %eax
	leal	1(%edx), %esi
	movb	%al, (%edx)
	movzbl	2(%ebx), %ecx
	movl	%esi, %edx
	testb	%cl, %cl
	jne	L2
	xorl	%eax, %eax
	jmp	L17
	.align 4,0x90
L41:
	movb	$0, (%edx)
	movl	-16(%ebp), %eax
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L34:
	movl	%esi, %edx
	movl	%ebx, %eax
	jmp	L17
	.align 4,0x90
_nocase_tail:
	pushl	%ebp
	xorl	%ecx, %ecx
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L2$pb:
	pushl	%esi
	pushl	%ebx
	subl	$8, %esp
	movl	%eax, -16(%ebp)
	movsbl	(%eax), %eax
	movl	%edi, -20(%ebp)
	movl	_dbp-L2$pb(%edi), %edi
	testb	%al, %al
	jne	L57
	jmp	L58
	.align 4,0x90
L61:
	movl	-16(%ebp), %eax
	addl	$1, %ecx
	movsbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	L72
L57:
	leal	-65(%eax), %ebx
	leal	32(%eax), %edx
	cmpl	$26, %ebx
	cmovb	%edx, %eax
	movsbl	(%edi,%ecx), %edx
	leal	-65(%edx), %esi
	leal	32(%edx), %ebx
	cmpl	$26, %esi
	cmovb	%ebx, %edx
	cmpl	%eax, %edx
	je	L61
	xorl	%eax, %eax
L56:
	addl	$8, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L72:
	addl	%ecx, %edi
L58:
	movzbl	(%edi), %edx
	xorl	%eax, %eax
	movl	-20(%ebp), %esi
	cmpb	$0, _table.5891-L2$pb(%esi,%edx)
	jne	L56
	movl	-20(%ebp), %eax
	movl	%edi, _dbp-L2$pb(%eax)
	addl	$8, %esp
	movl	$1, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
_popclass_above:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L3$pb:
	subl	$28, %esp
	movl	8+_cstack-L3$pb(%ebx), %ecx
	movl	%ecx, %edi
	subl	$1, %edi
	js	L73
	movl	4+_cstack-L3$pb(%ebx), %edx
	leal	_cstack-L3$pb(%ebx), %esi
	leal	0(,%edi,4), %ebx
	cmpl	(%edx,%edi,4), %eax
	movl	%edx, -28(%ebp)
	jg	L73
	sall	$2, %ecx
	movl	%eax, -32(%ebp)
	subl	%ecx, %ebx
	addl	(%esi), %ebx
	jmp	L76
	.align 4,0x90
L82:
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %edx
	cmpl	%edx, (%eax,%edi,4)
	jl	L73
L76:
	subl	$12, %esp
	pushl	4(%ebx,%edi,4)
	call	_free
	addl	$16, %esp
	movl	%edi, 8(%esi)
	subl	$1, %edi
	cmpl	$-1, %edi
	jne	L82
L73:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
_free_regexps:
	call	___x86.get_pc_thunk.ax
L4$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	_p_head-L4$pb(%eax), %ebx
	testl	%ebx, %ebx
	je	L83
	leal	_p_head-L4$pb(%eax), %edi
	.align 4,0x90
L85:
	subl	$12, %esp
	movl	(%ebx), %esi
	pushl	8(%ebx)
	call	_free
	popl	%eax
	pushl	12(%ebx)
	call	_free
	movl	%ebx, (%esp)
	movl	%esi, %ebx
	call	_free
	movl	%esi, (%edi)
	addl	$16, %esp
	testl	%esi, %esi
	jne	L85
L83:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
_free_tree:
	testl	%eax, %eax
	je	L99
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	%eax, %ebx
L93:
	movl	(%ebx), %eax
	movl	4(%ebx), %esi
	call	_free_tree
	subl	$12, %esp
	pushl	12(%ebx)
	call	_free
	popl	%eax
	pushl	16(%ebx)
	call	_free
	movl	%ebx, (%esp)
	movl	%esi, %ebx
	call	_free
	addl	$16, %esp
	testl	%esi, %esi
	jne	L93
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.align 4,0x90
L99:
	ret
	.align 4,0x90
_perhaps_more_input:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	movl	%eax, %ebx
	subl	$16, %esp
	pushl	%eax
	call	_feof
	addl	$16, %esp
	testl	%eax, %eax
	je	L106
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
L106:
	subl	$12, %esp
	pushl	%ebx
	call	_ferror
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	testl	%eax, %eax
	sete	%al
	ret
	.cstring
lC0:
	.ascii "(*)\0"
	.text
	.align 4,0x90
_F_takeprec:
	call	___x86.get_pc_thunk.dx
L5$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$4, %esp
	movl	_dbp-L5$pb(%edx), %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L108
	movl	$1, %esi
	sall	%cl, %esi
	andl	$8388639, %esi
	movl	$1, %esi
	je	L108
L109:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L108
	movl	%esi, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L109
	.align 4,0x90
L108:
	movl	%eax, _dbp-L5$pb(%edx)
	cmpb	$42, %bl
	jne	L107
	leal	1(%eax), %ebx
	movsbl	1(%eax), %eax
	leal	-9(%eax), %ecx
	movl	%eax, -16(%ebp)
	cmpl	$23, %ecx
	ja	L112
	movl	$1, %esi
	sall	%cl, %esi
	andl	$8388639, %esi
	movl	$1, %esi
	je	L112
L113:
	addl	$1, %ebx
	movsbl	(%ebx), %eax
	leal	-9(%eax), %ecx
	movl	%eax, -16(%ebp)
	cmpl	$23, %ecx
	ja	L112
	movl	%esi, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	jne	L113
	.align 4,0x90
L112:
	movl	$3, %ecx
	movl	%ebx, %esi
	movl	%ebx, _dbp-L5$pb(%edx)
	leal	lC0-L5$pb(%edx), %edi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %eax
	cmpb	%cl, %al
	je	L128
	movl	-16(%ebp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L129
	addl	$1, %ebx
L117:
	movl	%ebx, %ecx
	addl	$1, %ebx
	movsbl	(%ecx), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L117
	movl	%ecx, _dbp-L5$pb(%edx)
L107:
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L129:
	subl	$1, %ebx
	movl	%ebx, _dbp-L5$pb(%edx)
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L128:
	addl	$3, %ebx
	movl	%ebx, _dbp-L5$pb(%edx)
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
_pfatal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	pushl	%eax
	call	_perror
	movl	$1, (%esp)
	call	_exit
	.align 4,0x90
_get_language_from_filename:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L6$pb:
	pushl	%esi
	movl	%edx, %esi
	pushl	%ebx
	movl	%eax, %ebx
	subl	$36, %esp
	pushl	$47
	pushl	%eax
	call	_strrchr
	addl	$16, %esp
	movl	_lang_names-L6$pb(%edi), %ecx
	leal	1(%eax), %edx
	testl	%eax, %eax
	leal	_lang_names-L6$pb(%edi), %eax
	cmovne	%edx, %ebx
	movl	%eax, -32(%ebp)
	testl	%ecx, %ecx
	je	L148
	movl	%eax, -28(%ebp)
L139:
	movl	-28(%ebp), %eax
	movl	16(%eax), %edi
	testl	%edi, %edi
	jne	L170
L135:
	addl	$28, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L139
	subl	$8, %esp
	pushl	$46
	pushl	%ebx
	call	_strrchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L148
	leal	1(%eax), %edi
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
L145:
	movl	-28(%ebp), %eax
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	jne	L171
L141:
	addl	$28, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L145
L148:
	movl	$0, -28(%ebp)
L132:
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L172:
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
L137:
	testb	%al, %al
	jne	L132
	addl	$4, %edi
L170:
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L135
	testl	%esi, %esi
	jne	L172
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	call	_c_strcasecmp
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	jmp	L137
	.align 4,0x90
L173:
	subl	$8, %esp
	pushl	%edi
	pushl	%eax
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
L143:
	testb	%al, %al
	jne	L132
	addl	$4, %ebx
L171:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L141
	testl	%esi, %esi
	jne	L173
	subl	$8, %esp
	pushl	%edi
	pushl	%eax
	call	_c_strcasecmp
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	jmp	L143
	.cstring
lC1:
	.ascii "%s: \0"
	.text
	.align 4,0x90
_verror:
	call	___x86.get_pc_thunk.ax
L7$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	l_stderr$non_lazy_ptr-L7$pb(%eax), %ebx
	leal	lC1-L7$pb(%eax), %edx
	pushl	_progname-L7$pb(%eax)
	pushl	%edx
	pushl	$1
	pushl	(%ebx)
	call	___fprintf_chk
	pushl	%edi
	pushl	%esi
	pushl	$1
	pushl	(%ebx)
	call	___vfprintf_chk
	movl	(%ebx), %eax
	addl	$32, %esp
	movl	$10, 8(%ebp)
	movl	%eax, 12(%ebp)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_fputc
	.align 4,0x90
_fatal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	leal	12(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	_verror
	movl	$1, (%esp)
	call	_exit
	.cstring
lC2:
	.ascii "virtual memory exhausted\0"
	.text
	.align 4,0x90
_savenstr:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%edx, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L8$pb:
	pushl	%ebx
	movl	%eax, %ebx
	leal	1(%edx), %eax
	subl	$24, %esp
	pushl	%eax
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L181
	subl	$4, %esp
	movb	$0, (%eax,%edi)
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	call	_memcpy
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L181:
	leal	lC2-L8$pb(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_concat:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%edx, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L9$pb:
	pushl	%ebx
	movl	%ecx, %ebx
	subl	$56, %esp
	movl	%edx, -32(%ebp)
	pushl	%eax
	movl	%ecx, -36(%ebp)
	movl	%eax, -28(%ebp)
	movl	%esi, -48(%ebp)
	call	_strlen
	movl	%edi, (%esp)
	movl	%eax, %esi
	call	_strlen
	movl	%ebx, (%esp)
	movl	%eax, %edi
	movl	%eax, -40(%ebp)
	call	_strlen
	addl	%esi, %edi
	movl	%eax, -44(%ebp)
	leal	1(%eax,%edi), %eax
	movl	%eax, (%esp)
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L185
	subl	$4, %esp
	movl	%eax, %ebx
	pushl	%esi
	addl	%ebx, %esi
	pushl	-28(%ebp)
	pushl	%eax
	call	_memcpy
	movl	-40(%ebp), %eax
	addl	$12, %esp
	addl	$1, %eax
	pushl	%eax
	pushl	-32(%ebp)
	pushl	%esi
	call	_memcpy
	movl	-44(%ebp), %edx
	leal	(%ebx,%edi), %eax
	addl	$12, %esp
	addl	$1, %edx
	pushl	%edx
	pushl	-36(%ebp)
	pushl	%eax
	call	_memcpy
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L185:
	movl	-48(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L9$pb, %eax
	pushl	%eax
	call	_fatal
	.cstring
lC3:
	.ascii "\0"
lC4:
	.ascii "/\0"
	.text
	.align 4,0x90
_absolute_filename:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L10$pb:
	pushl	%esi
	pushl	%ebx
	movl	%eax, %ebx
	subl	$28, %esp
	cmpb	$47, (%eax)
	je	L216
	leal	lC3-L10$pb(%edi), %ecx
	movl	%edx, %eax
	movl	%ebx, %edx
	call	_concat
	movl	%eax, %esi
L188:
	subl	$8, %esp
	pushl	$47
	pushl	%esi
	jmp	L215
	.align 4,0x90
L196:
	subl	$8, %esp
	pushl	$47
	pushl	%eax
L215:
	call	_strchr
	addl	$16, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L192
L189:
	cmpb	$0, (%ebx)
	je	L192
L218:
	cmpb	$46, 1(%ebx)
	leal	1(%ebx), %eax
	jne	L196
	movzbl	2(%ebx), %edx
	cmpb	$46, %dl
	je	L217
	cmpb	$47, %dl
	je	L204
	testb	%dl, %dl
	jne	L196
L204:
	subl	$12, %esp
	pushl	%eax
	call	_strlen
	addl	$12, %esp
	pushl	%eax
	leal	2(%ebx), %eax
	pushl	%eax
	pushl	%ebx
	call	_memmove
	addl	$16, %esp
	cmpb	$0, (%ebx)
	jne	L218
	.align 4,0x90
L192:
	cmpb	$0, (%esi)
	je	L219
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L217:
	movzbl	3(%ebx), %edx
	cmpb	$47, %dl
	je	L202
	testb	%dl, %dl
	jne	L196
L202:
	movl	%ebx, %edx
	jmp	L195
	.align 4,0x90
L220:
	cmpb	$47, (%edx)
	je	L197
L195:
	subl	$1, %edx
	cmpl	%edx, %esi
	jbe	L220
	movl	%ebx, %edx
L197:
	leal	2(%ebx), %eax
	subl	$12, %esp
	movl	%edx, -28(%ebp)
	addl	$3, %ebx
	pushl	%eax
	call	_strlen
	movl	-28(%ebp), %edx
	addl	$12, %esp
	pushl	%eax
	pushl	%ebx
	pushl	%edx
	call	_memmove
	movl	-28(%ebp), %edx
	addl	$16, %esp
	movl	%edx, %ebx
	jmp	L189
	.align 4,0x90
L216:
	subl	$12, %esp
	pushl	%eax
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_savenstr
	movl	%eax, %esi
	jmp	L188
	.align 4,0x90
L219:
	subl	$12, %esp
	pushl	%esi
	call	_free
	addl	$16, %esp
	movl	$1, %edx
	leal	-12(%ebp), %esp
	popl	%ebx
	leal	lC4-L10$pb(%edi), %eax
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_savenstr
	.align 4,0x90
_relative_filename:
	call	___x86.get_pc_thunk.cx
L11$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	movl	%edx, %esi
	pushl	%ebx
	subl	$28, %esp
	movl	_cwd-L11$pb(%ecx), %edx
	movl	%ecx, -32(%ebp)
	call	_absolute_filename
	movl	%eax, -28(%ebp)
	movl	%eax, %edi
L222:
	leal	1(%esi), %ecx
	movzbl	-1(%ecx), %edx
	leal	1(%edi), %eax
	cmpb	%dl, -1(%eax)
	jne	L223
	jmp	L235
	.align 4,0x90
L231:
	movl	%eax, %edi
L223:
	leal	-1(%edi), %eax
	subl	$1, %esi
	cmpb	$47, -1(%edi)
	jne	L231
	xorl	%ebx, %ebx
	jmp	L224
	.align 4,0x90
L225:
	addl	$1, %ebx
L224:
	subl	$8, %esp
	addl	$1, %esi
	pushl	$47
	pushl	%esi
	call	_strchr
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L225
	leal	(%ebx,%ebx,2), %esi
	subl	$12, %esp
	pushl	%edi
	call	_strlen
	leal	1(%esi,%eax), %eax
	movl	%eax, (%esp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L226
	addl	%eax, %esi
	testl	%ebx, %ebx
	je	L236
	.align 4,0x90
L229:
	movl	$3092014, (%eax)
	addl	$3, %eax
	cmpl	%esi, %eax
	jne	L229
L228:
	subl	$8, %esp
	movl	%ecx, -32(%ebp)
	pushl	%edi
	pushl	%esi
	call	_strcpy
	popl	%eax
	pushl	-28(%ebp)
	call	_free
	movl	-32(%ebp), %ecx
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	movl	%ecx, %eax
	popl	%ebp
	ret
	.align 4,0x90
L235:
	movl	%ecx, %esi
	movl	%eax, %edi
	jmp	L222
	.align 4,0x90
L236:
	movl	%eax, %esi
	jmp	L228
L226:
	movl	-32(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L11$pb, %eax
	pushl	%eax
	call	_fatal
	.align 4,0x90
_linebuffer_init:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	call	___x86.get_pc_thunk.si
L12$pb:
	pushl	%ebx
	movl	%eax, %ebx
	subl	$12, %esp
	movl	$200, (%eax)
	pushl	$200
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L240
	movb	$0, (%eax)
	movl	%eax, 8(%ebx)
	movl	$0, 4(%ebx)
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
L240:
	leal	lC2-L12$pb(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_linebuffer_setlen:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%eax, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L13$pb:
	pushl	%ebx
	movl	%edx, %ebx
	subl	$12, %esp
	movl	(%eax), %edx
	cmpl	%edx, %ebx
	jl	L245
	movl	8(%eax), %eax
	.align 4,0x90
L244:
	subl	$8, %esp
	addl	%edx, %edx
	pushl	%edx
	movl	%edx, (%edi)
	pushl	%eax
	call	_realloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L249
	movl	(%edi), %edx
	movl	%eax, 8(%edi)
	cmpl	%ebx, %edx
	jle	L244
L245:
	movl	%ebx, 4(%edi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L249:
	leal	lC2-L13$pb(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_pushclass_above:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L14$pb:
	subl	$44, %esp
	movl	%eax, -32(%ebp)
	movl	%ecx, -40(%ebp)
	call	_popclass_above
	movl	8+_cstack-L14$pb(%ebx), %esi
	leal	_cstack-L14$pb(%ebx), %eax
	movl	12+_cstack-L14$pb(%ebx), %edx
	movl	%eax, -36(%ebp)
	cmpl	%esi, %edx
	jle	L251
	movl	_cstack-L14$pb(%ebx), %eax
	movl	4+_cstack-L14$pb(%ebx), %ecx
	movl	%eax, -28(%ebp)
L252:
	testl	%edi, %edi
	je	L255
	movl	-40(%ebp), %edx
	movl	%edi, %eax
	movl	%ecx, -36(%ebp)
	call	_savenstr
	movl	-36(%ebp), %ecx
	movl	%eax, %edi
L255:
	movl	-28(%ebp), %eax
	movl	%edi, (%eax,%esi,4)
	movl	-32(%ebp), %eax
	movl	%eax, (%ecx,%esi,4)
	addl	$1, %esi
	movl	%esi, 8+_cstack-L14$pb(%ebx)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L251:
	leal	(%edx,%edx), %eax
	subl	$8, %esp
	sall	$3, %edx
	pushl	%edx
	pushl	_cstack-L14$pb(%ebx)
	movl	%edx, -44(%ebp)
	movl	%eax, 12+_cstack-L14$pb(%ebx)
	call	_realloc
	addl	$16, %esp
	movl	-44(%ebp), %edx
	testl	%eax, %eax
	movl	%eax, -28(%ebp)
	je	L254
	movl	-36(%ebp), %eax
	subl	$8, %esp
	movl	-28(%ebp), %ecx
	movl	%ecx, (%eax)
	pushl	%edx
	pushl	4(%eax)
	call	_realloc
	addl	$16, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L254
	movl	-36(%ebp), %eax
	movl	%ecx, 4(%eax)
	jmp	L252
L254:
	leal	lC2-L14$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_readline_internal:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L15$pb:
	pushl	%ebx
	subl	$44, %esp
	movl	8(%eax), %ebx
	movl	%eax, -32(%ebp)
	movl	%ecx, -44(%ebp)
	movl	%ebx, %edi
	movl	%esi, -40(%ebp)
	movl	(%eax), %esi
	addl	%ebx, %esi
	movl	%esi, -28(%ebp)
	movl	%edx, %esi
	jmp	L275
	.align 4,0x90
L264:
	cmpl	$-1, %ecx
	je	L294
L266:
	cmpl	$10, %ecx
	je	L295
	movb	%cl, (%edi)
	addl	$1, %edi
L275:
	subl	$12, %esp
	pushl	%esi
	call	__IO_getc
	addl	$16, %esp
	movl	%eax, %ecx
	cmpl	-28(%ebp), %edi
	jne	L264
	movl	-32(%ebp), %edx
	movl	%eax, -36(%ebp)
	subl	$8, %esp
	movl	(%edx), %eax
	movl	%eax, -28(%ebp)
	addl	%eax, %eax
	movl	%eax, (%edx)
	pushl	%eax
	pushl	%ebx
	call	_realloc
	addl	$16, %esp
	movl	-36(%ebp), %ecx
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L276
	movl	-32(%ebp), %edx
	subl	8(%edx), %eax
	addl	%eax, %edi
	movl	%edx, %eax
	movl	(%edx), %edx
	movl	%ebx, 8(%eax)
	addl	%ebx, %edx
	movl	%edx, -28(%ebp)
	cmpl	$-1, %ecx
	jne	L266
	.align 4,0x90
L294:
	movl	%esi, %eax
	subl	$12, %esp
	movl	%edi, %esi
	pushl	%eax
	call	_ferror
	addl	$16, %esp
	testl	%eax, %eax
	jne	L296
L267:
	movl	%esi, %eax
	movb	$0, (%esi)
	movl	-32(%ebp), %esi
	subl	%ebx, %eax
	movl	%eax, 4(%esi)
L263:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L295:
	movl	-40(%ebp), %eax
	movl	%edi, %esi
	movzbl	_need_filebuf-L15$pb(%eax), %ecx
	cmpl	%edi, %ebx
	jnb	L293
	cmpb	$13, -1(%edi)
	je	L272
L293:
	movl	-32(%ebp), %eax
	movb	$0, (%esi)
	subl	%ebx, %esi
	movl	%esi, %edx
	movl	%esi, 4(%eax)
	leal	1(%esi), %eax
	testb	%cl, %cl
	je	L263
	movl	$1, -28(%ebp)
L271:
	movl	-40(%ebp), %ebx
	movl	4+_filebuf-L15$pb(%ebx), %esi
	movl	_filebuf-L15$pb(%ebx), %ecx
	movl	8+_filebuf-L15$pb(%ebx), %eax
	addl	$_filebuf-L15$pb, %ebx
	leal	1(%esi,%edx), %edi
	cmpl	%edi, %ecx
	jg	L274
	.align 4,0x90
L273:
	subl	$8, %esp
	addl	%ecx, %ecx
	movl	%ecx, (%ebx)
	pushl	%ecx
	pushl	%eax
	call	_realloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L276
	movl	-32(%ebp), %edx
	movl	%eax, 8(%ebx)
	movl	4(%ebx), %esi
	movl	(%ebx), %ecx
	movl	4(%edx), %edx
	leal	1(%esi,%edx), %edi
	cmpl	%edi, %ecx
	jle	L273
L274:
	movl	-32(%ebp), %ebx
	subl	$4, %esp
	addl	%esi, %eax
	pushl	%edx
	pushl	8(%ebx)
	pushl	%eax
	call	_memcpy
	movl	-40(%ebp), %esi
	addl	$16, %esp
	movl	4(%ebx), %eax
	addl	4+_filebuf-L15$pb(%esi), %eax
	leal	1(%eax), %edx
	movl	%edx, 4+_filebuf-L15$pb(%esi)
	movl	8+_filebuf-L15$pb(%esi), %edx
	movb	$10, (%edx,%eax)
	movl	4+_filebuf-L15$pb(%esi), %eax
	movl	8+_filebuf-L15$pb(%esi), %edx
	movb	$0, (%edx,%eax)
	movl	-28(%ebp), %eax
	addl	4(%ebx), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L296:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	_perror
	addl	$16, %esp
	jmp	L267
L272:
	movl	-32(%ebp), %eax
	leal	-1(%edi), %edx
	movb	$0, -1(%edi)
	subl	%ebx, %edx
	movl	%edx, 4(%eax)
	leal	2(%edx), %eax
	testb	%cl, %cl
	je	L263
	movl	$2, -28(%ebp)
	jmp	L271
L276:
	movl	-40(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L15$pb, %eax
	pushl	%eax
	call	_fatal
	.align 4,0x90
_error:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	leal	12(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	_verror
	addl	$16, %esp
	leave
	ret
	.cstring
lC5:
	.ascii "null regexp\0"
lC6:
	.ascii "%s: unterminated regexp\0"
lC7:
	.ascii "null name for regexp \"%s\"\0"
	.align 2
lC8:
	.ascii "forcing explicit tag name but no name, ignoring\0"
	.align 2
lC9:
	.ascii "invalid regexp modifier '%c', ignoring\0"
lC10:
	.ascii "^\0"
lC11:
	.ascii "%s while compiling pattern\0"
	.text
	.align 4,0x90
_add_regex:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L16$pb:
	subl	$72, %esp
	movl	%eax, -52(%ebp)
	pushl	%eax
	movl	%edx, -60(%ebp)
	movb	$0, -25(%ebp)
	call	_strlen
	addl	$16, %esp
	cmpl	$2, %eax
	jbe	L358
	movl	-52(%ebp), %eax
	movzbl	(%eax), %esi
	call	_scan_separators
	movl	%eax, -48(%ebp)
	testl	%eax, %eax
	je	L359
	movl	-48(%ebp), %edi
	movl	%esi, %eax
	cmpb	%al, 1(%edi)
	je	L360
	movl	-48(%ebp), %eax
	call	_scan_separators
	leal	1(%eax), %edi
	testl	%eax, %eax
	je	L361
L304:
	movsbl	(%edi), %eax
	movb	$0, -56(%ebp)
	leal	lC9-L16$pb(%ebx), %esi
	movb	$0, -41(%ebp)
	movb	$0, -42(%ebp)
	testb	%al, %al
	je	L362
	movl	%esi, -56(%ebp)
	xorl	%esi, %esi
	jmp	L310
	.align 4,0x90
L306:
	cmpb	$109, %al
	je	L309
	cmpb	$115, %al
	jne	L308
	movl	$1, %esi
L309:
	movb	$1, _need_filebuf-L16$pb(%ebx)
	movb	$1, -41(%ebp)
L305:
	addl	$1, %edi
	movsbl	(%edi), %eax
	testb	%al, %al
	je	L363
L310:
	cmpb	$105, %al
	je	L328
	jg	L306
	cmpb	$78, %al
	jne	L308
	cmpl	%edi, -48(%ebp)
	jne	L305
	subl	$12, %esp
	addl	$1, %edi
	leal	lC8-L16$pb(%ebx), %eax
	pushl	%eax
	call	_error
	movsbl	(%edi), %eax
	addl	$16, %esp
	testb	%al, %al
	jne	L310
	.align 4,0x90
L363:
	subl	$12, %esp
	movl	%esi, %eax
	pushl	$32
	movb	%al, -56(%ebp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L323
	movl	_zeropattern.7569-L16$pb(%ebx), %eax
	cmpb	$0, -42(%ebp)
	movl	%eax, (%esi)
	movl	4+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 4(%esi)
	movl	8+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 8(%esi)
	movl	12+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 12(%esi)
	movl	16+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 16(%esi)
	movl	20+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 20(%esi)
	movl	24+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 24(%esi)
	movl	28+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 28(%esi)
	je	L315
	leal	_lc_trans.7591-L16$pb(%ebx), %edi
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L314
	.align 4,0x90
L317:
	leal	-64(%eax), %edx
	addl	$33, %eax
	cmpl	$26, %edx
	cmovnb	%ecx, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
L314:
	leal	1(%eax), %ecx
	movb	%dl, (%edi,%eax)
	cmpl	$256, %ecx
	jne	L317
	movl	%edi, 20(%esi)
L315:
	cmpb	$0, -41(%ebp)
	movl	-52(%ebp), %edi
	je	L318
	leal	lC3-L16$pb(%ebx), %ecx
	movl	%edi, %edx
	leal	lC10-L16$pb(%ebx), %eax
	call	_concat
	movl	%eax, %edi
L318:
	cmpb	$0, -56(%ebp)
	je	L319
	subl	$12, %esp
	pushl	$3146308
	call	_re_set_syntax
	addl	$16, %esp
L320:
	subl	$12, %esp
	pushl	%edi
	call	_strlen
	addl	$12, %esp
	pushl	%esi
	pushl	%eax
	pushl	%edi
	call	_re_compile_pattern
	addl	$16, %esp
	cmpb	$0, -41(%ebp)
	jne	L364
L321:
	testl	%eax, %eax
	je	L322
	subl	$8, %esp
	pushl	%eax
	leal	lC11-L16$pb(%ebx), %eax
	pushl	%eax
	call	_error
	addl	$16, %esp
L299:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L308:
	subl	$8, %esp
	pushl	%eax
	pushl	-56(%ebp)
	call	_error
	addl	$16, %esp
	jmp	L305
	.align 4,0x90
L328:
	movb	$1, -42(%ebp)
	jmp	L305
	.align 4,0x90
L358:
	leal	lC5-L16$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_error
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L362:
	subl	$12, %esp
	pushl	$32
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L323
	movl	_zeropattern.7569-L16$pb(%ebx), %eax
	movl	-52(%ebp), %edi
	movl	%eax, (%esi)
	movl	4+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 4(%esi)
	movl	8+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 8(%esi)
	movl	12+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 12(%esi)
	movl	16+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 16(%esi)
	movl	20+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 20(%esi)
	movl	24+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 24(%esi)
	movl	28+_zeropattern.7569-L16$pb(%ebx), %eax
	movl	%eax, 28(%esi)
	xorl	%eax, %eax
	movb	%al, -41(%ebp)
L319:
	subl	$12, %esp
	pushl	$3146244
	call	_re_set_syntax
	addl	$16, %esp
	jmp	L320
L322:
	movl	_p_head-L16$pb(%ebx), %eax
	subl	$12, %esp
	pushl	$36
	movl	%eax, -56(%ebp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L323
	movl	%eax, _p_head-L16$pb(%ebx)
	movl	-52(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_savenstr
	movl	-48(%ebp), %ebx
	subl	$12, %esp
	movl	%esi, 16(%edi)
	movl	%eax, 8(%edi)
	movl	-56(%ebp), %eax
	movl	%eax, (%edi)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edi)
	pushl	%ebx
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_savenstr
	movl	%eax, 12(%edi)
	movl	$256, %eax
	movw	%ax, 32(%edi)
	movzbl	-42(%ebp), %eax
	movb	%al, 34(%edi)
	movzbl	-41(%ebp), %eax
	movb	%al, 35(%edi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L360:
	leal	lC7-L16$pb(%ebx), %eax
	subl	$8, %esp
	pushl	-52(%ebp)
	pushl	%eax
	call	_error
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L364:
	subl	$12, %esp
	movl	%eax, -56(%ebp)
	pushl	%edi
	call	_free
	addl	$16, %esp
	movl	-56(%ebp), %eax
	jmp	L321
L361:
	leal	-25(%ebp), %eax
	movl	-48(%ebp), %edi
	movl	%eax, -48(%ebp)
	jmp	L304
L359:
	leal	lC6-L16$pb(%ebx), %eax
	subl	$8, %esp
	pushl	-52(%ebp)
	pushl	%eax
	call	_error
	addl	$16, %esp
	jmp	L299
L323:
	leal	lC2-L16$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.cstring
	.align 2
lC12:
	.ascii "\11Try '%s --help' for a complete list of options.\12\0"
	.text
	.align 4,0x90
_suggest_asking_for_help:
	call	___x86.get_pc_thunk.ax
L17$pb:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	_progname-L17$pb(%eax)
	leal	lC12-L17$pb(%eax), %edx
	movl	l_stderr$non_lazy_ptr-L17$pb(%eax), %eax
	pushl	%edx
	pushl	$1
	pushl	(%eax)
	call	___fprintf_chk
	movl	$1, (%esp)
	call	_exit
	.cstring
lC13:
	.ascii "\14\12%s,%d\12\0"
lC14:
	.ascii "%d,\0"
lC15:
	.ascii "%ld\0"
	.text
	.align 4,0x90
_put_entries:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L18$pb:
	subl	$28, %esp
	movl	%ebx, -32(%ebp)
	testl	%eax, %eax
	je	L367
	movl	%eax, %esi
L368:
	movzbl	20(%esi), %eax
	testb	%al, %al
	je	L369
	movl	8(%esi), %edi
	movl	-32(%ebp), %ecx
	movl	%edi, -36(%ebp)
	leal	_tagf-L18$pb(%ecx), %ebx
	cmpl	_fdp.6521-L18$pb(%ecx), %edi
	je	L370
	movl	%edi, _fdp.6521-L18$pb(%ecx)
	xorl	%ebx, %ebx
	movl	%esi, %edi
	movl	%esi, -40(%ebp)
	jmp	L379
	.align 4,0x90
L371:
	movl	4(%edi), %edi
	testl	%edi, %edi
	je	L378
L412:
	movzbl	20(%edi), %eax
L379:
	testb	%al, %al
	je	L371
	subl	$12, %esp
	pushl	16(%edi)
	call	_strlen
	addl	$16, %esp
	leal	1(%ebx,%eax), %esi
	movl	12(%edi), %eax
	movl	%esi, -28(%ebp)
	testl	%eax, %eax
	je	L372
	subl	$12, %esp
	pushl	%eax
	call	_strlen
	addl	$16, %esp
	leal	1(%esi,%eax), %eax
	movl	%eax, -28(%ebp)
L372:
	movl	24(%edi), %ebx
	movl	$1717986919, %eax
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	$9, %ebx
	jle	L383
	movl	$1, %ebx
	jmp	L374
	.align 4,0x90
L384:
	movl	%edx, %ecx
	movl	%esi, %ebx
L374:
	leal	1(%ebx), %esi
	movl	$1717986919, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	cmpl	$9, %ecx
	jg	L384
	addl	$2, %ebx
L373:
	movl	28(%edi), %esi
	addl	-28(%ebp), %ebx
	cmpl	$-1, %esi
	jne	L411
L375:
	movl	4(%edi), %edi
	addl	$1, %ebx
	testl	%edi, %edi
	jne	L412
L378:
	movl	-32(%ebp), %edi
	subl	$12, %esp
	movl	-36(%ebp), %eax
	pushl	%ebx
	movl	-40(%ebp), %esi
	leal	_tagf-L18$pb(%edi), %ebx
	pushl	16(%eax)
	leal	lC13-L18$pb(%edi), %eax
	pushl	%eax
	pushl	$1
	pushl	_tagf-L18$pb(%edi)
	call	___fprintf_chk
	movl	_fdp.6521-L18$pb(%edi), %eax
	addl	$32, %esp
	movb	$1, 29(%eax)
L370:
	subl	$8, %esp
	pushl	(%ebx)
	pushl	16(%esi)
	call	_fputs
	popl	%ecx
	popl	%edi
	pushl	(%ebx)
	pushl	$127
	call	_fputc
	movl	12(%esi), %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	L380
	subl	$8, %esp
	pushl	(%ebx)
	pushl	%eax
	call	_fputs
	popl	%eax
	popl	%edx
	pushl	(%ebx)
	pushl	$1
	call	_fputc
	addl	$16, %esp
L380:
	movl	-32(%ebp), %edi
	pushl	24(%esi)
	leal	lC14-L18$pb(%edi), %eax
	pushl	%eax
	pushl	$1
	pushl	(%ebx)
	call	___fprintf_chk
	movl	28(%esi), %eax
	addl	$16, %esp
	cmpl	$-1, %eax
	je	L381
	pushl	%eax
	leal	lC15-L18$pb(%edi), %eax
	pushl	%eax
	pushl	$1
	pushl	(%ebx)
	call	___fprintf_chk
	addl	$16, %esp
L381:
	subl	$8, %esp
	pushl	(%ebx)
	pushl	$10
	call	_fputc
	addl	$16, %esp
L369:
	movl	4(%esi), %eax
	call	_put_entries
	movl	(%esi), %esi
	testl	%esi, %esi
	jne	L368
L367:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L411:
	movl	$1717986919, %eax
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	cmpl	$9, %esi
	movl	$1, %esi
	movl	%edx, %ecx
	jg	L377
	jmp	L376
	.align 4,0x90
L386:
	movl	%edx, %ecx
L377:
	movl	$1717986919, %eax
	addl	$1, %esi
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	cmpl	$9, %ecx
	jg	L386
L376:
	addl	%esi, %ebx
	jmp	L375
	.align 4,0x90
L383:
	movl	$2, %ebx
	jmp	L373
	.align 4,0x90
_erlang_atom:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movzbl	(%eax), %edx
	cmpb	$65, %dl
	jl	L414
	cmpb	$90, %dl
	jle	L427
	leal	-97(%edx), %ecx
	cmpb	$25, %cl
	jbe	L427
L414:
	xorl	%ecx, %ecx
	cmpb	$95, %dl
	je	L417
	cmpb	$39, %dl
	je	L439
L413:
	popl	%ebx
	movl	%ecx, %eax
	popl	%esi
	popl	%ebp
	ret
	.align 4,0x90
L427:
	xorl	%ecx, %ecx
	.align 4,0x90
L417:
	addl	$1, %ecx
	movzbl	(%eax,%ecx), %edx
	cmpb	$90, %dl
	jg	L418
L440:
	cmpb	$65, %dl
	jge	L417
	leal	-48(%edx), %ebx
	cmpb	$9, %bl
	jbe	L417
L420:
	cmpb	$95, %dl
	jne	L413
	addl	$1, %ecx
	movzbl	(%eax,%ecx), %edx
	cmpb	$90, %dl
	jle	L440
L418:
	leal	-97(%edx), %ebx
	cmpb	$25, %bl
	ja	L420
	jmp	L417
L439:
	movzbl	1(%eax), %edx
	cmpb	$39, %dl
	je	L429
	testb	%dl, %dl
	je	L413
	movl	$1, %ebx
	jmp	L423
	.align 4,0x90
L432:
	movl	%esi, %edx
L424:
	cmpb	$39, %dl
	je	L441
	movl	%ecx, %ebx
	testb	%dl, %dl
	je	L433
L423:
	leal	1(%ebx), %ecx
	movzbl	1(%eax,%ebx), %esi
	cmpb	$92, %dl
	jne	L432
	movl	%esi, %ecx
	testb	%cl, %cl
	je	L433
	leal	2(%ebx), %ecx
	movzbl	2(%eax,%ebx), %edx
	jmp	L424
L433:
	xorl	%ecx, %ecx
	jmp	L413
L441:
	addl	$1, %ecx
	jmp	L413
L429:
	movl	$2, %ecx
	jmp	L413
	.align 4,0x90
_absolute_dirname:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%edx, %edi
	pushl	%esi
	movl	%eax, %esi
	pushl	%ebx
	subl	$36, %esp
	pushl	$47
	pushl	%eax
	call	_strrchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L445
	movzbl	1(%eax), %ecx
	movl	%eax, %ebx
	movb	$0, 1(%eax)
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%cl, -25(%ebp)
	call	_absolute_filename
	movzbl	-25(%ebp), %ecx
	movb	%cl, 1(%ebx)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L445:
	subl	$12, %esp
	pushl	%edi
	call	_strlen
	addl	$16, %esp
	leal	-12(%ebp), %esp
	movl	%eax, %edx
	movl	%edi, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_savenstr
	.cstring
lC16:
	.ascii "pattern error in \"%s\"\0"
	.text
	.align 4,0x90
_substitute.isra.4:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L19$pb:
	pushl	%esi
	pushl	%ebx
	movl	%edx, %ebx
	subl	$40, %esp
	movl	%eax, -36(%ebp)
	pushl	%edx
	movl	%ecx, -32(%ebp)
	call	_strlen
	addl	$16, %esp
	cmpb	$92, -1(%ebx,%eax)
	je	L468
	subl	$8, %esp
	movl	%eax, %esi
	pushl	$92
	pushl	%ebx
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L448
	movl	%ebx, -40(%ebp)
	movl	-32(%ebp), %ebx
	movl	%esi, -28(%ebp)
	jmp	L451
	.align 4,0x90
L470:
	movl	8(%ebp), %ecx
	movl	(%ebx), %esi
	movl	(%ecx), %ecx
	movl	(%ecx,%edx,4), %ecx
	subl	(%esi,%edx,4), %ecx
	movl	-28(%ebp), %esi
	leal	-2(%esi,%ecx), %ecx
	movl	%ecx, -28(%ebp)
L450:
	subl	$8, %esp
	addl	$2, %eax
	pushl	$92
	pushl	%eax
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L469
L451:
	movsbl	1(%eax), %edx
	subl	$48, %edx
	cmpl	$9, %edx
	jbe	L470
	subl	$1, -28(%ebp)
	jmp	L450
	.align 4,0x90
L469:
	movl	-28(%ebp), %esi
	movl	-40(%ebp), %ebx
L448:
	subl	$12, %esp
	addl	$1, %esi
	pushl	%esi
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L452
	movzbl	(%ebx), %edx
	testb	%dl, %dl
	jne	L453
	jmp	L454
	.align 4,0x90
L455:
	movzbl	(%ebx), %ecx
	movl	%eax, %edx
	movl	%edi, %ebx
L456:
	movb	%cl, (%esi)
	addl	$1, %esi
	testb	%dl, %dl
	je	L454
L453:
	leal	1(%ebx), %edi
	movzbl	1(%ebx), %eax
	cmpb	$92, %dl
	jne	L455
	movsbl	%al, %ecx
	movzbl	2(%ebx), %edx
	addl	$2, %ebx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	L459
	movl	-32(%ebp), %eax
	subl	$4, %esp
	movb	%dl, -28(%ebp)
	movl	8(%ebp), %edi
	movl	(%eax), %eax
	movl	(%edi), %edi
	movl	(%eax,%ecx,4), %eax
	movl	(%edi,%ecx,4), %edi
	subl	%eax, %edi
	addl	-36(%ebp), %eax
	pushl	%edi
	pushl	%eax
	pushl	%esi
	addl	%edi, %esi
	call	_memcpy
	movzbl	-28(%ebp), %edx
	addl	$16, %esp
	testb	%dl, %dl
	jne	L453
L454:
	movb	$0, (%esi)
	movl	-40(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L459:
	movl	%eax, %ecx
	jmp	L456
L468:
	pushl	%eax
	pushl	%eax
	leal	lC16-L19$pb(%edi), %eax
	pushl	%ebx
	pushl	%eax
	call	_fatal
L452:
	leal	lC2-L19$pb(%edi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.cstring
lC17:
	.ascii "unknown language \"%s\"\0"
	.text
	.align 4,0x90
_get_language_from_langname.part.5:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L20$pb:
	pushl	%ebx
	movl	%eax, %ebx
	subl	$12, %esp
	movl	_lang_names-L20$pb(%esi), %eax
	testl	%eax, %eax
	je	L472
	leal	_lang_names-L20$pb(%esi), %edi
	jmp	L474
	.align 4,0x90
L483:
	addl	$28, %edi
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L472
L474:
	subl	$8, %esp
	pushl	%eax
	pushl	%ebx
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L483
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L472:
	leal	lC17-L20$pb(%esi), %eax
	subl	$8, %esp
	xorl	%edi, %edi
	pushl	%ebx
	pushl	%eax
	call	_error
	addl	$16, %esp
	movl	%edi, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.cstring
lC18:
	.ascii "r\0"
	.align 2
lC19:
	.ascii "unterminated language name in regex: %s\0"
	.text
	.align 4,0x90
_analyze_regex:
	call	___x86.get_pc_thunk.cx
L21$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	testl	%eax, %eax
	je	L521
	movzbl	(%eax), %edx
	cmpb	$32, %dl
	je	L484
	jle	L522
	cmpb	$64, %dl
	je	L489
	cmpb	$123, %dl
	jne	L488
	movzbl	1(%eax), %edx
	leal	1(%eax), %esi
	cmpb	$125, %dl
	je	L499
	testb	%dl, %dl
	je	L496
	movl	%esi, %ebx
	jmp	L497
	.align 4,0x90
L498:
	testb	%dl, %dl
	je	L496
L497:
	addl	$1, %ebx
	movzbl	(%ebx), %edx
	cmpb	$125, %dl
	jne	L498
L495:
	movb	$0, (%ebx)
	movl	%esi, %eax
	call	_get_language_from_langname.part.5
	testl	%eax, %eax
	je	L484
	addl	$1, %ebx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	_add_regex
L484:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L522:
	testb	%dl, %dl
	je	L484
	cmpb	$9, %dl
	je	L484
L488:
	xorl	%edx, %edx
	call	_add_regex
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L489:
	leal	1(%eax), %ebx
	subl	$8, %esp
	leal	lC18-L21$pb(%ecx), %eax
	pushl	%eax
	pushl	%ebx
	call	_fopen
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L520
	leal	-36(%ebp), %edi
	movl	%edi, %eax
	call	_linebuffer_init
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_readline_internal
	testl	%eax, %eax
	jle	L523
L493:
	movl	-28(%ebp), %eax
	call	_analyze_regex
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_readline_internal
	testl	%eax, %eax
	jg	L493
L523:
	subl	$12, %esp
	pushl	-28(%ebp)
	call	_free
	movl	%esi, (%esp)
	call	_fclose
	addl	$16, %esp
	testl	%eax, %eax
	je	L484
L520:
	movl	%ebx, %eax
	call	_pfatal
	.align 4,0x90
L496:
	subl	$8, %esp
	pushl	%eax
	leal	lC19-L21$pb(%ecx), %eax
	pushl	%eax
	call	_error
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L521:
	call	_free_regexps
	jmp	L484
L499:
	movl	%esi, %ebx
	jmp	L495
	.align 4,0x90
_reset_input:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L22$pb:
	subl	$8, %esp
	pushl	$0
	pushl	$0
	pushl	%eax
	call	_fseek
	addl	$16, %esp
	testl	%eax, %eax
	jne	L530
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
L530:
	subl	$12, %esp
	pushl	_infilename-L22$pb(%ebx)
	call	_perror
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
_pfnote:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%eax, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L23$pb:
	pushl	%ebx
	subl	$40, %esp
	movl	%edx, -32(%ebp)
	pushl	$32
	movl	%ecx, -28(%ebp)
	call	_malloc
	addl	$16, %esp
	movl	-28(%ebp), %ecx
	testl	%eax, %eax
	movl	-32(%ebp), %edx
	je	L545
	movl	%eax, %ebx
	movl	%edi, 12(%eax)
	movb	$1, 20(%eax)
	movb	$0, 22(%eax)
	movl	_curfdp-L23$pb(%esi), %eax
	movb	%dl, 21(%ebx)
	movl	12(%ebp), %edx
	cmpb	$0, 28(%eax)
	movl	%eax, 8(%ebx)
	movl	$-1, %eax
	cmovne	16(%ebp), %eax
	movl	%edx, 24(%ebx)
	movl	8(%ebp), %edx
	movl	$0, 4(%ebx)
	movl	%eax, 28(%ebx)
	movl	%ecx, %eax
	movl	$0, (%ebx)
	call	_savenstr
	movl	_last_node-L23$pb(%esi), %edx
	movl	%eax, 16(%ebx)
	leal	_nodehead-L23$pb(%esi), %eax
	.align 4,0x90
L535:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L546
L536:
	movl	8(%ebx), %ecx
	testl	%edx, %edx
	je	L538
	cmpl	%ecx, 8(%edx)
	je	L547
L538:
	movl	%edi, %eax
	cmpl	%ecx, 8(%edi)
	jne	L535
	addl	$4, %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	L536
L546:
	movl	%ebx, (%eax)
	movl	%ebx, _last_node-L23$pb(%esi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L547:
	movl	%ebx, 4(%edx)
	movl	%ebx, _last_node-L23$pb(%esi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L545:
	leal	lC2-L23$pb(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_make_tag:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L24$pb:
	pushl	%esi
	pushl	%ebx
	movl	%eax, %ebx
	subl	$44, %esp
	movl	8(%ebp), %eax
	movl	%ecx, -32(%ebp)
	movl	12(%ebp), %esi
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%edi, -44(%ebp)
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L549
	testl	%edx, %edx
	jle	L549
	addl	$_table.5883-L24$pb, %edi
	.align 4,0x90
L551:
	movzbl	(%ebx,%eax), %ecx
	cmpb	$0, (%edi,%ecx)
	jne	L550
	addl	$1, %eax
	cmpl	%eax, %edx
	jg	L551
L550:
	cmpl	%edx, %eax
	je	L564
L552:
	movl	%ebx, %eax
	call	_savenstr
L549:
	movl	-40(%ebp), %ebx
	movl	%esi, 8(%ebp)
	movzbl	-32(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%ebx, 16(%ebp)
	movl	-36(%ebp), %ebx
	movl	%ebx, 12(%ebp)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_pfnote
	.align 4,0x90
L564:
	movl	-28(%ebp), %edi
	movl	%esi, %ecx
	subl	%edx, %ecx
	leal	(%ecx,%edi), %eax
	movl	-44(%ebp), %ecx
	movl	%eax, -48(%ebp)
	movzbl	-1(%edi,%esi), %eax
	cmpb	$1, _table.5883-L24$pb(%ecx,%eax)
	adcl	$-1, -48(%ebp)
	movl	-48(%ebp), %eax
	cmpl	%edi, %eax
	jb	L552
	je	L554
	movzbl	-1(%eax), %eax
	cmpb	$0, _table.5883-L24$pb(%ecx,%eax)
	je	L552
L554:
	subl	$4, %esp
	movl	%edx, -44(%ebp)
	pushl	%edx
	pushl	-48(%ebp)
	pushl	%ebx
	call	_strncmp
	addl	$16, %esp
	movl	-44(%ebp), %edx
	testl	%eax, %eax
	jne	L552
	jmp	L549
	.align 4,0x90
_make_C_tag:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L25$pb:
	subl	$4, %esp
	cmpb	$0, 12+_token-L25$pb(%ebx)
	jne	L568
	movb	$0, 12+_token-L25$pb(%ebx)
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
L568:
	movzbl	%al, %ecx
	movl	8+_token-L25$pb(%ebx), %eax
	addl	4+_token-L25$pb(%ebx), %eax
	pushl	20+_token-L25$pb(%ebx)
	movl	4+_token_name-L25$pb(%ebx), %edx
	pushl	16+_token-L25$pb(%ebx)
	addl	$1, %eax
	pushl	%eax
	movl	8+_token_name-L25$pb(%ebx), %eax
	pushl	_token-L25$pb(%ebx)
	call	_make_tag
	movb	$0, 12+_token-L25$pb(%ebx)
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	ret
	.align 4,0x90
_get_tag:
	call	___x86.get_pc_thunk.cx
L26$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%edx, %edi
	pushl	%esi
	movl	%eax, %esi
	pushl	%ebx
	movl	%eax, %ebx
	subl	$12, %esp
	cmpb	$0, (%eax)
	je	L570
	leal	1(%eax), %esi
	movzbl	1(%eax), %eax
	movl	$1, %edx
	cmpb	$0, _table.5883-L26$pb(%ecx,%eax)
	je	L582
L571:
	movl	8+_lb-L26$pb(%ecx), %eax
	pushl	_linecharno-L26$pb(%ecx)
	pushl	_lineno-L26$pb(%ecx)
	movl	%esi, %ecx
	subl	%eax, %ecx
	addl	$1, %ecx
	pushl	%ecx
	movl	$1, %ecx
	pushl	%eax
	movl	%ebx, %eax
	call	_make_tag
	addl	$16, %esp
L570:
	testl	%edi, %edi
	je	L569
	subl	%ebx, %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	call	_savenstr
	movl	%eax, (%edi)
L569:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L582:
	leal	_table.5883-L26$pb(%ecx), %edx
L572:
	addl	$1, %esi
	movzbl	(%esi), %eax
	cmpb	$0, (%edx,%eax)
	je	L572
	movl	%esi, %edx
	subl	%ebx, %edx
	jmp	L571
	.cstring
lC20:
	.ascii "quote\0"
lC21:
	.ascii "QUOTE\0"
	.text
	.align 4,0x90
_L_getit:
	call	___x86.get_pc_thunk.dx
L27$pb:
	movl	_dbp-L27$pb(%edx), %eax
	movzbl	(%eax), %ecx
	cmpb	$39, %cl
	je	L617
	cmpb	$40, %cl
	je	L618
	xorl	%edx, %edx
	jmp	_get_tag
	.align 4,0x90
L618:
	pushl	%ebp
	movl	$5, %ecx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	leal	lC20-L27$pb(%edx), %edi
	pushl	%ebx
	leal	1(%eax), %ebx
	subl	$28, %esp
	movl	%ebx, %esi
	movl	%ebx, -28(%ebp)
	repz; cmpsb
	movl	%ebx, _dbp-L27$pb(%edx)
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	je	L619
	movl	-28(%ebp), %esi
	leal	lC21-L27$pb(%edx), %edi
	movl	$5, %ecx
	repz; cmpsb
	jne	L587
	movzbl	6(%eax), %esi
	cmpb	$0, _table.5883-L27$pb(%edx,%esi)
	movl	%esi, %ecx
	je	L587
	movsbl	%cl, %ecx
	addl	$6, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L616
	movl	$1, %ebx
	sall	%cl, %ebx
	andl	$8388639, %ebx
	movl	$1, %ebx
	je	L616
L595:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L616
	movl	%ebx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L595
L616:
	movl	%eax, _dbp-L27$pb(%edx)
	addl	$28, %esp
	xorl	%edx, %edx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_get_tag
	.align 4,0x90
L617:
	addl	$1, %eax
	movl	%eax, _dbp-L27$pb(%edx)
	xorl	%edx, %edx
	jmp	_get_tag
	.align 4,0x90
L619:
	movzbl	6(%eax), %esi
	cmpb	$0, _table.5883-L27$pb(%edx,%esi)
	movl	%esi, %ecx
	je	L587
	movsbl	%cl, %ecx
	addl	$6, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L616
	movl	$1, %ebx
	sall	%cl, %ebx
	andl	$8388639, %ebx
	movl	$1, %ebx
	je	L616
L589:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L616
	movl	%ebx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	je	L616
	jmp	L589
	.align 4,0x90
L587:
	movsbl	1(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L592
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L592
	movl	$1, %eax
L597:
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %edi
	movsbl	(%edi), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L592
	movl	%eax, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L597
	.align 4,0x90
L592:
	movl	-28(%ebp), %eax
	jmp	L616
	.cstring
lC22:
	.ascii "#line \0"
lC23:
	.ascii "#line %u \"%n\0"
	.align 2
lC24:
	.ascii "regexp stack overflow while matching \"%s\"\0"
	.align 2
lC25:
	.ascii "regexp matches the empty string: \"%s\"\0"
	.text
	.align 4,0x90
_readline:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L28$pb:
	subl	$60, %esp
	movl	%eax, -44(%ebp)
	movl	%edx, -48(%ebp)
	movl	_charno-L28$pb(%ebx), %eax
	movl	_infilename-L28$pb(%ebx), %ecx
	movl	%eax, _linecharno-L28$pb(%ebx)
	movl	%edi, %eax
	call	_readline_internal
	movl	_no_line_directive-L28$pb(%ebx), %ecx
	addl	$1, _lineno-L28$pb(%ebx)
	addl	%eax, _charno-L28$pb(%ebx)
	testl	%ecx, %ecx
	jne	L621
	cmpl	$12, %eax
	jle	L622
	movl	8(%edi), %eax
	leal	lC22-L28$pb(%ebx), %edi
	movl	$6, %ecx
	movl	%eax, %esi
	repz; cmpsb
	je	L687
L623:
	cmpb	$0, _discard_until_line_directive.7676-L28$pb(%ebx)
	jne	L657
L621:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	L620
	movl	_p_head-L28$pb(%ebx), %esi
	testl	%esi, %esi
	je	L620
	leal	lC25-L28$pb(%ebx), %eax
	movl	%eax, -56(%ebp)
	jmp	L653
	.align 4,0x90
L647:
	movl	(%esi), %esi
	testl	%esi, %esi
	je	L620
L653:
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L646
	movl	_fdhead-L28$pb(%ebx), %edx
	cmpl	20(%edx), %eax
	jne	L647
L646:
	cmpb	$0, 35(%esi)
	jne	L647
	leal	20(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	movl	-44(%ebp), %eax
	pushl	$0
	pushl	4(%eax)
	pushl	8(%eax)
	pushl	16(%esi)
	call	_re_match
	addl	$32, %esp
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L647
	testl	%eax, %eax
	je	L649
	cmpl	$-2, %eax
	je	L688
	movl	12(%esi), %edx
	movl	$0, -48(%ebp)
	movl	-44(%ebp), %eax
	cmpb	$0, (%edx)
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	jne	L689
L651:
	cmpb	$0, 33(%esi)
	movl	_linecharno-L28$pb(%ebx), %edx
	movl	_lineno-L28$pb(%ebx), %ecx
	je	L652
	subl	$4, %esp
	movl	-48(%ebp), %eax
	pushl	%edx
	movl	$1, %edx
	pushl	%ecx
	movl	-52(%ebp), %ecx
	pushl	%edi
	call	_pfnote
	movl	(%esi), %esi
	addl	$16, %esp
	testl	%esi, %esi
	jne	L653
L620:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L622:
	cmpb	$0, _discard_until_line_directive.7676-L28$pb(%ebx)
	je	L621
	testl	%eax, %eax
	jg	L657
	movb	$0, _discard_until_line_directive.7676-L28$pb(%ebx)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L688:
	cmpb	$0, 32(%esi)
	jne	L647
	leal	lC24-L28$pb(%ebx), %eax
	subl	$8, %esp
	pushl	8(%esi)
	pushl	%eax
	call	_error
	addl	$16, %esp
	movb	$1, 32(%esi)
	jmp	L647
	.align 4,0x90
L649:
	cmpb	$0, 32(%esi)
	jne	L647
	subl	$8, %esp
	pushl	8(%esi)
	pushl	-56(%ebp)
	call	_error
	addl	$16, %esp
	movb	$1, 32(%esi)
	jmp	L647
	.align 4,0x90
L652:
	subl	$12, %esp
	movl	%edx, -64(%ebp)
	pushl	-48(%ebp)
	movl	%ecx, -60(%ebp)
	call	_strlen
	movl	-64(%ebp), %edx
	addl	$16, %esp
	movl	-60(%ebp), %ecx
	pushl	%edx
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	pushl	%ecx
	movl	$1, %ecx
	pushl	%edi
	pushl	-52(%ebp)
	call	_make_tag
	addl	$16, %esp
	jmp	L647
	.align 4,0x90
L689:
	leal	28(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	movl	-52(%ebp), %eax
	leal	24(%esi), %ecx
	call	_substitute.isra.4
	addl	$16, %esp
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	L651
	.align 4,0x90
L687:
	leal	-28(%ebp), %edx
	movl	$0, -28(%ebp)
	pushl	%edx
	leal	-32(%ebp), %edx
	pushl	%edx
	leal	lC23-L28$pb(%ebx), %edx
	pushl	%edx
	pushl	%eax
	call	_sscanf
	addl	$16, %esp
	testl	%eax, %eax
	jle	L623
	movl	-28(%ebp), %esi
	testl	%esi, %esi
	jle	L623
	movl	-44(%ebp), %eax
	addl	8(%eax), %esi
	movl	%esi, %eax
	jmp	L625
	.align 4,0x90
L691:
	cmpb	$92, -1(%eax)
	jne	L690
	addl	$1, %eax
L625:
	subl	$8, %esp
	pushl	$34
	pushl	%eax
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	jne	L691
	jmp	L623
	.align 4,0x90
L657:
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	call	_readline
	jmp	L620
L690:
	movb	$0, (%eax)
	movzbl	(%esi), %edx
	movl	%esi, %eax
	movl	%esi, %ecx
	movb	$0, _discard_until_line_directive.7676-L28$pb(%ebx)
	testb	%dl, %dl
	jne	L631
	jmp	L656
	.align 4,0x90
L628:
	movb	%dl, (%ecx)
	movzbl	1(%eax), %edx
L629:
	addl	$1, %eax
	addl	$1, %ecx
	testb	%dl, %dl
	je	L656
L631:
	cmpb	$47, %dl
	jne	L628
	movb	$47, (%ecx)
	movzbl	1(%eax), %edx
	cmpb	$47, %dl
	jne	L629
	.align 4,0x90
L630:
	addl	$1, %eax
	movzbl	1(%eax), %edx
	cmpb	$47, %dl
	je	L630
	jmp	L629
L656:
	movb	$0, (%ecx)
	movl	_tagfiledir-L28$pb(%ebx), %ecx
	movl	%esi, %eax
	movl	%ecx, %edx
	movl	%ecx, -52(%ebp)
	call	_absolute_filename
	cmpb	$47, (%esi)
	movl	%eax, -56(%ebp)
	movl	_curfdp-L28$pb(%ebx), %edi
	je	L632
	movl	4(%edi), %eax
	movl	-52(%ebp), %ecx
	cmpb	$47, (%eax)
	je	L632
	movl	-56(%ebp), %eax
	movl	%ecx, %edx
	call	_relative_filename
	movl	%eax, -52(%ebp)
L634:
	subl	$8, %esp
	pushl	-52(%ebp)
	pushl	16(%edi)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L686
	movl	_fdhead-L28$pb(%ebx), %eax
	movl	%eax, -60(%ebp)
	testl	%eax, %eax
	je	L637
	movl	4(%edi), %ecx
	movl	%edi, -64(%ebp)
	movl	%eax, %edi
	movl	%ecx, %esi
	.align 4,0x90
L639:
	subl	$8, %esp
	pushl	%esi
	pushl	4(%edi)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L638
	subl	$8, %esp
	pushl	-52(%ebp)
	pushl	16(%edi)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L692
L638:
	movl	(%edi), %edi
	testl	%edi, %edi
	jne	L639
	movl	-60(%ebp), %esi
	movl	%esi, %edi
	movl	-56(%ebp), %esi
	jmp	L641
	.align 4,0x90
L640:
	movl	(%edi), %edi
	testl	%edi, %edi
	je	L693
L641:
	subl	$8, %esp
	pushl	%esi
	pushl	8(%edi)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L640
	subl	$12, %esp
	movb	$1, _discard_until_line_directive.7676-L28$pb(%ebx)
	pushl	-52(%ebp)
	call	_free
	addl	$16, %esp
L636:
	subl	$12, %esp
	pushl	-56(%ebp)
	call	_free
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %edx
	subl	$1, %eax
	movl	%eax, _lineno-L28$pb(%ebx)
	movl	-44(%ebp), %eax
	call	_readline
	addl	$16, %esp
	jmp	L620
L632:
	movl	-56(%ebp), %esi
	subl	$12, %esp
	pushl	%esi
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%esi, %eax
	call	_savenstr
	movl	%eax, -52(%ebp)
	jmp	L634
L693:
	movl	-64(%ebp), %edi
L637:
	subl	$12, %esp
	pushl	$32
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L694
	movl	(%edi), %eax
	subl	$12, %esp
	movl	%esi, _fdhead-L28$pb(%ebx)
	movl	%eax, (%esi)
	movl	4(%edi), %eax
	movl	%eax, 4(%esi)
	movl	8(%edi), %eax
	movl	4(%edi), %ecx
	movl	%eax, 8(%esi)
	movl	12(%edi), %eax
	movl	%eax, 12(%esi)
	movl	16(%edi), %eax
	movl	%eax, 16(%esi)
	movl	20(%edi), %eax
	movl	%eax, 20(%esi)
	movl	24(%edi), %eax
	movl	%eax, 24(%esi)
	movl	28(%edi), %eax
	movl	%eax, 28(%esi)
	movl	-60(%ebp), %eax
	movl	%ecx, -60(%ebp)
	movl	%eax, (%esi)
	pushl	%ecx
	call	_strlen
	movl	-60(%ebp), %ecx
	addl	$16, %esp
	movl	%eax, %edx
	movl	%ecx, %eax
	call	_savenstr
	movl	_fdhead-L28$pb(%ebx), %ecx
	subl	$12, %esp
	movl	%eax, 4(%esi)
	movl	8(%edi), %esi
	movl	%ecx, -60(%ebp)
	pushl	%esi
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%esi, %eax
	call	_savenstr
	movl	-60(%ebp), %ecx
	subl	$12, %esp
	movl	12(%edi), %esi
	movl	_fdhead-L28$pb(%ebx), %edi
	movl	%eax, 8(%ecx)
	pushl	%esi
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%esi, %eax
	call	_savenstr
	movl	-52(%ebp), %ecx
	xorl	%edx, %edx
	movl	%eax, 12(%edi)
	movl	_fdhead-L28$pb(%ebx), %eax
	movl	%ecx, 16(%eax)
	movl	$0, 24(%eax)
	movw	%dx, 28(%eax)
	movl	%eax, _curfdp-L28$pb(%ebx)
	jmp	L636
L692:
	movl	%edi, _curfdp-L28$pb(%ebx)
L686:
	subl	$12, %esp
	pushl	-52(%ebp)
	call	_free
	addl	$16, %esp
	jmp	L636
L694:
	leal	lC2-L28$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.align 4,0x90
_just_read_file:
	call	___x86.get_pc_thunk.ax
L29$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %ebx
	leal	_lb-L29$pb(%eax), %esi
	jmp	L696
	.align 4,0x90
L697:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_readline
L696:
	movl	%ebx, %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L697
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.cstring
lC26:
	.ascii ".\0"
lC27:
	.ascii "::\0"
lC28:
	.ascii "#if\0"
lC29:
	.ascii "#el\0"
	.align 2
lC30:
	.ascii "internal error: definedef value.\0"
lC31:
	.ascii "asm\0"
lC32:
	.ascii "__asm__\0"
lC33:
	.ascii "::operator\0"
lC34:
	.ascii "%s%s\0"
lC35:
	.ascii "%s%.*s\0"
lC36:
	.ascii "%.*s\0"
lC37:
	.ascii "%s(%.*s)\0"
	.text
	.align 4,0x90
_C_entries:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L30$pb:
	pushl	%ebx
	subl	$204, %esp
	movl	%eax, -88(%ebp)
	movl	%edx, -64(%ebp)
	leal	4+_lbs-L30$pb(%esi), %eax
	call	_linebuffer_init
	leal	20+_lbs-L30$pb(%esi), %eax
	call	_linebuffer_init
	movl	12+_cstack-L30$pb(%esi), %ecx
	leal	_cstack-L30$pb(%esi), %eax
	movl	%eax, -112(%ebp)
	testl	%ecx, %ecx
	je	L1315
L700:
	movl	-88(%ebp), %eax
	movb	$0, _fvextern-L30$pb(%esi)
	movl	12+_lbs-L30$pb(%esi), %edi
	movl	$0, _fvdef-L30$pb(%esi)
	movl	$0, _typdef-L30$pb(%esi)
	movl	$0, _structdef-L30$pb(%esi)
	andl	$5, %eax
	movb	$0, 12+_token-L30$pb(%esi)
	movb	$0, (%edi)
	movl	$0, _definedef-L30$pb(%esi)
	movl	$0, _objdef-L30$pb(%esi)
	cmpl	$5, %eax
	je	L974
	movl	$2, -176(%ebp)
	leal	lC27-L30$pb(%esi), %eax
	movl	%eax, -168(%ebp)
L703:
	leal	lC34-L30$pb(%esi), %eax
	movb	$0, -149(%ebp)
	movl	%eax, -172(%ebp)
	movl	-64(%ebp), %eax
	movl	$0, -136(%ebp)
	movl	$0, -144(%ebp)
	movb	$0, -68(%ebp)
	movl	$0, -132(%ebp)
	movl	$0, -140(%ebp)
	movl	$0, -148(%ebp)
	movb	$0, -150(%ebp)
	movb	$0, -116(%ebp)
	movb	$0, -67(%ebp)
	movb	$0, -66(%ebp)
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	movl	$0, -164(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -108(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -160(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	call	_perhaps_more_input
	testb	%al, %al
	je	L1316
	.align 4,0x90
L959:
	movzbl	(%edi), %ebx
	leal	1(%edi), %ecx
	movl	%ecx, -60(%ebp)
	cmpb	$92, %bl
	je	L1317
	cmpb	$0, -65(%ebp)
	jne	L1318
	cmpb	$0, -72(%ebp)
	jne	L1319
	cmpb	$0, -66(%ebp)
	jne	L1320
	leal	-34(%ebx), %edx
	cmpb	$57, %dl
	ja	L714
	movzbl	%dl, %edx
	movl	L716-L30$pb(%esi,%edx,4), %ecx
	addl	%esi, %ecx
	jmp	*%ecx
	.align 2,0x90
L716:
	.long	L721-L30$pb
	.long	L720-L30$pb
	.long	L714-L30$pb
	.long	L719-L30$pb
	.long	L714-L30$pb
	.long	L718-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L717-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L714-L30$pb
	.long	L715-L30$pb
	.align 4,0x90
L1317:
	cmpb	$0, 1(%edi)
	je	L975
	leal	2(%edi), %eax
	movl	$32, %ebx
	movl	%eax, -60(%ebp)
L706:
	cmpl	$5, _typdef-L30$pb(%esi)
	leal	_typdef-L30$pb(%esi), %eax
	movl	%eax, -76(%ebp)
	je	L705
L964:
	movl	_definedef-L30$pb(%esi), %edi
	leal	_definedef-L30$pb(%esi), %eax
	movl	%eax, -100(%ebp)
	cmpl	$3, %edi
	je	L735
	leal	_fvdef-L30$pb(%esi), %eax
	movl	-92(%ebp), %ecx
	movl	%eax, -96(%ebp)
	movl	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -124(%ebp)
	testl	%ecx, %ecx
	jne	L735
	cmpl	$6, %eax
	jne	L1321
L735:
	cmpb	$126, %bl
	ja	L705
	movzbl	%bl, %ebx
	movl	L858-L30$pb(%esi,%ebx,4), %eax
	addl	%esi, %eax
	jmp	*%eax
	.align 2,0x90
L858:
	.long	L872-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L857-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L871-L30$pb
	.long	L870-L30$pb
	.long	L869-L30$pb
	.long	L867-L30$pb
	.long	L868-L30$pb
	.long	L867-L30$pb
	.long	L857-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L866-L30$pb
	.long	L865-L30$pb
	.long	L864-L30$pb
	.long	L863-L30$pb
	.long	L862-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L861-L30$pb
	.long	L857-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L705-L30$pb
	.long	L860-L30$pb
	.long	L857-L30$pb
	.long	L859-L30$pb
	.long	L857-L30$pb
	.align 4,0x90
L865:
	movl	_definedef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	cmpb	$0, _inattribute-L30$pb(%esi)
	jne	L705
	movl	-76(%ebp), %eax
	movl	_structdef-L30$pb(%esi), %ebx
	movl	(%eax), %ecx
	leal	_structdef-L30$pb(%esi), %eax
	movl	%eax, -124(%ebp)
	cmpl	$5, %ecx
	ja	L877
	movl	$1, %eax
	sall	%cl, %eax
	testb	$41, %al
	jne	L878
	testb	$20, %al
	jne	L1322
L877:
	testl	%ebx, %ebx
	jne	L892
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L892
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L705
L892:
	movl	-76(%ebp), %eax
	movl	$0, (%eax)
L898:
	cmpl	$2, %ebx
	jne	L705
	movl	-124(%ebp), %eax
	movl	$0, (%eax)
	.align 4,0x90
L705:
	movl	-60(%ebp), %edi
L1323:
	movl	-64(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L959
L1316:
	subl	$12, %esp
	pushl	12+_lbs-L30$pb(%esi)
	call	_free
	popl	%ebx
	pushl	28+_lbs-L30$pb(%esi)
	call	_free
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1318:
	testb	%bl, %bl
	je	L708
	cmpb	$42, %bl
	jne	L705
	cmpb	$47, 1(%edi)
	jne	L705
	leal	2(%edi), %eax
	movb	$0, -65(%ebp)
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L1319:
	testb	%bl, %bl
	je	L710
	movzbl	-72(%ebp), %eax
	cmpb	$34, %bl
	movzbl	-65(%ebp), %edx
	movl	-60(%ebp), %edi
	cmove	%edx, %eax
	movb	%al, -72(%ebp)
	jmp	L1323
	.align 4,0x90
L975:
	movb	%al, -67(%ebp)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L1320:
	testb	%bl, %bl
	je	L712
	movzbl	-72(%ebp), %eax
	cmpb	$39, %bl
	movzbl	-66(%ebp), %edx
	movl	-60(%ebp), %edi
	movb	%al, -65(%ebp)
	cmove	%eax, %edx
	movb	%dl, -66(%ebp)
	jmp	L1323
	.align 4,0x90
L708:
	movl	-80(%ebp), %edi
	leal	_lbs-L30$pb(%esi), %ecx
	movl	_charno-L30$pb(%esi), %edx
	movl	%edi, %eax
	sall	$4, %eax
	leal	(%ecx,%eax), %ebx
	movl	%edx, (%ebx)
	movl	-64(%ebp), %edx
	leal	4(%ecx,%eax), %eax
L1308:
	call	_readline
	movl	12(%ebx), %eax
	movl	%edi, -84(%ebp)
	movb	$0, -67(%ebp)
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L1321:
	testl	%edi, %edi
	je	L1324
L736:
	cmpb	$0, _inattribute-L30$pb(%esi)
	leal	_inattribute-L30$pb(%esi), %eax
	movl	%eax, -180(%ebp)
	jne	L735
	cmpb	$0, -116(%ebp)
	movzbl	%bl, %eax
	je	L737
	leal	_table.5895-L30$pb(%esi), %ecx
	movl	%ecx, -196(%ebp)
	movzbl	_table.5895-L30$pb(%esi,%eax), %ecx
	movb	%cl, -192(%ebp)
	testb	%cl, %cl
	je	L738
	cmpb	$58, %bl
	je	L1325
L739:
	cmpb	$0, -150(%ebp)
	leal	_lbs-L30$pb(%esi), %eax
	movb	$0, -188(%ebp)
	movl	%eax, -184(%ebp)
	je	L1326
L742:
	cmpl	$3, -124(%ebp)
	je	L967
L817:
	leal	_token-L30$pb(%esi), %eax
	movb	$0, 13+_token-L30$pb(%esi)
	movl	%eax, -116(%ebp)
	testl	$4095, -88(%ebp)
	je	L826
	movl	-112(%ebp), %edi
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, -196(%ebp)
	jle	L826
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L826
	movl	_class_qualify-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L837
	subl	$12, %esp
	pushl	-168(%ebp)
	call	_strlen
	addl	$16, %esp
	movl	%eax, -200(%ebp)
	movl	(%edi), %eax
	movl	(%eax), %edi
	movl	%eax, -192(%ebp)
	testl	%edi, %edi
	je	L1327
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz; scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	%eax, -124(%ebp)
	leal	_token_name-L30$pb(%esi), %eax
	call	_linebuffer_setlen
	pushl	%eax
	pushl	%eax
	movl	-192(%ebp), %eax
	pushl	(%eax)
	leal	_token_name-L30$pb(%esi), %eax
	pushl	8+_token_name-L30$pb(%esi)
	movl	%eax, -180(%ebp)
	call	_strcpy
	addl	$16, %esp
L829:
	cmpl	$1, -196(%ebp)
	leal	_token_name-L30$pb(%esi), %eax
	movl	$1, %edi
	movl	%ebx, %ecx
	movl	%eax, -204(%ebp)
	movl	-192(%ebp), %eax
	jne	L833
	jmp	L834
	.align 4,0x90
L831:
	movl	-112(%ebp), %eax
	movl	(%eax), %eax
L833:
	movl	(%eax,%edi,4), %ebx
	testl	%ebx, %ebx
	je	L830
	subl	$12, %esp
	movb	%cl, -192(%ebp)
	pushl	%ebx
	call	_strlen
	movl	-124(%ebp), %edx
	addl	$16, %esp
	addl	-200(%ebp), %edx
	addl	%eax, %edx
	movl	-204(%ebp), %eax
	call	_linebuffer_setlen
	movl	-180(%ebp), %ecx
	subl	$8, %esp
	pushl	%ebx
	movl	-124(%ebp), %ebx
	pushl	-168(%ebp)
	pushl	-172(%ebp)
	pushl	$-1
	pushl	$1
	movl	8(%ecx), %eax
	addl	%ebx, %eax
	pushl	%eax
	call	___sprintf_chk
	movzbl	-192(%ebp), %ecx
	addl	$32, %esp
	addl	%eax, %ebx
	movl	%ebx, -124(%ebp)
L830:
	movl	-112(%ebp), %eax
	addl	$1, %edi
	cmpl	8(%eax), %edi
	jl	L831
	movl	%ecx, %ebx
L834:
	movl	-180(%ebp), %eax
	movl	-176(%ebp), %edx
	movl	4(%eax), %edi
	addl	%edi, %edx
	addl	-120(%ebp), %edx
	call	_linebuffer_setlen
	movl	-84(%ebp), %edx
	subl	$4, %esp
	movl	-184(%ebp), %ecx
	sall	$4, %edx
	movl	%edx, %eax
	movl	-160(%ebp), %edx
	addl	12(%ecx,%eax), %edx
	leal	lC35-L30$pb(%esi), %eax
	pushl	%edx
	pushl	-120(%ebp)
	pushl	-168(%ebp)
	pushl	%eax
	movl	-180(%ebp), %eax
	pushl	$-1
	pushl	$1
	addl	8(%eax), %edi
	pushl	%edi
	call	___sprintf_chk
	addl	$32, %esp
L1304:
	movl	-116(%ebp), %eax
	movb	$1, 13(%eax)
	movl	-100(%ebp), %eax
	movl	(%eax), %edi
L835:
	movl	-116(%ebp), %ecx
	movl	_lineno-L30$pb(%esi), %eax
	movb	$1, 12(%ecx)
	movl	%eax, 16(%ecx)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%ecx)
	movl	-120(%ebp), %eax
	movl	%eax, 8(%ecx)
	movl	-84(%ebp), %eax
	sall	$4, %eax
	addl	-184(%ebp), %eax
	movl	12(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, (%ecx)
	movl	%eax, 20(%ecx)
	testl	%edi, %edi
	je	L1328
L846:
	movzbl	-188(%ebp), %eax
	call	_make_C_tag
	movb	$0, -116(%ebp)
	jmp	L735
	.align 4,0x90
L715:
	addl	$1, -104(%ebp)
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L717:
	movzbl	1(%edi), %edx
	cmpb	$42, %dl
	je	L1329
	leal	_typdef-L30$pb(%esi), %eax
	movl	%eax, -76(%ebp)
	movl	_typdef-L30$pb(%esi), %eax
	cmpb	$47, %dl
	jne	L725
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	cmpl	$5, %eax
	jne	L1018
L872:
	cmpl	$3, _objdef-L30$pb(%esi)
	je	L1330
L955:
	movl	-80(%ebp), %edi
	leal	_lbs-L30$pb(%esi), %eax
	movl	%eax, -184(%ebp)
	movl	_charno-L30$pb(%esi), %edx
	movl	%edi, %ebx
	sall	$4, %ebx
	leal	4(%eax,%ebx), %eax
	addl	-184(%ebp), %ebx
	cmpb	$0, -67(%ebp)
	movl	%edx, (%ebx)
	movl	-64(%ebp), %edx
	jne	L1308
	call	_readline
	movl	12(%ebx), %eax
	movl	%eax, -60(%ebp)
	movzbl	-68(%ebp), %eax
	testb	%al, %al
	je	L957
	movl	-148(%ebp), %edx
	movb	%al, 12+_token-L30$pb(%esi)
	movzbl	-149(%ebp), %eax
	movb	$0, -68(%ebp)
	movl	%edx, _token-L30$pb(%esi)
	movl	-140(%ebp), %edx
	movb	%al, 13+_token-L30$pb(%esi)
	movl	-144(%ebp), %eax
	movl	%edx, 4+_token-L30$pb(%esi)
	movl	-132(%ebp), %edx
	movl	%eax, 16+_token-L30$pb(%esi)
	movl	-136(%ebp), %eax
	movl	%edx, 8+_token-L30$pb(%esi)
	movl	%eax, 20+_token-L30$pb(%esi)
L957:
	movl	$0, _definedef-L30$pb(%esi)
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	L705
	.align 4,0x90
L718:
	movl	-104(%ebp), %edi
	testl	%edi, %edi
	jne	L981
	movzbl	_inattribute-L30$pb(%esi), %ecx
	movb	%cl, -72(%ebp)
	testb	%cl, %cl
	je	L1331
	movzbl	-72(%ebp), %eax
	movb	$0, -65(%ebp)
	movb	$0, -72(%ebp)
	movb	%al, -66(%ebp)
	jmp	L706
	.align 4,0x90
L719:
	testl	$65536, -88(%ebp)
	jne	L726
L727:
	leal	_typdef-L30$pb(%esi), %eax
	movl	%eax, -76(%ebp)
	movl	_typdef-L30$pb(%esi), %eax
L725:
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	cmpl	$5, %eax
	jne	L964
L857:
	movl	_definedef-L30$pb(%esi), %edi
	testl	%edi, %edi
	jne	L705
	movl	_fvdef-L30$pb(%esi), %ecx
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	cmpl	$9, %ecx
	ja	L954
	movl	$1, %eax
	sall	%cl, %eax
	testl	$840, %eax
	jne	L705
L954:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L720:
	leal	_definedef-L30$pb(%esi), %edx
	movb	$0, -72(%ebp)
	movl	%edx, -100(%ebp)
	movl	_definedef-L30$pb(%esi), %edx
	movb	$0, -65(%ebp)
	testl	%edx, %edx
	jne	L705
	movl	-84(%ebp), %edx
	sall	$4, %edx
	movl	12+_lbs-L30$pb(%esi,%edx), %ebx
	cmpl	%ebx, %edi
	jbe	L728
	movb	%al, -65(%ebp)
	movb	%al, -76(%ebp)
	movl	%edi, -72(%ebp)
	jmp	L731
	.align 4,0x90
L730:
	movl	%eax, %ebx
	cmpl	%eax, -72(%ebp)
	jbe	L1332
L731:
	movsbl	(%ebx), %ecx
	leal	1(%ebx), %eax
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L729
	movl	$1, %edi
	sall	%cl, %edi
	andl	$8388639, %edi
	jne	L730
L729:
	movb	$0, -65(%ebp)
	cmpb	$42, %dl
	jne	L730
	cmpb	$47, 1(%ebx)
	jne	L730
	movzbl	-76(%ebp), %ecx
	leal	2(%ebx), %eax
	movb	%cl, -65(%ebp)
	jmp	L730
	.align 4,0x90
L721:
	movl	-104(%ebp), %edx
	testl	%edx, %edx
	jne	L978
	movzbl	_inattribute-L30$pb(%esi), %ecx
	movb	$0, -65(%ebp)
	movb	%cl, -72(%ebp)
	testb	%cl, %cl
	jne	L706
	movl	_fvdef-L30$pb(%esi), %ecx
	leal	_fvdef-L30$pb(%esi), %edx
	movl	%edx, -96(%ebp)
	cmpl	$9, %ecx
	ja	L722
	movl	$1, %edx
	sall	%cl, %edx
	andl	$866, %edx
	je	L722
	xorl	%ecx, %ecx
	movb	%al, -72(%ebp)
	movb	%cl, -66(%ebp)
	movb	%cl, -65(%ebp)
	jmp	L705
	.align 4,0x90
L714:
	movl	-104(%ebp), %edi
	testl	%edi, %edi
	jne	L1333
	cmpl	$5, _typdef-L30$pb(%esi)
	leal	_typdef-L30$pb(%esi), %eax
	movb	$0, -72(%ebp)
	movl	%eax, -76(%ebp)
	movb	$0, -65(%ebp)
	je	L735
	jmp	L964
	.align 4,0x90
L710:
	movl	-80(%ebp), %edi
	leal	_lbs-L30$pb(%esi), %ecx
	movl	_charno-L30$pb(%esi), %edx
	movl	%edi, %eax
	sall	$4, %eax
	leal	(%ecx,%eax), %ebx
	movl	%edx, (%ebx)
	movl	-64(%ebp), %edx
	leal	4(%ecx,%eax), %eax
	call	_readline
	movl	12(%ebx), %eax
	movl	%edi, -84(%ebp)
	movb	$0, -67(%ebp)
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edi
	jmp	L1323
	.align 4,0x90
L974:
	movl	$1, -176(%ebp)
	leal	lC26-L30$pb(%esi), %eax
	movl	%eax, -168(%ebp)
	jmp	L703
	.align 4,0x90
L1315:
	movl	$4, 12+_cstack-L30$pb(%esi)
	subl	$12, %esp
	pushl	$16
	movl	$0, 8+_cstack-L30$pb(%esi)
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L702
	movl	-112(%ebp), %ebx
	subl	$12, %esp
	movl	%eax, (%ebx)
	pushl	$16
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L702
	movl	%eax, 4(%ebx)
	jmp	L700
	.align 4,0x90
L712:
	movl	-80(%ebp), %eax
	leal	_lbs-L30$pb(%esi), %edi
	movl	_charno-L30$pb(%esi), %edx
	sall	$4, %eax
	leal	(%edi,%eax), %ebx
	movl	%edx, (%ebx)
	movl	-64(%ebp), %edx
	leal	4(%edi,%eax), %eax
	call	_readline
	movl	12(%ebx), %eax
	movl	%eax, -60(%ebp)
	movzbl	-68(%ebp), %eax
	testb	%al, %al
	je	L713
	movl	-148(%ebp), %edx
	movb	%al, 12+_token-L30$pb(%esi)
	movzbl	-149(%ebp), %eax
	movb	$0, -68(%ebp)
	movl	%edx, _token-L30$pb(%esi)
	movl	-140(%ebp), %edx
	movb	%al, 13+_token-L30$pb(%esi)
	movl	-144(%ebp), %eax
	movl	%edx, 4+_token-L30$pb(%esi)
	movl	-132(%ebp), %edx
	movl	%eax, 16+_token-L30$pb(%esi)
	movl	-136(%ebp), %eax
	movl	%edx, 8+_token-L30$pb(%esi)
	movl	%eax, 20+_token-L30$pb(%esi)
L713:
	movl	-80(%ebp), %eax
	movb	$0, -67(%ebp)
	movl	$0, _definedef-L30$pb(%esi)
	movl	-60(%ebp), %edi
	movb	$0, -66(%ebp)
	movb	$0, -65(%ebp)
	movl	%eax, -84(%ebp)
	jmp	L1323
	.align 4,0x90
L1324:
	cmpl	$3, _structdef-L30$pb(%esi)
	jne	L736
	jmp	L735
	.align 4,0x90
L871:
	cmpb	$0, _inattribute-L30$pb(%esi)
	je	L917
	addl	$1, -156(%ebp)
	jmp	L705
	.align 4,0x90
L870:
	cmpb	$0, _inattribute-L30$pb(%esi)
	je	L924
	subl	$1, -156(%ebp)
	jne	L705
	movb	$0, _inattribute-L30$pb(%esi)
	jmp	L705
	.align 4,0x90
L869:
	movl	_definedef-L30$pb(%esi), %edi
	testl	%edi, %edi
	jne	L705
	cmpl	$5, _fvdef-L30$pb(%esi)
	jne	L705
	movl	$0, _fvdef-L30$pb(%esi)
	movb	$0, 12+_token-L30$pb(%esi)
	jmp	L705
	.align 4,0x90
L867:
	cmpl	$6, _objdef-L30$pb(%esi)
	jne	L857
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	L857
	movl	$7, _objdef-L30$pb(%esi)
	movl	$0, -108(%ebp)
	jmp	L705
	.align 4,0x90
L868:
	movl	_definedef-L30$pb(%esi), %edx
	testl	%edx, %edx
	jne	L705
	cmpb	$0, _inattribute-L30$pb(%esi)
	jne	L705
	movl	_objdef-L30$pb(%esi), %eax
	leal	_objdef-L30$pb(%esi), %edi
	cmpl	$8, %eax
	je	L893
	cmpl	$10, %eax
	je	L893
L894:
	cmpl	$9, _fvdef-L30$pb(%esi)
	leal	_structdef-L30$pb(%esi), %eax
	movl	%eax, -124(%ebp)
	movl	_structdef-L30$pb(%esi), %ebx
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	ja	L895
	movl	_fvdef-L30$pb(%esi), %eax
	movl	L897-L30$pb(%esi,%eax,4), %edx
	addl	%esi, %edx
	jmp	*%edx
	.align 2,0x90
L897:
	.long	L895-L30$pb
	.long	L898-L30$pb
	.long	L901-L30$pb
	.long	L898-L30$pb
	.long	L900-L30$pb
	.long	L898-L30$pb
	.long	L898-L30$pb
	.long	L899-L30$pb
	.long	L898-L30$pb
	.long	L896-L30$pb
	.align 4,0x90
L866:
	cmpb	$0, _inattribute-L30$pb(%esi)
	jne	L705
	cmpb	$0, -150(%ebp)
	je	L873
	movl	4+_token-L30$pb(%esi), %edi
	testl	%edi, %edi
	jne	L873
	movzbl	12+_token-L30$pb(%esi), %ebx
	testb	%bl, %bl
	je	L873
	xorl	%eax, %eax
	call	_make_C_tag
	movb	%bl, -150(%ebp)
	jmp	L705
	.align 4,0x90
L861:
	movl	_definedef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	cmpb	$0, _inattribute-L30$pb(%esi)
	jne	L705
	cmpl	$2, _structdef-L30$pb(%esi)
	jne	L910
	movl	$0, _structdef-L30$pb(%esi)
L910:
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	L1310
	jbe	L1334
	cmpl	$3, %eax
	je	L913
	cmpl	$4, %eax
	jne	L705
L1310:
	movl	-76(%ebp), %eax
	movl	$5, (%eax)
	xorl	%eax, %eax
	call	_make_C_tag
	jmp	L705
	.align 4,0x90
L863:
	movl	_definedef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	movl	_fvdef-L30$pb(%esi), %ecx
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	cmpl	$9, %ecx
	ja	L950
	movl	$1, %eax
	sall	%cl, %eax
	testl	$840, %eax
	jne	L705
	testb	$16, %al
	je	L950
	movl	_members-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L1021
	cmpl	$1, -108(%ebp)
	je	L951
L1021:
	movl	_globals-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L950
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	L950
	cmpb	$0, _fvextern-L30$pb(%esi)
	je	L951
	movl	_declarations-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L950
L951:
	xorl	%eax, %eax
	call	_make_C_tag
L950:
	movl	-96(%ebp), %eax
	movl	$9, (%eax)
	jmp	L705
	.align 4,0x90
L862:
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L857
	subl	$1, %eax
	movl	-60(%ebp), %edi
	movl	%eax, -92(%ebp)
	jmp	L1323
	.align 4,0x90
L864:
	testb	$1, -88(%ebp)
	je	L857
	cmpl	$2, _structdef-L30$pb(%esi)
	je	L953
	cmpl	$4, _fvdef-L30$pb(%esi)
	jne	L857
L953:
	addl	$1, -92(%ebp)
	jmp	L705
	.align 4,0x90
L859:
	movl	_definedef-L30$pb(%esi), %ebx
	testl	%ebx, %ebx
	jne	L705
	subl	$1, -108(%ebp)
	cmpb	$0, _ignoreindent-L30$pb(%esi)
	jne	L946
	movl	-84(%ebp), %eax
	sall	$4, %eax
	movl	12+_lbs-L30$pb(%esi,%eax), %eax
	addl	$1, %eax
	cmpl	%eax, -60(%ebp)
	jne	L946
	movl	-108(%ebp), %ecx
	movl	$0, -128(%ebp)
	testl	%ecx, %ecx
	je	L947
L1307:
	movb	$0, 12+_token-L30$pb(%esi)
L947:
	cmpl	$9, _fvdef-L30$pb(%esi)
	movl	$0, -108(%ebp)
	jne	L949
	movl	$0, _fvdef-L30$pb(%esi)
L949:
	movl	-108(%ebp), %ebx
	movl	%ebx, %eax
	call	_popclass_above
	movl	-76(%ebp), %eax
	movl	$0, _structdef-L30$pb(%esi)
	cmpl	$3, (%eax)
	jne	L705
	cmpl	%ebx, -164(%ebp)
	jl	L705
	movl	$4, (%eax)
	jmp	L705
	.align 4,0x90
L860:
	movl	_definedef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	movl	-76(%ebp), %eax
	cmpl	$2, (%eax)
	jne	L930
	movl	$3, (%eax)
	movl	-108(%ebp), %eax
	movl	%eax, -164(%ebp)
L930:
	leal	_fvdef-L30$pb(%esi), %eax
	movl	_structdef-L30$pb(%esi), %ebx
	movl	%eax, -96(%ebp)
	movl	_fvdef-L30$pb(%esi), %eax
	leal	_structdef-L30$pb(%esi), %edx
	movl	%edx, -124(%ebp)
	cmpl	$7, %eax
	je	L931
	cmpl	$8, %eax
	je	L932
	testl	%eax, %eax
	je	L1335
	movl	-108(%ebp), %eax
L1306:
	leal	1(%eax), %edi
L938:
	cmpl	$1, %ebx
	je	L943
	testl	%ebx, %ebx
	je	L944
	cmpl	$3, %ebx
	ja	L944
	movl	4+_token-L30$pb(%esi), %edx
	movl	-108(%ebp), %eax
	addl	_token-L30$pb(%esi), %edx
	movl	8+_token-L30$pb(%esi), %ecx
	call	_pushclass_above
	movl	-124(%ebp), %eax
	movl	$0, (%eax)
	xorl	%eax, %eax
	call	_make_C_tag
L944:
	movl	%edi, -108(%ebp)
	jmp	L705
	.align 4,0x90
L726:
	cmpb	$37, 1(%edi)
	jne	L727
	leal	2(%edi), %eax
	movb	$0, _fvextern-L30$pb(%esi)
	movl	%eax, -60(%ebp)
	movl	$0, _definedef-L30$pb(%esi)
	xorb	$1, -150(%ebp)
	movb	$0, -116(%ebp)
	movl	$0, _fvdef-L30$pb(%esi)
	movl	$0, _typdef-L30$pb(%esi)
	movl	$0, _structdef-L30$pb(%esi)
	movb	$0, -67(%ebp)
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	movl	$0, -108(%ebp)
	jmp	L705
	.align 4,0x90
L1333:
	cmpb	$93, %bl
	je	L1336
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	testb	%bl, %bl
	jne	L705
	movl	-80(%ebp), %edi
	leal	_lbs-L30$pb(%esi), %ecx
	movl	_charno-L30$pb(%esi), %edx
	movl	%edi, %eax
	sall	$4, %eax
	leal	(%ecx,%eax), %ebx
	movl	%edx, (%ebx)
	movl	-64(%ebp), %edx
	leal	4(%ecx,%eax), %eax
	call	_readline
	movl	12(%ebx), %eax
	movl	%edi, -84(%ebp)
	movl	%eax, -60(%ebp)
	xorl	%eax, %eax
	movb	%al, -67(%ebp)
	movb	%al, -72(%ebp)
	movb	%al, -65(%ebp)
	jmp	L705
	.align 4,0x90
L981:
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	movb	%al, -66(%ebp)
	jmp	L705
	.align 4,0x90
L978:
	movb	%al, -72(%ebp)
	movb	$0, -65(%ebp)
	jmp	L705
L1329:
	movl	-104(%ebp), %ecx
	leal	2(%edi), %edx
	movl	$32, %ebx
	movb	$0, -72(%ebp)
	movl	%edx, -60(%ebp)
	movb	%al, -65(%ebp)
	testl	%ecx, %ecx
	je	L706
	jmp	L705
L873:
	movl	_definedef-L30$pb(%esi), %ebx
	testl	%ebx, %ebx
	jne	L705
	movl	_objdef-L30$pb(%esi), %eax
	leal	_objdef-L30$pb(%esi), %edi
	cmpl	$8, %eax
	je	L874
	cmpl	$10, %eax
	je	L874
	cmpl	$3, %eax
	jne	L875
	movl	$1, %eax
	movl	$11, (%edi)
	call	_make_C_tag
L875:
	cmpl	$2, _structdef-L30$pb(%esi)
	je	L1337
	testb	$1, -88(%ebp)
	je	L705
	cmpl	$7, _fvdef-L30$pb(%esi)
	jne	L705
	movl	$1, %eax
	call	_make_C_tag
	movl	$8, _fvdef-L30$pb(%esi)
	jmp	L705
	.align 4,0x90
L946:
	cmpl	$-1, -108(%ebp)
	je	L1307
	movl	-108(%ebp), %edx
	testl	%edx, %edx
	jne	L949
	jmp	L947
L924:
	movl	_definedef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	cmpl	$5, _objdef-L30$pb(%esi)
	jne	L925
	cmpl	$1, -128(%ebp)
	je	L1338
L925:
	movl	-128(%ebp), %eax
	subl	$1, %eax
	je	L926
	movl	$0, %edx
	cmovns	%eax, %edx
	movl	%edx, -128(%ebp)
	jmp	L705
L917:
	movl	_definedef-L30$pb(%esi), %ebx
	testl	%ebx, %ebx
	jne	L705
	cmpl	$3, _objdef-L30$pb(%esi)
	jne	L918
	movl	-128(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1339
L918:
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	movl	_fvdef-L30$pb(%esi), %eax
	cmpl	$4, %eax
	je	L919
	cmpl	$7, %eax
	je	L920
	cmpl	$3, %eax
	je	L921
L922:
	addl	$1, -128(%ebp)
	jmp	L705
L737:
	movzbl	_table.5887-L30$pb(%esi,%eax), %ecx
	testb	%cl, %cl
	je	L735
	testl	%edi, %edi
	je	L849
	cmpl	$1, %edi
	jne	L851
	movl	4+_token-L30$pb(%esi), %eax
	movl	12+_token-L30$pb(%esi), %ebx
	movl	_token-L30$pb(%esi), %edx
	movl	8+_token-L30$pb(%esi), %edi
	movl	%eax, -76(%ebp)
	movl	%eax, -44(%ebp)
	movl	20+_token-L30$pb(%esi), %eax
	movl	%ebx, -36(%ebp)
	movl	16+_token-L30$pb(%esi), %ebx
	movl	%edx, -48(%ebp)
	movl	%edi, -40(%ebp)
	movl	%eax, -92(%ebp)
	movl	%eax, -28(%ebp)
	movl	-76(%ebp), %eax
	movl	%ebx, -32(%ebp)
	movl	%edx, -148(%ebp)
	movl	%edi, -132(%ebp)
	movl	%eax, -140(%ebp)
	movzbl	12+_token-L30$pb(%esi), %eax
	movl	%ebx, -144(%ebp)
	movb	%al, -68(%ebp)
	movzbl	13+_token-L30$pb(%esi), %eax
	movb	%al, -149(%ebp)
	movl	-92(%ebp), %eax
	movl	%eax, -136(%ebp)
L851:
	movl	-84(%ebp), %eax
	sall	$4, %eax
	cmpb	$0, -150(%ebp)
	movl	12+_lbs-L30$pb(%esi,%eax), %eax
	je	L856
	leal	1(%eax), %edx
	movl	$0, -92(%ebp)
	cmpl	%edx, -60(%ebp)
	jne	L705
L856:
	movl	-60(%ebp), %edx
	movb	%cl, -116(%ebp)
	movl	$0, -92(%ebp)
	movl	$1, -120(%ebp)
	subl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -160(%ebp)
	jmp	L705
L1332:
	cmpb	$0, -65(%ebp)
	jne	L728
	movb	$0, -66(%ebp)
	movb	$0, -72(%ebp)
	jmp	L705
L738:
	cmpb	$0, _table.5891-L30$pb(%esi,%eax)
	je	L735
L741:
	addl	$1, -120(%ebp)
	movl	$0, -92(%ebp)
	jmp	L705
L728:
	movl	-100(%ebp), %eax
	movb	$0, -72(%ebp)
	cmpl	$9, _fvdef-L30$pb(%esi)
	movb	$0, -65(%ebp)
	movl	$1, (%eax)
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	jne	L705
	movl	_structdef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L705
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L705
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	movl	-128(%ebp), %eax
	sete	%dl
	testl	%eax, %eax
	sete	%al
	andb	%al, %dl
	movb	%dl, -65(%ebp)
	jne	L1340
	xorl	%eax, %eax
	movb	%al, -66(%ebp)
	movb	%al, -72(%ebp)
	jmp	L705
L901:
	movl	-96(%ebp), %eax
	movl	$8, (%eax)
	jmp	L898
L896:
	testl	%ebx, %ebx
	jne	L898
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L705
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	jne	L705
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	jne	L705
	jmp	L954
	.align 4,0x90
L899:
	movl	_declarations-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L905
	movl	-76(%ebp), %edx
	movl	(%edx), %edi
	testl	%edi, %edi
	jne	L906
	testl	%ebx, %ebx
	jne	L907
	movl	-112(%ebp), %ecx
	movl	8(%ecx), %edx
	testl	%edx, %edx
	jle	L907
	movl	4(%ecx), %ecx
	movl	-4(%ecx,%edx,4), %edx
	addl	$1, %edx
	cmpl	-108(%ebp), %edx
	je	L906
L907:
	movl	$1, %eax
	call	_make_C_tag
	movl	-96(%ebp), %eax
	movl	$4, (%eax)
L909:
	movb	$0, 12+_token-L30$pb(%esi)
	jmp	L898
L900:
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	jne	L898
	movl	_globals-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L903
	movl	-108(%ebp), %eax
	orl	-92(%ebp), %eax
	jne	L903
	cmpb	$0, _fvextern-L30$pb(%esi)
	je	L904
	cmpl	$0, _declarations-L30$pb(%esi)
	je	L903
L904:
	xorl	%eax, %eax
	call	_make_C_tag
	jmp	L898
L895:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	jmp	L898
L1331:
	movl	_fvdef-L30$pb(%esi), %edx
	leal	-8(%edx), %ecx
	cmpl	$1, %ecx
	seta	%cl
	cmpl	$6, %edx
	setne	%dl
	andb	%dl, %cl
	movb	%cl, -65(%ebp)
	jne	L1341
	movb	%al, -66(%ebp)
	movzbl	-65(%ebp), %eax
	movb	%al, -72(%ebp)
	jmp	L705
L931:
	testb	$1, -88(%ebp)
	je	L935
	movl	_class_qualify-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L1342
L935:
	movl	$1, %eax
	call	_make_C_tag
L932:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	movl	-108(%ebp), %eax
	leal	1(%eax), %edi
	jmp	L938
L1334:
	testl	%eax, %eax
	jne	L705
L913:
	movl	_fvdef-L30$pb(%esi), %ecx
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	cmpl	$9, %ecx
	ja	L954
	movl	$1, %eax
	sall	%cl, %eax
	testl	$840, %eax
	jne	L705
	testb	$16, %al
	je	L954
	movl	_members-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L1020
	cmpl	$1, -108(%ebp)
	je	L915
L1020:
	movl	_globals-L30$pb(%esi), %edi
	testl	%edi, %edi
	je	L954
	cmpl	$0, -108(%ebp)
	jne	L954
	cmpb	$0, _fvextern-L30$pb(%esi)
	je	L915
	cmpl	$0, _declarations-L30$pb(%esi)
	je	L954
L915:
	xorl	%eax, %eax
	call	_make_C_tag
	jmp	L954
	.align 4,0x90
L722:
	movl	-96(%ebp), %edx
	movb	$0, _fvextern-L30$pb(%esi)
	movb	$0, -66(%ebp)
	movb	$0, -65(%ebp)
	movb	%al, -72(%ebp)
	movl	$0, (%edx)
	jmp	L705
L1336:
	subl	$1, -104(%ebp)
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	jmp	L705
L1330:
	movl	$1, %eax
	call	_make_C_tag
	movl	$11, _objdef-L30$pb(%esi)
	jmp	L955
L943:
	movl	-108(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_pushclass_above
	movl	-124(%ebp), %eax
	movl	$0, (%eax)
	jmp	L944
L826:
	movl	_objdef-L30$pb(%esi), %eax
	cmpl	$5, %eax
	je	L1343
	movl	-100(%ebp), %edx
	andl	$-3, %eax
	movl	(%edx), %edi
	cmpl	$8, %eax
	jne	L839
	movl	-116(%ebp), %eax
	movb	$1, 13(%eax)
	jmp	L835
L1338:
	movl	$1, %eax
	call	_make_C_tag
	movl	$11, _objdef-L30$pb(%esi)
L926:
	movl	_fvdef-L30$pb(%esi), %eax
	subl	$5, %eax
	cmpl	$1, %eax
	ja	L928
	movl	$7, _fvdef-L30$pb(%esi)
L928:
	movl	_structdef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L929
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L929
	movl	4(%edx), %edx
	movl	$0, -128(%ebp)
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L705
L929:
	movl	-76(%ebp), %eax
	movl	$0, -128(%ebp)
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	subl	$2, %eax
	andl	$-3, %eax
	jne	L705
	jmp	L1310
L1335:
	movl	_objdef-L30$pb(%esi), %eax
	leal	_objdef-L30$pb(%esi), %edi
	cmpl	$8, %eax
	je	L939
	cmpl	$10, %eax
	je	L939
	cmpl	$3, %eax
	je	L1344
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	jne	L1306
	testl	%ebx, %ebx
	jne	L1015
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L942
	movl	-76(%ebp), %eax
	cmpl	$0, (%eax)
	sete	%al
	movzbl	%al, %eax
	negl	%eax
	movl	%eax, -108(%ebp)
L942:
	movl	-108(%ebp), %edi
	addl	$1, %edi
	jmp	L944
	.align 4,0x90
L921:
	movl	-96(%ebp), %eax
	movl	$5, (%eax)
	jmp	L922
L1328:
	movl	-96(%ebp), %eax
	movl	(%eax), %ecx
	leal	-3(%ecx), %eax
	cmpl	$1, %eax
	jbe	L847
	movl	_structdef-L30$pb(%esi), %edx
	cmpl	$2, %edx
	je	L847
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	subl	$2, %eax
	andl	$-3, %eax
	jne	L1345
L847:
	movl	-80(%ebp), %edi
	movl	$1, %eax
	movb	$0, -116(%ebp)
	movl	-84(%ebp), %ecx
	subl	%edi, %eax
	movl	%edi, %edx
	cmpl	%ecx, %edi
	cmove	%eax, %edx
	movl	%edx, -80(%ebp)
	jmp	L735
L1341:
	movb	$0, _fvextern-L30$pb(%esi)
	movl	$0, _fvdef-L30$pb(%esi)
	movb	%cl, -66(%ebp)
	movb	$0, -65(%ebp)
	jmp	L705
L893:
	movl	$1, %eax
	call	_make_C_tag
	movl	$6, (%edi)
	jmp	L894
L849:
	movl	-124(%ebp), %eax
	cmpl	$5, %eax
	je	L852
	cmpl	$7, %eax
	jne	L854
	testl	$4095, -88(%ebp)
	je	L855
	movl	_declarations-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L854
L855:
	movl	$1, %eax
	movb	%cl, -76(%ebp)
	call	_make_C_tag
	movl	-96(%ebp), %eax
	movzbl	-76(%ebp), %ecx
	movl	$8, (%eax)
L854:
	cmpl	$2, _structdef-L30$pb(%esi)
	leal	_structdef-L30$pb(%esi), %eax
	movl	%eax, -124(%ebp)
	jne	L851
	movl	-88(%ebp), %eax
	andl	$5, %eax
	cmpl	$5, %eax
	je	L851
	movl	-108(%ebp), %eax
	movb	%cl, -76(%ebp)
	call	_popclass_above
	movl	-124(%ebp), %eax
	movzbl	-76(%ebp), %ecx
	movl	$0, (%eax)
	jmp	L851
L1326:
	movl	-84(%ebp), %eax
	movl	-184(%ebp), %edx
	movl	-160(%ebp), %ecx
	sall	$4, %eax
	addl	12(%edx,%eax), %ecx
	movl	-120(%ebp), %edx
	movl	%ecx, -116(%ebp)
	movl	%edx, %eax
	subl	$2, %eax
	cmpl	$13, %eax
	ja	L743
	movl	%edx, %eax
	cmpl	$2, %edx
	je	L998
	movzbl	2(%ecx), %ecx
	leal	_asso_values.6550-L30$pb(%esi), %edx
	movl	%edx, -188(%ebp)
	movsbl	_asso_values.6550-L30$pb(%esi,%ecx), %ecx
	addl	%eax, %ecx
L744:
	movl	-116(%ebp), %eax
	movzbl	1(%eax), %edx
	movl	-188(%ebp), %eax
	movsbl	(%eax,%edx), %eax
	addl	%eax, %ecx
	cmpl	$34, %ecx
	ja	L743
	leal	_wordlist.6565-L30$pb(%esi), %eax
	movl	%ecx, -208(%ebp)
	movl	%eax, %edx
	movl	%eax, -204(%ebp)
	leal	(%ecx,%ecx,2), %eax
	movl	-116(%ebp), %ecx
	leal	(%edx,%eax,4), %eax
	movl	%eax, -200(%ebp)
	movl	(%eax), %eax
	movl	%eax, -188(%ebp)
	movzbl	(%eax), %eax
	cmpb	%al, (%ecx)
	jne	L743
	movl	-120(%ebp), %edx
	subl	$4, %esp
	leal	-1(%edx), %eax
	pushl	%eax
	movl	-188(%ebp), %eax
	addl	$1, %eax
	pushl	%eax
	leal	1(%ecx), %eax
	pushl	%eax
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L743
	movl	-188(%ebp), %eax
	movl	-120(%ebp), %ecx
	cmpb	$0, (%eax,%ecx)
	jne	L743
	movl	-200(%ebp), %eax
	movl	-208(%ebp), %ecx
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L747
	testl	%eax, -88(%ebp)
	je	L743
L747:
	movl	-204(%ebp), %edx
	leal	(%ecx,%ecx,2), %eax
	movl	8(%edx,%eax,4), %ecx
	leal	_toktype.6703-L30$pb(%esi), %eax
	movl	%ecx, _toktype.6703-L30$pb(%esi)
	cmpl	$6, %ecx
	je	L1346
	cmpl	$1, %edi
	je	L754
	testl	%edi, %edi
	je	L755
L1296:
	cmpl	$2, %edi
	je	L750
	leal	lC30-L30$pb(%esi), %edx
	subl	$12, %esp
	movl	%eax, -124(%ebp)
	pushl	%edx
	call	_error
	movl	-124(%ebp), %eax
	addl	$16, %esp
L756:
	movl	-76(%ebp), %edx
	movl	(%edx), %edx
	cmpl	$1, %edx
	je	L759
	testl	%edx, %edx
	je	L760
	cmpl	$2, %edx
	je	L761
	cmpl	$4, %edx
	jne	L763
	movl	(%eax), %ecx
	cmpl	$13, %ecx
	ja	L1299
	movl	$1, %eax
	sall	%cl, %eax
	testb	$42, %ah
	je	L1299
L971:
	movl	-180(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
L770:
	cmpb	$0, -116(%ebp)
	je	L735
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
L753:
	cmpl	$8, -124(%ebp)
	movb	$0, -116(%ebp)
	jne	L735
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	jmp	L735
	.align 4,0x90
L1325:
	movl	-60(%ebp), %eax
	cmpb	$58, (%eax)
	jne	L739
	movzbl	1(%eax), %eax
	cmpb	$0, _table.5887-L30$pb(%esi,%eax)
	je	L739
	movl	-88(%ebp), %eax
	testb	$16, %ah
	je	L740
	andl	$-4098, %eax
	orl	$1, %eax
	movl	%eax, -88(%ebp)
L740:
	addl	$2, -60(%ebp)
	addl	$2, -120(%ebp)
	jmp	L741
	.align 4,0x90
L1337:
	movl	$3, _structdef-L30$pb(%esi)
	jmp	L705
L874:
	movl	_class_qualify-L30$pb(%esi), %ecx
	movl	$9, (%edi)
	testl	%ecx, %ecx
	je	L875
	movl	4+_token_name-L30$pb(%esi), %ebx
	leal	_token_name-L30$pb(%esi), %eax
	leal	1(%ebx), %edx
	call	_linebuffer_setlen
	addl	8+_token_name-L30$pb(%esi), %ebx
	movl	$58, %edx
	movw	%dx, (%ebx)
	jmp	L875
L920:
	movl	-96(%ebp), %eax
	movl	$6, (%eax)
	jmp	L922
L919:
	movl	-76(%ebp), %eax
	cmpl	$2, (%eax)
	jne	L921
	movl	-60(%ebp), %eax
	cmpb	$42, (%eax)
	je	L921
	movl	_structdef-L30$pb(%esi), %edx
	testl	%edx, %edx
	jne	L923
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L923
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L921
L923:
	xorl	%eax, %eax
	call	_make_C_tag
	movl	-76(%ebp), %eax
	movl	$5, (%eax)
	movl	-96(%ebp), %eax
	movl	$8, (%eax)
	jmp	L922
L878:
	leal	_fvdef-L30$pb(%esi), %eax
	movl	%eax, -96(%ebp)
	movl	_fvdef-L30$pb(%esi), %eax
	cmpl	$7, %eax
	je	L880
	cmpl	$8, %eax
	je	L881
	leal	_declarations-L30$pb(%esi), %edi
	cmpl	$4, %eax
	je	L1347
L883:
	movl	-96(%ebp), %eax
	movb	$0, _fvextern-L30$pb(%esi)
	movl	(%edi), %ecx
	movl	$0, (%eax)
	testl	%ecx, %ecx
	je	L891
	testb	$1, -88(%ebp)
	je	L891
	cmpl	$2, %ebx
	je	L1348
L891:
	movb	$0, 12+_token-L30$pb(%esi)
	jmp	L877
L839:
	cmpl	$2, -124(%ebp)
	jne	L840
	movl	-84(%ebp), %eax
	movl	-160(%ebp), %edx
	sall	$4, %eax
	addl	-184(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	12(%eax), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$70, %al
	sete	-124(%ebp)
	je	L1349
	movl	-120(%ebp), %edx
	leal	_token_name-L30$pb(%esi), %eax
	call	_linebuffer_setlen
	movl	-100(%ebp), %ecx
	subl	$4, %esp
	movl	-160(%ebp), %eax
	addl	12(%ecx), %eax
	pushl	-120(%ebp)
	pushl	%eax
	pushl	8+_token_name-L30$pb(%esi)
	call	_memcpy
	movl	8+_token_name-L30$pb(%esi), %eax
	addl	$16, %esp
	movl	-120(%ebp), %edx
	movb	$0, (%eax,%edx)
L963:
	movl	-116(%ebp), %edx
	movzbl	-124(%ebp), %eax
	movb	%al, 13(%edx)
	jmp	L835
L1343:
	movl	_class_qualify-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L837
	movl	_objtag-L30$pb(%esi), %edi
	subl	$12, %esp
	pushl	%edi
	call	_strlen
	movl	-120(%ebp), %edx
	addl	$16, %esp
	leal	2(%edx,%eax), %edx
	leal	_token_name-L30$pb(%esi), %eax
	call	_linebuffer_setlen
	movl	-84(%ebp), %eax
	subl	$4, %esp
	movl	-184(%ebp), %edx
	movl	-160(%ebp), %ecx
	sall	$4, %eax
	addl	12(%edx,%eax), %ecx
	leal	lC37-L30$pb(%esi), %eax
	pushl	%ecx
	pushl	-120(%ebp)
	pushl	%edi
L1303:
	pushl	%eax
	pushl	$-1
	pushl	$1
	pushl	8+_token_name-L30$pb(%esi)
	call	___sprintf_chk
	addl	$32, %esp
	jmp	L1304
L1344:
	movl	$1, %eax
	call	_make_C_tag
	movl	-108(%ebp), %eax
	movl	$11, (%edi)
	leal	1(%eax), %edi
	jmp	L938
L939:
	movl	$1, %eax
	call	_make_C_tag
	movl	-108(%ebp), %eax
	movl	$6, (%edi)
	leal	1(%eax), %edi
	jmp	L938
L837:
	movl	-120(%ebp), %edi
	leal	_token_name-L30$pb(%esi), %eax
	movl	%edi, %edx
	call	_linebuffer_setlen
	movl	-84(%ebp), %eax
	subl	$8, %esp
	movl	-184(%ebp), %ecx
	movl	-160(%ebp), %edx
	sall	$4, %eax
	addl	12(%ecx,%eax), %edx
	leal	lC36-L30$pb(%esi), %eax
	pushl	%edx
	pushl	%edi
	jmp	L1303
L1339:
	movl	$4, _objdef-L30$pb(%esi)
	jmp	L918
L743:
	movl	$0, _toktype.6703-L30$pb(%esi)
	leal	_toktype.6703-L30$pb(%esi), %eax
	cmpl	$1, %edi
	je	L748
	testl	%edi, %edi
	jne	L1296
	jmp	L756
L1359:
	movl	-88(%ebp), %eax
	testb	$16, %ah
	je	L813
	andl	$-4098, %eax
	orl	$1, %eax
	movl	%eax, -88(%ebp)
L813:
	movl	-96(%ebp), %eax
	movl	$3, (%eax)
	movzbl	-192(%ebp), %eax
	movb	%al, -188(%ebp)
L967:
	movl	-60(%ebp), %eax
	movsbl	-1(%eax), %ecx
	leal	-1(%eax), %edx
	movl	%eax, %edi
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L818
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L1287
	movl	%edi, %eax
L819:
	movsbl	(%eax), %ecx
	movl	%eax, %edx
	movl	%eax, -116(%ebp)
	addl	$1, %eax
	movl	%eax, %edi
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L818
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L819
	movl	-116(%ebp), %edx
L818:
	testb	%bl, %bl
	cmovne	%edi, %edx
	movzbl	(%edx), %ebx
	testb	%bl, %bl
	je	L1302
	movl	$1, %edi
L822:
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L824
	movl	%edi, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L824
L1302:
	leal	1(%edx), %eax
L823:
	movl	%eax, %edx
	movl	$3, -124(%ebp)
	subl	-60(%ebp), %edx
	addl	%edx, -120(%ebp)
	movl	%eax, -60(%ebp)
	jmp	L817
L824:
	leal	1(%edx), %eax
	cmpb	$40, %bl
	je	L823
	movzbl	1(%edx), %ebx
	movl	%eax, %edx
	testb	%bl, %bl
	jne	L822
	jmp	L1302
	.align 4,0x90
L840:
	movl	-120(%ebp), %edx
	leal	_token_name-L30$pb(%esi), %eax
	call	_linebuffer_setlen
	movl	-84(%ebp), %eax
	subl	$4, %esp
	movl	-184(%ebp), %edx
	movl	-160(%ebp), %ecx
	sall	$4, %eax
	addl	12(%edx,%eax), %ecx
	pushl	-120(%ebp)
	pushl	%ecx
	pushl	8+_token_name-L30$pb(%esi)
	call	_memcpy
	movl	-120(%ebp), %edx
	addl	$16, %esp
	movl	8+_token_name-L30$pb(%esi), %eax
	movb	$0, (%eax,%edx)
	movl	_structdef-L30$pb(%esi), %edx
	cmpl	$2, %edx
	je	L845
	movl	-76(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	subl	$2, %eax
	andl	$-3, %eax
	jne	L1350
L845:
	movl	-116(%ebp), %edx
	movzbl	-192(%ebp), %eax
	movb	%al, 13(%edx)
	jmp	L835
L852:
	movl	-96(%ebp), %eax
	movl	$0, -92(%ebp)
	movl	$6, (%eax)
	jmp	L705
L905:
	movl	_members-L30$pb(%esi), %ecx
	testl	%ecx, %ecx
	je	L961
	movl	-76(%ebp), %edx
	cmpl	$5, (%edx)
	je	L961
	testl	%ebx, %ebx
	jne	L961
	movl	-112(%ebp), %edx
	movl	8(%edx), %edx
	testl	%edx, %edx
	jle	L961
L973:
	movl	-112(%ebp), %edi
	movl	4(%edi), %ecx
	movl	-4(%ecx,%edx,4), %edx
	addl	$1, %edx
	cmpl	-108(%ebp), %edx
	je	L907
	testl	%eax, %eax
	jne	L909
L961:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	jmp	L909
L1322:
	xorl	%eax, %eax
	call	_make_C_tag
	movl	-76(%ebp), %eax
	movl	$0, _fvdef-L30$pb(%esi)
	movl	$0, (%eax)
	jmp	L898
L998:
	leal	_asso_values.6550-L30$pb(%esi), %eax
	movl	$2, %ecx
	movl	%eax, -188(%ebp)
	jmp	L744
L1342:
	movl	8+_token_name-L30$pb(%esi), %edx
	leal	_token_name-L30$pb(%esi), %eax
	movl	4+_token_name-L30$pb(%esi), %edi
	movl	%eax, -180(%ebp)
	addl	%edx, %edi
	cmpl	%edi, %edx
	jnb	L935
	movl	%edx, -76(%ebp)
	movl	%edx, %eax
	jmp	L937
L936:
	movl	%ecx, %eax
	cmpl	%ecx, %edi
	jbe	L1351
L937:
	cmpb	$58, (%eax)
	leal	1(%eax), %ecx
	jne	L936
	cmpb	$58, 1(%eax)
	jne	L936
	addl	$2, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %ecx
	jmp	L936
L1351:
	cmpl	%edx, -76(%ebp)
	jbe	L935
	movl	-76(%ebp), %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz; scasb
	leal	_token_name-L30$pb(%esi), %eax
	notl	%ecx
	leal	-1(%ecx), %edx
	movl	%ecx, %edi
	call	_linebuffer_setlen
	pushl	%eax
	movl	-180(%ebp), %eax
	pushl	%edi
	pushl	-76(%ebp)
	pushl	8(%eax)
	call	_memmove
	addl	$16, %esp
	jmp	L935
L903:
	movl	_members-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L898
	testl	%ebx, %ebx
	jne	L898
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L705
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	jne	L705
	jmp	L904
	.align 4,0x90
L1345:
	movl	_objdef-L30$pb(%esi), %eax
	testl	%eax, %eax
	jne	L847
	cmpl	$2, %ecx
	je	L846
	movb	$0, -116(%ebp)
	testl	%edx, %edx
	jne	L735
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L735
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	jne	L735
	jmp	L846
L1347:
	movl	_globals-L30$pb(%esi), %eax
	leal	_fvextern-L30$pb(%esi), %edi
	testl	%eax, %eax
	je	L885
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	L1352
L885:
	movl	_members-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L887
	testl	%ebx, %ebx
	jne	L887
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L887
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L886
L887:
	movl	-96(%ebp), %eax
	movb	$0, (%edi)
	movb	$0, 12+_token-L30$pb(%esi)
	movl	$0, (%eax)
	jmp	L877
L881:
	cmpl	$5, %ecx
	je	L884
	testb	$1, -88(%ebp)
	je	L877
L884:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	jmp	L877
L880:
	movl	_declarations-L30$pb(%esi), %eax
	leal	_declarations-L30$pb(%esi), %edi
	testl	%eax, %eax
	je	L888
	movl	-88(%ebp), %eax
	andl	$1, %eax
	orl	%ebx, %eax
	jne	L889
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L889
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L888
L889:
	testl	%ecx, %ecx
	je	L890
	cmpl	$5, %ecx
	je	L888
	testl	%ebx, %ebx
	jne	L883
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L888
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	je	L890
L888:
	movl	_members-L30$pb(%esi), %eax
	testl	%eax, %eax
	je	L883
	movl	-88(%ebp), %eax
	andl	$4095, %eax
	orl	%ebx, %eax
	jne	L883
	movl	-112(%ebp), %edx
	movl	8(%edx), %eax
	testl	%eax, %eax
	jle	L883
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	-108(%ebp), %eax
	jne	L883
L890:
	movl	$1, %eax
	call	_make_C_tag
	jmp	L883
L759:
	movl	(%eax), %ecx
	cmpl	$13, %ecx
	ja	L763
	sall	%cl, %edx
	andl	$10753, %edx
	je	L763
	movl	-76(%ebp), %edx
	movl	$2, (%edx)
L763:
	movl	(%eax), %eax
	leal	-7(%eax), %edx
	cmpl	$6, %edx
	ja	L771
	movl	L773-L30$pb(%esi,%edx,4), %edi
	addl	%esi, %edi
	jmp	*%edi
	.align 2,0x90
L773:
	.long	L1111-L30$pb
	.long	L771-L30$pb
	.long	L774-L30$pb
	.long	L774-L30$pb
	.long	L772-L30$pb
	.long	L771-L30$pb
	.long	L772-L30$pb
L774:
	testl	$4096, -88(%ebp)
	jne	L1353
L776:
	cmpl	$10, %eax
	je	L771
L1298:
	movl	$9, %eax
L772:
	movl	-180(%ebp), %edx
	movzbl	(%edx), %ecx
	movl	-128(%ebp), %edx
	movb	%cl, -116(%ebp)
	testl	%edx, %edx
	jne	L770
	movl	-96(%ebp), %edx
	movl	(%edx), %edx
	cmpl	$9, %edx
	je	L758
	movl	-76(%ebp), %edi
	cmpl	$1, (%edi)
	je	L1354
	cmpb	$0, _typedefs_or_cplusplus-L30$pb(%esi)
	je	L770
	cmpl	$0, _structdef-L30$pb(%esi)
	leal	_structdef-L30$pb(%esi), %edi
	movl	%edi, -124(%ebp)
	jne	L770
L779:
	movl	-124(%ebp), %edi
	movl	%eax, _structtype.6701-L30$pb(%esi)
	movl	-108(%ebp), %eax
	movl	$1, (%edi)
	movl	%eax, _structbracelev.6702-L30$pb(%esi)
	cmpl	$4, %edx
	jne	L770
L803:
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
L758:
	movb	$0, -116(%ebp)
	jmp	L735
L1111:
	leal	_structdef-L30$pb(%esi), %eax
	movl	%eax, -124(%ebp)
L775:
	movl	-180(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	movl	-124(%ebp), %eax
	cmpl	$2, (%eax)
	jne	L770
	movl	$3, (%eax)
	jmp	L770
	.align 4,0x90
L1346:
	movl	-180(%ebp), %eax
	movb	$1, (%eax)
	jmp	L753
L750:
	movl	-100(%ebp), %eax
	movl	$3, (%eax)
	cmpb	$40, %bl
	je	L1301
	cmpb	$0, _constantypedefs-L30$pb(%esi)
	je	L758
L1001:
	movb	$0, -188(%ebp)
	jmp	L742
L1327:
	leal	_token_name-L30$pb(%esi), %eax
	movl	$0, -124(%ebp)
	movl	%eax, -180(%ebp)
	movl	8+_token_name-L30$pb(%esi), %eax
	movl	$0, 4+_token_name-L30$pb(%esi)
	movb	$0, (%eax)
	jmp	L829
L1015:
	movl	$1, %edi
	jmp	L938
L1349:
	movl	-120(%ebp), %eax
	leal	-1(%eax), %ecx
	leal	_token_name-L30$pb(%esi), %eax
	movl	%ecx, %edx
	movl	%ecx, -192(%ebp)
	call	_linebuffer_setlen
	leal	_token_name-L30$pb(%esi), %ecx
	subl	$4, %esp
	movl	%ecx, -180(%ebp)
	movl	-100(%ebp), %ecx
	movl	12(%ecx), %eax
	movl	-160(%ebp), %ecx
	leal	1(%eax,%ecx), %eax
	movl	-192(%ebp), %ecx
	pushl	%ecx
	pushl	%eax
	pushl	8+_token_name-L30$pb(%esi)
	movl	%ecx, -100(%ebp)
	call	_memcpy
	movl	8+_token_name-L30$pb(%esi), %eax
	addl	$16, %esp
	movl	-120(%ebp), %edx
	movl	-100(%ebp), %ecx
	movb	$0, -1(%eax,%edx)
L842:
	subl	$1, %ecx
	js	L963
	movl	-180(%ebp), %edx
	movl	8(%edx), %eax
	addl	%ecx, %eax
	cmpb	$95, (%eax)
	jne	L842
	movb	$45, (%eax)
	jmp	L842
L906:
	movl	_members-L30$pb(%esi), %edx
	testl	%edx, %edx
	je	L909
	cmpl	$5, %edi
	je	L909
	testl	%ebx, %ebx
	jne	L909
	movl	-112(%ebp), %edx
	movl	8(%edx), %edx
	testl	%edx, %edx
	jle	L909
	jmp	L973
	.align 4,0x90
L748:
	movl	-100(%ebp), %eax
	movl	$3, (%eax)
	jmp	L758
L788:
	movl	$5, (%edi)
L1300:
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
L1301:
	movzbl	-192(%ebp), %eax
	movb	%al, -188(%ebp)
	jmp	L742
L1350:
	cmpb	$0, -188(%ebp)
	movb	$0, -192(%ebp)
	je	L845
	cmpl	$3, %edi
	je	L1005
	orl	%edi, %edx
	sete	%dl
	cmpl	$0, -108(%ebp)
	setg	%al
	andl	%eax, %edx
	movb	%dl, -192(%ebp)
	jmp	L845
L1299:
	movl	-96(%ebp), %eax
	movb	$0, -188(%ebp)
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	L742
L1287:
	movl	-60(%ebp), %edi
	jmp	L818
L754:
	cmpl	$14, %ecx
	jne	L748
	movl	-100(%ebp), %eax
	movl	$2, (%eax)
	jmp	L758
L755:
	cmpl	$4, %ecx
	jne	L756
	movl	-96(%ebp), %eax
	movl	$1, (%eax)
	jmp	L758
L1340:
	pushl	%eax
	leal	lC28-L30$pb(%esi), %eax
	pushl	$3
	pushl	%eax
	pushl	%ebx
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L732
	pushl	%eax
	leal	lC29-L30$pb(%esi), %eax
	pushl	$3
	pushl	%eax
	pushl	%ebx
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L732
	movb	$0, -65(%ebp)
	movl	$0, -128(%ebp)
	jmp	L705
L1352:
	cmpb	$0, _fvextern-L30$pb(%esi)
	je	L886
	cmpl	$0, _declarations-L30$pb(%esi)
	je	L885
L886:
	xorl	%eax, %eax
	call	_make_C_tag
	jmp	L887
L771:
	movl	_structdef-L30$pb(%esi), %edx
	movl	%edx, -188(%ebp)
	subl	$1, %edx
	je	L1355
L780:
	movl	-76(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, -200(%ebp)
	testl	%edx, %edx
	je	L781
	movl	-100(%ebp), %edx
	movl	$0, (%edx)
L781:
	cmpl	$11, _objdef-L30$pb(%esi)
	leal	_objdef-L30$pb(%esi), %edi
	ja	L782
	movl	_objdef-L30$pb(%esi), %edx
	movl	L784-L30$pb(%esi,%edx,4), %ecx
	addl	%esi, %ecx
	jmp	*%ecx
	.align 2,0x90
L784:
	.long	L791-L30$pb
	.long	L790-L30$pb
	.long	L789-L30$pb
	.long	L782-L30$pb
	.long	L788-L30$pb
	.long	L782-L30$pb
	.long	L782-L30$pb
	.long	L787-L30$pb
	.long	L782-L30$pb
	.long	L786-L30$pb
	.long	L785-L30$pb
	.long	L783-L30$pb
L761:
	leal	_structdef-L30$pb(%esi), %edx
	movl	%edx, -124(%ebp)
	movl	_structdef-L30$pb(%esi), %edx
	movl	%edx, -188(%ebp)
	testl	%edx, %edx
	jne	L763
	movl	-96(%ebp), %edx
	cmpl	$0, (%edx)
	je	L1356
	movl	(%eax), %eax
	leal	-7(%eax), %edx
	cmpl	$6, %edx
	ja	L780
	movl	L968-L30$pb(%esi,%edx,4), %edi
	addl	%esi, %edi
	jmp	*%edi
	.align 2,0x90
L968:
	.long	L775-L30$pb
	.long	L780-L30$pb
	.long	L774-L30$pb
	.long	L774-L30$pb
	.long	L772-L30$pb
	.long	L780-L30$pb
	.long	L772-L30$pb
L760:
	cmpl	$15, (%eax)
	jne	L763
	cmpb	$0, _typedefs-L30$pb(%esi)
	je	L764
	movl	-76(%ebp), %eax
	movl	$1, (%eax)
L764:
	movl	-96(%ebp), %eax
	movb	$0, _fvextern-L30$pb(%esi)
	movl	$0, (%eax)
	jmp	L758
L1018:
	xorl	%ebx, %ebx
	jmp	L964
L702:
	leal	lC2-L30$pb(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
L1355:
	movl	-96(%ebp), %eax
	movb	$0, -188(%ebp)
	movl	$2, _structdef-L30$pb(%esi)
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	L742
L1356:
	movl	$4, (%edx)
	movb	$0, -188(%ebp)
L767:
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	L817
L1348:
	xorl	%eax, %eax
	call	_make_C_tag
	jmp	L892
L1005:
	movzbl	-188(%ebp), %eax
	movb	%al, -192(%ebp)
	jmp	L845
L1354:
	leal	_structdef-L30$pb(%esi), %edi
	movl	%edi, -124(%ebp)
	jmp	L779
L1353:
	movl	-100(%ebp), %edx
	movl	(%edx), %ecx
	orl	_structdef-L30$pb(%esi), %ecx
	orl	-108(%ebp), %ecx
	movl	%ecx, -188(%ebp)
	jne	L776
	movl	-76(%ebp), %edx
	movl	-96(%ebp), %edi
	movl	(%edx), %edx
	orl	(%edi), %edx
	jne	L777
	movl	-88(%ebp), %edx
	andl	$-4098, %edx
	orl	$1, %edx
	movl	%edx, -88(%ebp)
	cmpl	$10, %eax
	jne	L1298
	cmpl	$11, _objdef-L30$pb(%esi)
	leal	_objdef-L30$pb(%esi), %edi
	ja	L971
	movl	_objdef-L30$pb(%esi), %eax
	movl	L972-L30$pb(%esi,%eax,4), %edx
	addl	%esi, %edx
	jmp	*%edx
	.align 2,0x90
L972:
	.long	L971-L30$pb
	.long	L790-L30$pb
	.long	L789-L30$pb
	.long	L971-L30$pb
	.long	L788-L30$pb
	.long	L971-L30$pb
	.long	L971-L30$pb
	.long	L787-L30$pb
	.long	L971-L30$pb
	.long	L786-L30$pb
	.long	L785-L30$pb
	.long	L971-L30$pb
L732:
	movl	-96(%ebp), %eax
	movb	$0, -72(%ebp)
	movb	$0, -65(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, (%eax)
	jmp	L705
L785:
	cmpl	$0, -128(%ebp)
	jne	L971
	cmpl	$0, _class_qualify-L30$pb(%esi)
	movl	$8, (%edi)
	je	L1299
	movl	-96(%ebp), %eax
	movl	4+_token_name-L30$pb(%esi), %edi
	movl	$0, (%eax)
	movl	-120(%ebp), %eax
	leal	(%eax,%edi), %ecx
	leal	_token_name-L30$pb(%esi), %eax
	movl	%ecx, %edx
	movl	%ecx, -124(%ebp)
	call	_linebuffer_setlen
	addl	8+_token_name-L30$pb(%esi), %edi
	pushl	%eax
	pushl	-120(%ebp)
	pushl	-116(%ebp)
	pushl	%edi
	call	_memcpy
	movl	8+_token_name-L30$pb(%esi), %eax
	addl	$16, %esp
	movb	$0, -188(%ebp)
	movl	-124(%ebp), %ecx
	movb	$0, (%eax,%ecx)
	jmp	L767
L777:
	cmpl	$10, %eax
	jne	L1298
	jmp	L780
L786:
	movl	-180(%ebp), %eax
	cmpl	$0, -128(%ebp)
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	jne	L770
	movl	$10, (%edi)
	jmp	L770
L787:
	cmpl	$0, -128(%ebp)
	jne	L971
	movl	-96(%ebp), %eax
	movl	$8, (%edi)
	movl	-120(%ebp), %edi
	movl	$0, (%eax)
	leal	_token_name-L30$pb(%esi), %eax
	movl	%edi, %edx
	call	_linebuffer_setlen
	pushl	%eax
	pushl	%edi
	pushl	-116(%ebp)
	pushl	8+_token_name-L30$pb(%esi)
	call	_memcpy
	movl	8+_token_name-L30$pb(%esi), %eax
	addl	$16, %esp
	movb	$0, -188(%ebp)
	movb	$0, (%eax,%edi)
	jmp	L767
L789:
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %eax
	call	_savenstr
	movl	$6, (%edi)
	movl	%eax, _objtag-L30$pb(%esi)
	movl	-180(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	jmp	L770
L790:
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %eax
	call	_savenstr
	movl	$3, (%edi)
	movl	%eax, _objtag-L30$pb(%esi)
	jmp	L1300
L791:
	cmpl	$1, %eax
	je	L792
	cmpl	$2, %eax
	jne	L782
	movl	-180(%ebp), %eax
	movl	$2, (%edi)
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	jmp	L770
L783:
	movl	-180(%ebp), %edx
	movzbl	(%edx), %ecx
	movb	%cl, -116(%ebp)
	cmpl	$3, %eax
	jne	L770
	movl	$0, (%edi)
	jmp	L770
L782:
	cmpl	$5, %eax
	je	L797
	jbe	L1357
	cmpl	$8, %eax
	je	L813
	cmpl	$12, %eax
	jne	L971
	movl	-96(%ebp), %eax
	movb	$1, _fvextern-L30$pb(%esi)
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	subl	$6, %eax
	cmpl	$3, %eax
	ja	L803
	jmp	L971
L792:
	movl	-180(%ebp), %eax
	movl	$1, (%edi)
	movzbl	(%eax), %eax
	movb	%al, -116(%ebp)
	jmp	L770
L1357:
	testl	%eax, %eax
	jne	L971
	movl	-96(%ebp), %eax
	cmpb	$0, _constantypedefs-L30$pb(%esi)
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	je	L805
	cmpl	$0, -188(%ebp)
	je	L1358
L805:
	movl	-124(%ebp), %eax
	cmpl	$1, %eax
	je	L806
	testl	%eax, %eax
	je	L807
	cmpl	$4, %eax
	jne	L971
L808:
	movl	-120(%ebp), %edx
	cmpl	$9, %edx
	jle	L812
	leal	lC33-L30$pb(%esi), %eax
	pushl	%ecx
	pushl	$10
	pushl	%eax
	movl	-116(%ebp), %eax
	leal	-10(%eax,%edx), %eax
	pushl	%eax
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L1359
L812:
	cmpl	$0, -108(%ebp)
	je	L814
	cmpl	$0, -188(%ebp)
	jne	L971
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L971
	movl	-112(%ebp), %edx
	movl	4(%edx), %edx
	movl	-4(%edx,%eax,4), %eax
	addl	$1, %eax
	cmpl	%eax, -108(%ebp)
	jne	L971
L814:
	movl	-96(%ebp), %eax
	movl	$4, (%eax)
	movzbl	-192(%ebp), %eax
	movb	%al, -188(%ebp)
	jmp	L767
L807:
	movl	-200(%ebp), %eax
	testl	%eax, %eax
	je	L809
	cmpl	$2, %eax
	jne	L808
	jmp	L971
L806:
	cmpl	$0, -108(%ebp)
	jne	L758
	movl	-96(%ebp), %eax
	movl	$2, (%eax)
	movzbl	-192(%ebp), %eax
	movb	%al, -188(%ebp)
	jmp	L767
L797:
	movl	-96(%ebp), %eax
	movb	$0, _fvextern-L30$pb(%esi)
	movl	$9, (%eax)
	jmp	L758
L1358:
	cmpl	$13, _structtype.6701-L30$pb(%esi)
	jne	L805
	movl	-108(%ebp), %eax
	cmpl	_structbracelev.6702-L30$pb(%esi), %eax
	jle	L805
	cmpl	$9, -124(%ebp)
	jne	L1001
	jmp	L971
L809:
	movl	-116(%ebp), %edi
	pushl	%eax
	leal	lC31-L30$pb(%esi), %eax
	pushl	$3
	pushl	%eax
	pushl	%edi
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L810
	movzbl	3(%edi), %eax
	movl	-196(%ebp), %edx
	cmpb	$0, (%edx,%eax)
	jne	L811
L810:
	pushl	%edi
	movl	-116(%ebp), %edi
	leal	lC32-L30$pb(%esi), %eax
	pushl	$7
	pushl	%eax
	pushl	%edi
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L808
	movzbl	7(%edi), %eax
	movl	-196(%ebp), %edx
	cmpb	$0, (%edx,%eax)
	je	L808
L811:
	movl	-96(%ebp), %eax
	movl	$9, (%eax)
	jmp	L758
	.align 4,0x90
_Yacc_entries:
	pushl	%ebp
	movl	$65536, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	jmp	_C_entries
	.align 4,0x90
_plain_C_entries:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	jmp	_C_entries
	.align 4,0x90
_Cjava_entries:
	pushl	%ebp
	movl	$5, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	jmp	_C_entries
	.align 4,0x90
_Cstar_entries:
	pushl	%ebp
	movl	$3, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	jmp	_C_entries
	.align 4,0x90
_Cplusplus_entries:
	pushl	%ebp
	movl	$1, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	jmp	_C_entries
	.align 4,0x90
_default_C_entries:
	call	___x86.get_pc_thunk.ax
L31$pb:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	cmpb	$1, _cplusplus-L31$pb(%eax)
	sbbl	%eax, %eax
	andl	$4095, %eax
	addl	$1, %eax
	jmp	_C_entries
	.cstring
lC38:
	.ascii "@node\0"
	.text
	.align 4,0x90
_Texinfo_nodes:
	call	___x86.get_pc_thunk.ax
L32$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	leal	_lb-L32$pb(%eax), %ebx
	movl	%eax, -36(%ebp)
	addl	$lC38-L32$pb, %eax
	movl	%ebx, -28(%ebp)
	movl	%eax, -32(%ebp)
	.align 4,0x90
L1375:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1374
L1407:
	movl	-28(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edi, %eax
	call	_readline
	movl	8(%edi), %ebx
	movl	$5, %ecx
	movl	-32(%ebp), %edi
	movl	%ebx, %esi
	repz; cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L1375
	movzbl	5(%ebx), %ecx
	movl	-36(%ebp), %esi
	movl	%ecx, %eax
	cmpb	$0, _table.5883-L32$pb(%esi,%ecx)
	je	L1375
	leal	5(%ebx), %esi
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1377
	movl	$1, %edi
	sall	%cl, %edi
	andl	$8388639, %edi
	jne	L1406
L1377:
	cmpb	$44, %al
	je	L1387
	movl	%esi, %ecx
	testb	%al, %al
	je	L1387
	.align 4,0x90
L1379:
	addl	$1, %ecx
	movzbl	(%ecx), %eax
	testb	%al, %al
	je	L1388
	cmpb	$44, %al
	jne	L1379
L1388:
	movl	%ecx, %edx
	subl	%esi, %edx
L1381:
	movl	-36(%ebp), %eax
	subl	%ebx, %ecx
	addl	$1, %ecx
	pushl	_linecharno-L32$pb(%eax)
	pushl	_lineno-L32$pb(%eax)
	movl	%esi, %eax
	pushl	%ecx
	movl	$1, %ecx
	pushl	%ebx
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1407
L1374:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1406:
	movl	$1, %edi
	movl	%edx, -40(%ebp)
L1378:
	addl	$1, %esi
	movsbl	(%esi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1404
	movl	%edi, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L1378
L1404:
	movl	-40(%ebp), %edx
	jmp	L1377
	.align 4,0x90
L1387:
	movl	%esi, %ecx
	jmp	L1381
	.cstring
	.align 2
lC39:
	.ascii ":chapter:section:subsection:subsubsection:eqno:label:ref:cite:bibitem:part:appendix:entry:index:def:newcommand:renewcommand:newenvironment:renewenvironment\0"
lC40:
	.ascii "TEXTAGS\0"
	.text
	.align 4,0x90
_TeX_commands:
	call	___x86.get_pc_thunk.ax
L33$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	_TEX_toktab-L33$pb(%eax), %edx
	movl	%eax, -48(%ebp)
	testl	%edx, %edx
	je	L1478
L1410:
	xorl	%ebx, %ebx
L1422:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	movb	%al, -31(%ebp)
	testb	%al, %al
	je	L1408
L1480:
	movl	-48(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edi, %eax
	addl	$_lb-L33$pb, %eax
	call	_readline
	leal	_lb-L33$pb(%edi), %ecx
	movl	%edi, %eax
	movl	8+_lb-L33$pb(%edi), %edi
	movl	_TEX_toktab-L33$pb(%eax), %eax
	movl	%ecx, -52(%ebp)
	movl	%edi, -44(%ebp)
	movl	%eax, -40(%ebp)
	.align 4,0x90
L1444:
	addl	$1, %edi
	movzbl	-1(%edi), %esi
	movl	%esi, %eax
	testb	%al, %al
	sete	%dl
	cmpb	$37, %al
	sete	%al
	orb	%al, %dl
	movb	%dl, -28(%ebp)
	jne	L1422
	testb	%bl, %bl
	jne	L1423
	movl	%esi, %eax
	cmpb	$33, %al
	je	L1447
	cmpb	$92, %al
	jne	L1444
	movl	$92, %ebx
	movb	$125, -30(%ebp)
	movb	$123, -29(%ebp)
L1423:
	movl	%esi, %eax
	cmpb	%al, %bl
	jne	L1444
	jmp	L1424
	.align 4,0x90
L1447:
	movb	$62, -30(%ebp)
	movb	$60, -29(%ebp)
L1424:
	movl	-40(%ebp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1448
	movl	%esi, %ecx
	movb	%cl, -36(%ebp)
	jmp	L1442
	.align 4,0x90
L1426:
	addl	$12, %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1479
L1442:
	movl	4(%ebx), %esi
	subl	$4, %esp
	pushl	%esi
	pushl	%eax
	pushl	%edi
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L1426
	movl	%esi, %ecx
	movzbl	-36(%ebp), %esi
	addl	%ecx, %edi
	movsbl	(%edi), %ecx
	movl	%edi, -36(%ebp)
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1427
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1427
	movl	$1, %ebx
	movl	%edi, %edx
L1428:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1474
	movl	%ebx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L1428
L1474:
	movl	%edx, -36(%ebp)
L1427:
	cmpb	-29(%ebp), %al
	jne	L1430
	movzbl	-31(%ebp), %eax
	addl	$1, -36(%ebp)
	movb	%al, -28(%ebp)
L1430:
	movl	-36(%ebp), %eax
	movl	$1, %ebx
L1431:
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1432
	movl	%ebx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	je	L1432
L1438:
	movl	%eax, %ecx
	subl	-36(%ebp), %ecx
	cmpb	$1, -28(%ebp)
	movl	%ecx, -40(%ebp)
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %ecx
	jne	L1433
	cmpb	-30(%ebp), %dl
	je	L1433
L1434:
	movl	-48(%ebp), %eax
	movl	%esi, %ebx
	movl	-40(%ebp), %edx
	pushl	_linecharno-L33$pb(%eax)
	pushl	_lineno-L33$pb(%eax)
	movl	-36(%ebp), %eax
	pushl	%ecx
	movl	$1, %ecx
	pushl	-44(%ebp)
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	movb	%al, -31(%ebp)
	testb	%al, %al
	jne	L1480
L1408:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1432:
	cmpb	$35, %dl
	je	L1435
	cmpb	-30(%ebp), %dl
	je	L1438
	cmpb	-29(%ebp), %dl
	je	L1438
	addl	$1, %eax
	jmp	L1431
	.align 4,0x90
L1479:
	movzbl	-36(%ebp), %esi
	movl	%esi, %ebx
	jmp	L1444
	.align 4,0x90
L1433:
	testb	%dl, %dl
	setne	%bl
	cmpb	-29(%ebp), %dl
	setne	%cl
	testb	%cl, %bl
	je	L1439
	movzbl	-30(%ebp), %ecx
	cmpb	%cl, %dl
	je	L1439
	movl	%ecx, %edi
	jmp	L1440
	.align 4,0x90
L1481:
	testb	%dl, %dl
	je	L1439
L1440:
	addl	$1, %eax
	movzbl	(%eax), %edx
	movl	%edi, %ecx
	cmpb	-29(%ebp), %dl
	setne	%bl
	cmpb	%cl, %dl
	setne	%cl
	testb	%cl, %bl
	jne	L1481
L1439:
	subl	-44(%ebp), %eax
	leal	1(%eax), %ecx
	jmp	L1434
L1448:
	movl	%esi, %ebx
	jmp	L1444
L1478:
	subl	$12, %esp
	movl	%eax, %edi
	leal	lC40-L33$pb(%eax), %eax
	pushl	%eax
	call	_getenv
	movl	%edi, %ecx
	addl	$16, %esp
	leal	lC39-L33$pb(%edi), %edi
	testl	%eax, %eax
	je	L1411
	movl	%edi, %edx
	addl	$lC3-L33$pb, %ecx
	call	_concat
	movl	%eax, %edi
L1411:
	movl	%edi, %edx
	movl	$1, %ebx
	jmp	L1412
	.align 4,0x90
L1414:
	cmpb	$1, 1(%eax)
	leal	1(%eax), %edx
	sbbl	$-1, %ebx
L1412:
	subl	$8, %esp
	pushl	$58
	pushl	%edx
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	jne	L1414
	leal	(%ebx,%ebx,2), %eax
	subl	$12, %esp
	sall	$2, %eax
	pushl	%eax
	call	_malloc
	addl	$16, %esp
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	je	L1482
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %ecx
	cmpb	$0, (%edi)
	movl	%ecx, _TEX_toktab-L33$pb(%eax)
	je	L1410
	movl	$0, -28(%ebp)
	jmp	L1420
	.align 4,0x90
L1417:
	movl	%ebx, %esi
	subl	%edi, %esi
	testl	%esi, %esi
	jle	L1418
	movl	-28(%ebp), %eax
	movl	%esi, %edx
	movl	-40(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %ecx
	movl	%edi, %eax
	movl	%ecx, -36(%ebp)
	call	_savenstr
	movl	-36(%ebp), %ecx
	addl	$1, -28(%ebp)
	movl	%eax, 8(%ecx)
	movl	%esi, 4(%ecx)
L1418:
	cmpb	$0, (%ebx)
	je	L1419
	cmpb	$0, 1(%ebx)
	leal	1(%ebx), %edi
	je	L1410
L1420:
	subl	$8, %esp
	pushl	$58
	pushl	%edi
	call	_strchr
	addl	$16, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1417
	subl	$12, %esp
	pushl	%edi
	call	_strlen
	addl	$16, %esp
	leal	(%edi,%eax), %ebx
	jmp	L1417
L1435:
	movl	%eax, %ecx
	subl	-36(%ebp), %ecx
	cmpb	$0, -28(%ebp)
	movzbl	-30(%ebp), %edi
	movl	%ecx, -40(%ebp)
	movl	-52(%ebp), %ecx
	movl	4(%ecx), %ecx
	jne	L1434
	jmp	L1440
L1419:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %eax
	movl	$0, 8(%eax)
	movl	$0, 4(%eax)
	jmp	L1410
L1482:
	movl	-48(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L33$pb, %eax
	pushl	%eax
	call	_fatal
	.cstring
lC41:
	.ascii "(DEF\0"
lC42:
	.ascii "(SET!\0"
lC43:
	.ascii "(set!\0"
lC44:
	.ascii "(def\0"
	.text
	.align 4,0x90
_Scheme_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L34$pb:
	subl	$12, %esp
	.align 4,0x90
L1484:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1483
L1537:
	movl	8(%ebp), %edx
	leal	_lb-L34$pb(%ebx), %eax
	leal	lC44-L34$pb(%ebx), %edi
	call	_readline
	movl	8+_lb-L34$pb(%ebx), %eax
	movl	$4, %ecx
	movl	%eax, %esi
	repz; cmpsb
	je	L1500
	leal	lC41-L34$pb(%ebx), %edi
	movl	$4, %ecx
	movl	%eax, %esi
	repz; cmpsb
	je	L1500
L1485:
	leal	lC42-L34$pb(%ebx), %edi
	movl	$5, %ecx
	movl	%eax, %esi
	repz; cmpsb
	jne	L1492
	movzbl	5(%eax), %ecx
	cmpb	$0, _table.5883-L34$pb(%ebx,%ecx)
	je	L1484
	movsbl	%cl, %edx
	addl	$5, %eax
	leal	-9(%edx), %ecx
	cmpl	$23, %ecx
	ja	L1494
L1523:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L1536
	.align 4,0x90
L1494:
	xorl	%edx, %edx
	call	_get_tag
L1540:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1537
L1483:
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1492:
	leal	lC43-L34$pb(%ebx), %edi
	movl	$5, %ecx
	movl	%eax, %esi
	repz; cmpsb
	jne	L1484
	movzbl	5(%eax), %ecx
	cmpb	$0, _table.5883-L34$pb(%ebx,%ecx)
	je	L1484
	movsbl	%cl, %edx
	addl	$5, %eax
	leal	-9(%edx), %ecx
	cmpl	$23, %ecx
	ja	L1494
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1494
L1538:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1494
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1494
	jmp	L1538
	.align 4,0x90
L1500:
	movsbl	4(%eax), %ecx
	leal	4(%eax), %esi
	testb	%cl, %cl
	je	L1488
L1486:
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1490
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L1490
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L1488
	cmpb	$0, _table.5883-L34$pb(%ebx,%eax)
	leal	_table.5883-L34$pb(%ebx), %edx
	jne	L1489
	jmp	L1488
	.align 4,0x90
L1539:
	cmpb	$0, (%edx,%eax)
	je	L1488
L1489:
	addl	$1, %esi
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L1539
L1488:
	movl	%esi, %eax
	xorl	%edx, %edx
	call	_get_tag
	movl	%esi, %eax
	jmp	L1485
	.align 4,0x90
L1490:
	addl	$1, %esi
	movsbl	(%esi), %ecx
	testb	%cl, %cl
	jne	L1486
	movl	%esi, %eax
	xorl	%edx, %edx
	call	_get_tag
	movl	%esi, %eax
	jmp	L1485
	.align 4,0x90
L1536:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1523
	xorl	%edx, %edx
	call	_get_tag
	jmp	L1540
	.cstring
lC45:
	.ascii "class\0"
lC46:
	.ascii "def\0"
	.text
	.align 4,0x90
_Python_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L35$pb:
	subl	$28, %esp
	.align 4,0x90
L1542:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1541
L1587:
	movl	8(%ebp), %edx
	leal	_lb-L35$pb(%ebx), %eax
	call	_readline
	movl	8+_lb-L35$pb(%ebx), %eax
	movsbl	(%eax), %ecx
	movl	%eax, -28(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1555
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1555
	movl	%eax, %edx
L1556:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1582
	movl	$1, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L1556
L1582:
	movl	%edx, -28(%ebp)
L1555:
	movl	-28(%ebp), %esi
	leal	lC46-L35$pb(%ebx), %edi
	movl	$3, %ecx
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %edx
	cmpb	%cl, %dl
	jne	L1543
	movl	-28(%ebp), %edi
	movzbl	3(%edi), %esi
	leal	_table.5883-L35$pb(%ebx), %edi
	cmpb	$0, _table.5883-L35$pb(%ebx,%esi)
	movl	%esi, %ecx
	jne	L1585
L1543:
	movl	-28(%ebp), %esi
	leal	lC45-L35$pb(%ebx), %edi
	movl	$5, %ecx
	repz; cmpsb
	jne	L1542
	movl	-28(%ebp), %edi
	movzbl	5(%edi), %esi
	leal	_table.5883-L35$pb(%ebx), %edi
	cmpb	$0, _table.5883-L35$pb(%ebx,%esi)
	movl	%esi, %ecx
	je	L1542
	movl	-28(%ebp), %esi
	movsbl	%cl, %ecx
	subl	$9, %ecx
	addl	$5, %esi
	cmpl	$23, %ecx
	ja	L1544
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1544
	movl	%esi, %edx
	movl	%eax, -32(%ebp)
L1549:
	leal	1(%edx), %esi
	movzbl	1(%edx), %edx
	movsbl	%dl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1550
L1584:
	movzbl	%dl, %ecx
	movl	%esi, -28(%ebp)
	movl	-32(%ebp), %eax
	movzbl	(%edi,%ecx), %ecx
	movl	-28(%ebp), %esi
	cmpb	$1, %cl
	je	L1561
	cmpb	$58, %dl
	jne	L1552
	jmp	L1561
	.align 4,0x90
L1586:
	cmpb	$58, %cl
	je	L1564
L1552:
	addl	$1, %esi
	movzbl	(%esi), %ecx
	cmpb	$1, (%edi,%ecx)
	jne	L1586
L1564:
	movl	%esi, %edx
	subl	-28(%ebp), %edx
L1551:
	pushl	_linecharno-L35$pb(%ebx)
	subl	%eax, %esi
	movl	$1, %ecx
	pushl	_lineno-L35$pb(%ebx)
	addl	$1, %esi
	pushl	%esi
	pushl	%eax
	movl	-28(%ebp), %eax
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1587
L1541:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1585:
	movl	-28(%ebp), %esi
	movsbl	%cl, %ecx
	subl	$9, %ecx
	addl	$3, %esi
	cmpl	$23, %ecx
	jbe	L1588
L1544:
	movl	%esi, -28(%ebp)
	xorl	%edx, %edx
	jmp	L1551
	.align 4,0x90
L1588:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1544
	movl	%esi, %edx
	movl	%eax, -32(%ebp)
L1545:
	leal	1(%edx), %esi
	movzbl	1(%edx), %edx
	movsbl	%dl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1584
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1584
	movl	%esi, %edx
	jmp	L1545
L1550:
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1584
	movl	%esi, %edx
	jmp	L1549
L1561:
	xorl	%edx, %edx
	jmp	L1551
	.cstring
lC47:
	.ascii "defineps\0"
	.text
	.align 4,0x90
_PS_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L36$pb:
	subl	$12, %esp
	.align 4,0x90
L1590:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1589
L1624:
	movl	8(%ebp), %edx
	leal	_lb-L36$pb(%ebx), %eax
	call	_readline
	movl	8+_lb-L36$pb(%ebx), %eax
	cmpb	$47, (%eax)
	je	L1622
	leal	lC47-L36$pb(%ebx), %edi
	movl	$8, %ecx
	movl	%eax, %esi
	repz; cmpsb
	jne	L1590
	movzbl	8(%eax), %edx
	cmpb	$0, _table.5883-L36$pb(%ebx,%edx)
	je	L1590
	movsbl	%dl, %ecx
	addl	$8, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1595
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L1623
L1595:
	xorl	%edx, %edx
	call	_get_tag
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1624
L1589:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1622:
	movzbl	1(%eax), %ecx
	leal	1(%eax), %edx
	testb	$-33, %cl
	je	L1601
	cmpb	$123, %cl
	je	L1601
L1592:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	testb	$-33, %cl
	je	L1602
	cmpb	$123, %cl
	jne	L1592
L1602:
	subl	%eax, %edx
	leal	1(%edx), %ecx
L1591:
	pushl	_linecharno-L36$pb(%ebx)
	pushl	_lineno-L36$pb(%ebx)
	pushl	%ecx
	movl	$1, %ecx
	pushl	%eax
	call	_make_tag
	addl	$16, %esp
	jmp	L1590
	.align 4,0x90
L1601:
	movl	$2, %ecx
	movl	$1, %edx
	jmp	L1591
	.align 4,0x90
L1623:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1595
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1595
	jmp	L1623
	.cstring
lC48:
	.ascii "function\0"
lC49:
	.ascii "define\0"
lC50:
	.ascii "var\0"
	.text
	.align 4,0x90
_PHP_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L37$pb:
	subl	$44, %esp
	movb	$0, -29(%ebp)
	.align 4,0x90
L1626:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1625
L1756:
	movl	8(%ebp), %edx
	leal	_lb-L37$pb(%ebx), %eax
	call	_readline
	movl	8+_lb-L37$pb(%ebx), %esi
	movsbl	(%esi), %ecx
	movl	%esi, -28(%ebp)
	movl	%esi, %eax
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1662
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L1674
	movl	%esi, %eax
L1662:
	testb	%dl, %dl
	je	L1627
	cmpb	$0, -29(%ebp)
	jne	L1751
L1627:
	leal	lC48-L37$pb(%ebx), %edi
	movl	$8, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L1631
	movzbl	8(%eax), %esi
	leal	_table.5883-L37$pb(%ebx), %edi
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	_table.5883-L37$pb(%ebx,%ecx), %ecx
	movb	%cl, -36(%ebp)
	testb	%cl, %cl
	jne	L1752
L1631:
	leal	lC45-L37$pb(%ebx), %edi
	movl	$5, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L1641
	movzbl	5(%eax), %esi
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	_table.5883-L37$pb(%ebx,%ecx), %edi
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L1753
L1641:
	leal	lC49-L37$pb(%ebx), %edi
	movl	$6, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	je	L1754
L1648:
	movl	_members-L37$pb(%ebx), %edx
	testl	%edx, %edx
	je	L1626
	leal	lC50-L37$pb(%ebx), %edi
	movl	$3, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L1626
	movzbl	3(%eax), %esi
	leal	_table.5883-L37$pb(%ebx), %edi
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	cmpb	$0, _table.5883-L37$pb(%ebx,%ecx)
	je	L1626
	movl	%esi, %ecx
	addl	$3, %eax
	movsbl	%cl, %ecx
	movl	%eax, -36(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1656
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1656
	movl	-36(%ebp), %eax
	movl	%edx, -40(%ebp)
L1657:
	addl	$1, %eax
	movzbl	(%eax), %esi
	movl	%esi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1744
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L1657
L1744:
	movl	-40(%ebp), %edx
	movl	%eax, -36(%ebp)
L1656:
	movl	%esi, %ecx
	cmpb	$36, %cl
	jne	L1626
	movl	-36(%ebp), %eax
	movzbl	(%eax), %ecx
	cmpb	$0, (%edi,%ecx)
	jne	L1672
	movl	%eax, %ecx
	.align 4,0x90
L1660:
	addl	$1, %ecx
	movzbl	(%ecx), %edx
	cmpb	$0, (%edi,%edx)
	je	L1660
	movl	%ecx, %edx
	movl	%eax, -36(%ebp)
	subl	%eax, %edx
L1659:
	movl	-28(%ebp), %eax
	pushl	_linecharno-L37$pb(%ebx)
	pushl	_lineno-L37$pb(%ebx)
	subl	%eax, %ecx
	addl	$1, %ecx
	pushl	%ecx
	jmp	L1749
	.align 4,0x90
L1674:
	movl	-28(%ebp), %eax
L1663:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1662
	movl	$1, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	je	L1662
	jmp	L1663
	.align 4,0x90
L1754:
	movzbl	6(%eax), %esi
	leal	6(%eax), %edi
	movl	%esi, %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1649
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L1649
L1650:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1742
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L1650
L1742:
	movl	%eax, %esi
L1649:
	leal	1(%edi), %eax
	movl	%esi, %ecx
	cmpb	$40, %cl
	jne	L1648
	movzbl	1(%edi), %ecx
	cmpb	$34, %cl
	je	L1675
	cmpb	$39, %cl
	jne	L1648
L1675:
	movzbl	2(%edi), %esi
	leal	2(%edi), %eax
	movl	%eax, -36(%ebp)
	movl	%esi, %eax
	cmpb	%al, %cl
	je	L1671
	testb	%al, %al
	je	L1671
	movl	-36(%ebp), %eax
	movl	%eax, %esi
	jmp	L1654
	.align 4,0x90
L1755:
	cmpb	%cl, %dl
	je	L1676
L1654:
	addl	$1, %esi
	movzbl	(%esi), %edx
	testb	%dl, %dl
	jne	L1755
L1676:
	movl	%esi, %edx
	movl	%eax, -36(%ebp)
	subl	%eax, %edx
L1653:
	movl	-28(%ebp), %eax
	pushl	_linecharno-L37$pb(%ebx)
	pushl	_lineno-L37$pb(%ebx)
	subl	%eax, %esi
	leal	1(%esi), %ecx
	pushl	%ecx
	jmp	L1749
	.align 4,0x90
L1751:
	movzbl	(%eax), %edx
	leal	_table.5883-L37$pb(%ebx), %edi
	movl	%eax, %ecx
	cmpb	$0, _table.5883-L37$pb(%ebx,%edx)
	jne	L1665
	.align 4,0x90
L1629:
	addl	$1, %ecx
	movzbl	(%ecx), %edx
	cmpb	$0, (%edi,%edx)
	je	L1629
	movl	%ecx, %edx
	subl	%eax, %edx
L1628:
	movl	-28(%ebp), %edi
	pushl	_linecharno-L37$pb(%ebx)
	pushl	_lineno-L37$pb(%ebx)
	subl	%edi, %ecx
	addl	$1, %ecx
	pushl	%ecx
	movl	$1, %ecx
	pushl	%edi
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	movb	$0, -29(%ebp)
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1756
L1625:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1752:
	addl	$8, %eax
	movl	%eax, -40(%ebp)
	movl	%esi, %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1757
L1632:
	movl	%esi, %eax
	cmpb	$38, %al
	movl	-40(%ebp), %eax
	je	L1635
L1760:
	movzbl	(%eax), %eax
L1636:
	testb	%al, %al
	jne	L1758
	movzbl	-36(%ebp), %eax
	movb	%al, -29(%ebp)
	jmp	L1626
	.align 4,0x90
L1753:
	movl	%esi, %ecx
	addl	$5, %eax
	movsbl	%cl, %ecx
	movl	%eax, -36(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1642
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1642
	movl	-36(%ebp), %eax
	movl	%edx, -40(%ebp)
L1643:
	addl	$1, %eax
	movzbl	(%eax), %esi
	movl	%esi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1739
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L1643
L1739:
	movl	-40(%ebp), %edx
	movl	%eax, -36(%ebp)
L1642:
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L1759
	movl	%edi, %eax
	movb	%al, -29(%ebp)
	jmp	L1626
	.align 4,0x90
L1757:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L1632
	movl	-40(%ebp), %eax
	movl	%edx, -44(%ebp)
L1633:
	addl	$1, %eax
	movzbl	(%eax), %esi
	movl	%esi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1735
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L1633
L1735:
	movl	%eax, -40(%ebp)
	movl	%esi, %eax
	movl	-44(%ebp), %edx
	cmpb	$38, %al
	movl	-40(%ebp), %eax
	jne	L1760
L1635:
	movsbl	1(%eax), %ecx
	leal	1(%eax), %esi
	movl	%esi, -44(%ebp)
	movl	%esi, -40(%ebp)
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1636
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L1636
	movl	-44(%ebp), %esi
L1637:
	movsbl	1(%esi), %ecx
	leal	1(%esi), %eax
	movl	%eax, -40(%ebp)
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1636
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L1636
	movl	-40(%ebp), %esi
	jmp	L1637
	.align 4,0x90
L1758:
	movzbl	%al, %eax
	cmpb	$0, (%edi,%eax)
	movl	-40(%ebp), %eax
	jne	L1639
	.align 4,0x90
L1640:
	addl	$1, %eax
	movzbl	(%eax), %edx
	cmpb	$0, (%edi,%edx)
	je	L1640
	movl	%eax, %edx
	subl	-40(%ebp), %edx
L1639:
	movl	-28(%ebp), %edi
	movl	$1, %ecx
	pushl	_linecharno-L37$pb(%ebx)
	pushl	_lineno-L37$pb(%ebx)
	subl	%edi, %eax
	addl	$1, %eax
	pushl	%eax
	movl	-40(%ebp), %eax
	pushl	%edi
	call	_make_tag
	addl	$16, %esp
	jmp	L1626
	.align 4,0x90
L1759:
	movl	-36(%ebp), %esi
	movl	-36(%ebp), %eax
	movsbl	(%esi), %ecx
	testb	%cl, %cl
	je	L1646
L1645:
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1647
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L1647
L1748:
	movl	%esi, %edx
	movl	%eax, -36(%ebp)
	subl	%eax, %edx
L1646:
	movl	-28(%ebp), %eax
	pushl	_linecharno-L37$pb(%ebx)
	pushl	_lineno-L37$pb(%ebx)
	subl	%eax, %esi
	addl	$1, %esi
	pushl	%esi
L1749:
	pushl	%eax
	movl	-36(%ebp), %eax
	xorl	%ecx, %ecx
	call	_make_tag
	addl	$16, %esp
	jmp	L1626
	.align 4,0x90
L1647:
	addl	$1, %esi
	movsbl	(%esi), %ecx
	testb	%cl, %cl
	jne	L1645
	jmp	L1748
	.align 4,0x90
L1665:
	xorl	%edx, %edx
	jmp	L1628
L1672:
	movl	-36(%ebp), %ecx
	jmp	L1659
L1671:
	movl	-36(%ebp), %esi
	jmp	L1653
	.cstring
lC51:
	.ascii "main\0"
lC52:
	.ascii "sub\0"
lC53:
	.ascii "use constant\0"
lC54:
	.ascii "use constant::defer\0"
lC55:
	.ascii "my\0"
lC56:
	.ascii "local\0"
lC57:
	.ascii "package\0"
	.text
	.align 4,0x90
_Perl_functions:
	call	___x86.get_pc_thunk.ax
L38$pb:
	pushl	%ebp
	movl	$4, %edx
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	%eax, -44(%ebp)
	addl	$lC51-L38$pb, %eax
	call	_savenstr
	movl	%eax, -28(%ebp)
	.align 4,0x90
L1762:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1803
L1894:
	movl	-44(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edi, %eax
	addl	$_lb-L38$pb, %eax
	call	_readline
	movl	8+_lb-L38$pb(%edi), %edx
	movsbl	(%edx), %ecx
	movl	%edx, -48(%ebp)
	movl	%edx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1804
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L1804
	movl	-48(%ebp), %edx
	movl	%edx, %ebx
L1805:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1880
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L1805
L1880:
	movl	%edx, -48(%ebp)
L1804:
	movl	-44(%ebp), %eax
	movl	$7, %ecx
	movl	%ebx, %esi
	leal	lC57-L38$pb(%eax), %edi
	repz; cmpsb
	jne	L1763
	movzbl	7(%ebx), %eax
	movl	-44(%ebp), %esi
	cmpb	$0, _table.5883-L38$pb(%esi,%eax)
	jne	L1887
L1763:
	movl	-44(%ebp), %edx
	movl	$3, %ecx
	movl	%ebx, %esi
	movl	%edx, %edi
	addl	$lC52-L38$pb, %edi
	repz; cmpsb
	jne	L1768
	movzbl	3(%ebx), %esi
	leal	_table.5883-L38$pb(%edx), %eax
	cmpb	$0, _table.5883-L38$pb(%edx,%esi)
	movl	%esi, %ecx
	jne	L1888
L1768:
	movl	-44(%ebp), %edx
	movl	$12, %ecx
	movl	%ebx, %esi
	movl	%edx, %edi
	addl	$lC53-L38$pb, %edi
	repz; cmpsb
	jne	L1778
	movzbl	12(%ebx), %esi
	leal	_table.5883-L38$pb(%edx), %eax
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	cmpb	$0, _table.5883-L38$pb(%edx,%ecx)
	jne	L1889
L1778:
	movl	-44(%ebp), %edx
	movl	$19, %ecx
	movl	%ebx, %esi
	movl	%edx, %edi
	addl	$lC54-L38$pb, %edi
	repz; cmpsb
	jne	L1782
	movzbl	19(%ebx), %esi
	leal	_table.5883-L38$pb(%edx), %eax
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	cmpb	$0, _table.5883-L38$pb(%edx,%ecx)
	jne	L1890
L1782:
	movl	-44(%ebp), %edx
	movl	_globals-L38$pb(%edx), %ecx
	testl	%ecx, %ecx
	je	L1762
	leal	lC55-L38$pb(%edx), %edi
	movl	$2, %ecx
	movl	%ebx, %esi
	repz; cmpsb
	jne	L1789
	movzbl	2(%ebx), %esi
	movl	%esi, %eax
	movzbl	%al, %eax
	cmpb	$0, _table.5883-L38$pb(%edx,%eax)
	jne	L1891
L1789:
	movl	-44(%ebp), %edx
	movl	$5, %ecx
	movl	%ebx, %esi
	leal	lC56-L38$pb(%edx), %edi
	repz; cmpsb
	jne	L1762
	movzbl	5(%ebx), %esi
	movl	%esi, %eax
	movzbl	%al, %eax
	cmpb	$0, _table.5883-L38$pb(%edx,%eax)
	je	L1762
	leal	5(%ebx), %edi
	movl	%esi, %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1892
L1790:
	leal	-36(%esi), %ecx
	cmpb	$1, %cl
	jbe	L1808
	movl	%esi, %eax
	cmpb	$64, %al
	je	L1808
	cmpb	$41, %al
	setne	%bl
	testb	%al, %al
	setne	%cl
	testb	%cl, %bl
	je	L1815
	subl	$59, %esi
	movl	%edi, %ecx
	movl	-48(%ebp), %edx
	andl	$253, %esi
	jne	L1800
	jmp	L1815
	.align 4,0x90
L1893:
	testb	%al, %al
	setne	%bl
	cmpb	$41, %al
	setne	%al
	testb	%al, %bl
	je	L1814
L1800:
	addl	$1, %ecx
	movzbl	(%ecx), %eax
	leal	-59(%eax), %ebx
	andl	$253, %ebx
	jne	L1893
L1814:
	movl	%ecx, %ebx
	movl	%edx, -48(%ebp)
	subl	%edi, %ebx
L1802:
	movl	-44(%ebp), %eax
	movl	%ebx, %edx
	pushl	_linecharno-L38$pb(%eax)
	pushl	_lineno-L38$pb(%eax)
	movl	-48(%ebp), %eax
	subl	%eax, %ecx
	addl	$1, %ecx
	pushl	%ecx
	xorl	%ecx, %ecx
	pushl	%eax
	movl	%edi, %eax
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L1894
L1803:
	subl	$12, %esp
	pushl	-28(%ebp)
	call	_free
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1887:
	movsbl	%al, %ecx
	addl	$7, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1764
L1766:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L1895
L1764:
	subl	$12, %esp
	pushl	-28(%ebp)
	call	_free
	leal	-28(%ebp), %edx
	movl	%ebx, %eax
	call	_get_tag
	addl	$16, %esp
	jmp	L1762
	.align 4,0x90
L1888:
	leal	3(%ebx), %edi
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1762
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L1762
	movl	-48(%ebp), %edx
L1769:
	addl	$1, %edi
	movzbl	(%edi), %ebx
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1771
L1884:
	movzbl	(%eax,%ebx), %ecx
	movl	%edx, -48(%ebp)
L1770:
	testb	%cl, %cl
	jne	L1762
	movl	-48(%ebp), %edx
	movl	%edi, %ebx
	.align 4,0x90
L1772:
	addl	$1, %ebx
	movzbl	(%ebx), %esi
	cmpb	$0, (%eax,%esi)
	je	L1772
	movl	%edx, -48(%ebp)
	cmpl	%ebx, %edi
	je	L1762
	subl	$8, %esp
	pushl	$58
	pushl	%edi
	call	_strchr
	movl	-44(%ebp), %edx
	addl	$16, %esp
	movl	_class_qualify-L38$pb(%edx), %ecx
	testl	%eax, %eax
	je	L1773
	cmpl	%ebx, %eax
	jnb	L1773
	cmpb	$58, 1(%eax)
	je	L1896
L1773:
	movl	-44(%ebp), %eax
	movl	_linecharno-L38$pb(%eax), %edx
	movl	%edx, -52(%ebp)
	movl	_lineno-L38$pb(%eax), %edx
	movl	%edx, -56(%ebp)
	testl	%ecx, %ecx
	je	L1777
	leal	lC27-L38$pb(%eax), %edx
	movb	$0, (%ebx)
	movl	-28(%ebp), %eax
	movl	%edi, %ecx
	call	_concat
	subl	$12, %esp
	movl	%eax, %edi
	movl	%esi, %eax
	movb	%al, (%ebx)
	movl	-44(%ebp), %eax
	pushl	%edi
	movl	8+_lb-L38$pb(%eax), %esi
	call	_strlen
	addl	$16, %esp
	movl	$1, %ecx
	pushl	-52(%ebp)
	movl	%eax, %edx
	movl	%edi, %eax
	pushl	-56(%ebp)
	subl	%esi, %ebx
	addl	$1, %ebx
	pushl	%ebx
	pushl	%esi
	call	_make_tag
	movl	%edi, (%esp)
	call	_free
	addl	$16, %esp
	jmp	L1762
	.align 4,0x90
L1895:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L1766
	jmp	L1764
	.align 4,0x90
L1777:
	movl	-48(%ebp), %esi
	movl	%ebx, %eax
	pushl	-52(%ebp)
	subl	%edi, %eax
	pushl	-56(%ebp)
	subl	%esi, %ebx
	addl	$1, %ebx
	pushl	%ebx
L1886:
	pushl	%esi
	movl	%eax, %edx
	movl	$1, %ecx
	movl	%edi, %eax
	call	_make_tag
	addl	$16, %esp
	jmp	L1762
	.align 4,0x90
L1808:
	movl	-48(%ebp), %edx
	leal	1(%edi), %esi
	movl	%edi, %ecx
	.align 4,0x90
L1795:
	addl	$1, %ecx
	movzbl	(%ecx), %eax
	cmpb	$90, %al
	jg	L1796
	cmpb	$65, %al
	jge	L1795
	leal	-48(%eax), %ebx
	cmpb	$9, %bl
	jbe	L1795
L1798:
	cmpb	$95, %al
	je	L1795
	movl	%ecx, %ebx
	movl	%edx, -48(%ebp)
	movl	%esi, %edi
	subl	%esi, %ebx
	jmp	L1802
	.align 4,0x90
L1796:
	leal	-97(%eax), %ebx
	cmpb	$25, %bl
	ja	L1798
	jmp	L1795
	.align 4,0x90
L1889:
	leal	12(%ebx), %edi
	movl	%esi, %ebx
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1779
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L1779
	movl	-48(%ebp), %edx
L1780:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1874
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L1780
	.align 4,0x90
L1874:
	movl	%ebx, %esi
	movl	%edx, -48(%ebp)
L1779:
	movl	%esi, %ebx
	cmpb	$123, %bl
	je	L1785
	movzbl	%bl, %esi
	movzbl	(%eax,%esi), %ecx
	jmp	L1770
	.align 4,0x90
L1890:
	leal	19(%ebx), %edi
	movl	%esi, %ebx
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1779
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L1779
	movl	-48(%ebp), %edx
L1783:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1874
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L1874
	jmp	L1783
	.align 4,0x90
L1891:
	leal	2(%ebx), %edi
	movl	%esi, %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1790
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1790
	movl	-48(%ebp), %edx
L1791:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1879
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L1791
L1879:
	movl	%eax, %esi
	movl	%edx, -48(%ebp)
	jmp	L1790
	.align 4,0x90
L1896:
	testl	%ecx, %ecx
	je	L1897
L1774:
	movl	-48(%ebp), %esi
	movl	%ebx, %eax
	movl	-44(%ebp), %edx
	subl	%edi, %eax
	subl	%esi, %ebx
	pushl	_linecharno-L38$pb(%edx)
	leal	1(%ebx), %ecx
	pushl	_lineno-L38$pb(%edx)
	pushl	%ecx
	jmp	L1886
L1771:
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L1769
	jmp	L1884
L1892:
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L1790
	movl	-48(%ebp), %edx
L1793:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1879
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L1879
	jmp	L1793
L1897:
	leal	2(%eax), %edi
	movl	-48(%ebp), %esi
	jmp	L1775
	.align 4,0x90
L1898:
	cmpl	%ebx, %eax
	jnb	L1869
	cmpb	$58, 1(%eax)
	jne	L1869
	leal	2(%eax), %edi
L1775:
	subl	$8, %esp
	pushl	$58
	pushl	%edi
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	jne	L1898
L1869:
	movl	%esi, -48(%ebp)
	jmp	L1774
L1785:
	movzbl	1(%edi), %esi
	leal	1(%edi), %ebx
	movl	%esi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1885
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L1885
	movl	-48(%ebp), %edx
L1787:
	leal	1(%ebx), %edi
	movzbl	1(%ebx), %ebx
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L1884
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L1884
	movl	%edi, %ebx
	jmp	L1787
L1885:
	movl	%esi, %ecx
	movl	%ebx, %edi
	movzbl	%cl, %esi
	movzbl	(%eax,%esi), %ecx
	jmp	L1770
L1815:
	movl	%edi, %ecx
	xorl	%ebx, %ebx
	jmp	L1802
	.cstring
lC58:
	.ascii "extern\0"
lC59:
	.ascii "forward\0"
lC60:
	.ascii "rocedure\0"
lC61:
	.ascii "unction\0"
	.text
	.align 4,0x90
_Pascal_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L39$pb:
	pushl	%ebx
	subl	$76, %esp
	movl	8+_lb-L39$pb(%esi), %eax
	movl	%eax, _dbp-L39$pb(%esi)
	movb	$0, (%eax)
	leal	-36(%ebp), %eax
	movl	%eax, -80(%ebp)
	call	_linebuffer_init
	leal	lC61-L39$pb(%esi), %eax
	movb	$0, -51(%ebp)
	movb	$0, -52(%ebp)
	movb	$0, -49(%ebp)
	movb	$0, -50(%ebp)
	movb	$0, -44(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	%eax, -84(%ebp)
	.align 4,0x90
L1900:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	movl	%eax, %ebx
	testb	%al, %al
	je	L1985
L1929:
	leal	_dbp-L39$pb(%esi), %eax
	movl	%eax, -48(%ebp)
	movl	_dbp-L39$pb(%esi), %eax
	leal	1(%eax), %edx
	movzbl	(%eax), %eax
	movl	%edx, _dbp-L39$pb(%esi)
	testb	%al, %al
	je	L1986
L1901:
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L1987
	cmpb	$0, -44(%ebp)
	jne	L1988
	cmpb	$41, %al
	je	L1935
	jg	L1909
	cmpb	$39, %al
	jne	L1989
	movl	8(%ebp), %eax
	movzbl	-44(%ebp), %edi
	movb	%bl, -44(%ebp)
	call	_perhaps_more_input
	movl	%eax, %ebx
	testb	%al, %al
	jne	L1929
L1985:
	subl	$12, %esp
	pushl	-28(%ebp)
	call	_free
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L1986:
	movl	8(%ebp), %edx
	leal	_lb-L39$pb(%esi), %eax
	call	_readline
	movl	8+_lb-L39$pb(%esi), %ecx
	leal	_lb-L39$pb(%esi), %eax
	movl	%eax, -56(%ebp)
	movsbl	(%ecx), %eax
	movl	%ecx, _dbp-L39$pb(%esi)
	testb	%al, %al
	je	L1900
	cmpb	$0, -49(%ebp)
	je	L1903
	cmpb	$0, -51(%ebp)
	je	L1903
	movl	%edi, %edx
	testb	%dl, %dl
	jne	L1990
	cmpb	$0, -44(%ebp)
	jne	L1949
	cmpb	$32, %al
	jne	L1991
L1916:
	cmpb	$0, -50(%ebp)
	je	L1992
	movzbl	-50(%ebp), %eax
	movb	%al, -51(%ebp)
L1978:
	leal	_lb-L39$pb(%esi), %eax
	movl	%eax, -56(%ebp)
	jmp	L1906
	.align 4,0x90
L1989:
	cmpb	$40, %al
	jne	L1911
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	cmpb	$42, (%eax)
	je	L1993
	movzbl	-49(%ebp), %eax
	movzbl	-52(%ebp), %edi
	testb	%al, %al
	cmovne	%eax, %edi
	movl	%edi, %eax
	movzbl	-44(%ebp), %edi
	movb	%al, -52(%ebp)
	jmp	L1900
	.align 4,0x90
L1909:
	cmpb	$59, %al
	jne	L1994
	movzbl	-52(%ebp), %eax
	xorl	$1, %eax
	andb	-49(%ebp), %al
	movl	%eax, %edi
	je	L1939
	movl	-48(%ebp), %eax
	movl	$59, %edi
	movl	(%eax), %ecx
	movsbl	(%ecx), %eax
L1914:
	cmpb	$32, %al
	je	L1916
	testb	%al, %al
	jne	L1930
	movb	%bl, -51(%ebp)
	movb	%bl, -49(%ebp)
	.align 4,0x90
L1983:
	xorl	%edi, %edi
	jmp	L1900
	.align 4,0x90
L1994:
	movl	%ebx, %edi
	cmpb	$123, %al
	je	L1900
L1911:
	cmpb	$0, -49(%ebp)
	movsbl	%al, %edi
	jne	L1995
L1915:
	cmpb	$0, -50(%ebp)
	jne	L1996
	cmpb	$0, -49(%ebp)
	jne	L1982
L1921:
	leal	-65(%edi), %edx
	leal	32(%edi), %eax
	cmpl	$26, %edx
	cmovb	%eax, %edi
	cmpl	$102, %edi
	je	L1928
	leal	lC60-L39$pb(%esi), %eax
	cmpl	$112, %edi
	je	L1981
	movb	$0, -49(%ebp)
	movb	$0, -50(%ebp)
L1982:
	movb	$0, -44(%ebp)
	xorl	%edi, %edi
	jmp	L1900
	.align 4,0x90
L1987:
	cmpb	$125, %al
	je	L1983
	cmpb	$42, %al
	jne	L1900
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	cmpb	$41, (%eax)
	jne	L1900
	movl	-48(%ebp), %edi
	addl	$1, %eax
	movl	%eax, (%edi)
	xorl	%edi, %edi
	jmp	L1900
	.align 4,0x90
L1988:
	cmpb	$39, %al
	setne	-44(%ebp)
	jmp	L1900
	.align 4,0x90
L1903:
	cmpb	$0, -50(%ebp)
	je	L1905
	movl	%edi, %eax
	movb	%al, -50(%ebp)
	testb	%al, %al
	jne	L1900
	movzbl	-44(%ebp), %eax
	movb	%al, -50(%ebp)
	testb	%al, %al
	jne	L1900
L1906:
	movzbl	1(%ecx), %eax
	leal	1(%ecx), %edi
	testb	%al, %al
	je	L1945
	cmpb	$0, _table.5895-L39$pb(%esi,%eax)
	leal	_table.5895-L39$pb(%esi), %edx
	movl	$1, -60(%ebp)
	je	L1926
L1924:
	movl	-56(%ebp), %eax
	movl	%ecx, -44(%ebp)
	movl	4(%eax), %edx
	movl	-80(%ebp), %eax
	call	_linebuffer_setlen
	movl	-56(%ebp), %eax
	subl	$8, %esp
	pushl	8(%eax)
	pushl	-28(%ebp)
	call	_strcpy
	movl	_lineno-L39$pb(%esi), %ecx
	addl	$16, %esp
	movl	-56(%ebp), %eax
	movb	%bl, -49(%ebp)
	movb	$0, -50(%ebp)
	movl	%ecx, -64(%ebp)
	movl	_linecharno-L39$pb(%esi), %ecx
	movl	8(%eax), %eax
	movl	%ecx, -68(%ebp)
	movl	-44(%ebp), %ecx
	movb	$0, -44(%ebp)
	subl	%eax, %ecx
	addl	-28(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -72(%ebp)
	movl	-48(%ebp), %eax
	movl	%edi, (%eax)
	xorl	%edi, %edi
	jmp	L1900
	.align 4,0x90
L1935:
	movb	$0, -52(%ebp)
	movzbl	-44(%ebp), %edi
	jmp	L1900
	.align 4,0x90
L1905:
	movl	-48(%ebp), %edx
	addl	$1, %ecx
	movl	%ecx, (%edx)
	jmp	L1901
	.align 4,0x90
L1990:
	movb	%dl, -51(%ebp)
	movb	%dl, -49(%ebp)
	jmp	L1900
	.align 4,0x90
L1949:
	movzbl	-44(%ebp), %eax
	movb	%al, -51(%ebp)
	movb	%al, -49(%ebp)
	jmp	L1900
	.align 4,0x90
L1993:
	movl	-48(%ebp), %edi
	addl	$1, %eax
	movl	%eax, (%edi)
	movl	%ebx, %edi
	jmp	L1900
	.align 4,0x90
L1939:
	movb	%al, -44(%ebp)
	jmp	L1900
	.align 4,0x90
L1995:
	cmpb	$0, -51(%ebp)
	je	L1915
	movl	-48(%ebp), %eax
	movl	(%eax), %ecx
	movsbl	(%ecx), %eax
	jmp	L1914
	.align 4,0x90
L1992:
	movb	%bl, -51(%ebp)
	xorl	%edi, %edi
	movb	%bl, -49(%ebp)
	movb	$0, -44(%ebp)
	jmp	L1900
L1928:
	movl	-84(%ebp), %eax
L1981:
	call	_nocase_tail
	xorl	%edi, %edi
	movb	$0, -49(%ebp)
	movb	%al, -50(%ebp)
	movb	$0, -44(%ebp)
	jmp	L1900
	.align 4,0x90
L1991:
	xorl	%edi, %edi
L1930:
	leal	-65(%eax), %ecx
	leal	32(%eax), %edx
	cmpl	$26, %ecx
	cmovb	%edx, %eax
	cmpl	$101, %eax
	je	L1997
	cmpl	$102, %eax
	je	L1998
L1920:
	movl	-60(%ebp), %edx
	movl	$1, %ecx
	xorl	%edi, %edi
	movl	-76(%ebp), %eax
	pushl	-68(%ebp)
	pushl	-64(%ebp)
	pushl	-72(%ebp)
	pushl	-28(%ebp)
	call	_make_tag
	addl	$16, %esp
	movb	$0, -51(%ebp)
	movb	$0, -49(%ebp)
	movb	$0, -44(%ebp)
	jmp	L1900
L1996:
	movl	-48(%ebp), %eax
	movl	(%eax), %ecx
	movzbl	(%ecx), %eax
L1922:
	testb	%al, %al
	jne	L1978
	movb	%bl, -50(%ebp)
	xorl	%edi, %edi
	movb	$0, -44(%ebp)
	jmp	L1900
L1926:
	addl	$1, %edi
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L1979
	cmpb	$0, (%edx,%eax)
	je	L1926
L1979:
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%eax, -60(%ebp)
	jmp	L1924
L1945:
	movl	$1, -60(%ebp)
	jmp	L1924
L1997:
	leal	lC58-L39$pb(%esi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L1920
L1919:
	cmpb	$0, -50(%ebp)
	je	L1942
	movl	-48(%ebp), %eax
	movl	(%eax), %ecx
	movzbl	(%ecx), %eax
	movb	$0, -51(%ebp)
	movb	$0, -49(%ebp)
	jmp	L1922
L1998:
	leal	lC59-L39$pb(%esi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L1920
	jmp	L1919
L1942:
	movb	$0, -51(%ebp)
	jmp	L1921
	.align 4,0x90
_Makefile_targets:
	call	___x86.get_pc_thunk.ax
L40$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	leal	_lb-L40$pb(%eax), %edi
	movl	%eax, -28(%ebp)
	.align 4,0x90
L2000:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L1999
L2050:
	movl	8(%ebp), %edx
	movl	%edi, %eax
	call	_readline
	movl	8(%edi), %esi
	movsbl	(%esi), %edx
	cmpb	$9, %dl
	je	L2000
	cmpb	$35, %dl
	je	L2000
	cmpb	$61, %dl
	je	L2016
	testb	%dl, %dl
	je	L2016
	movl	%esi, %ebx
	movl	%esi, %eax
	cmpb	$58, %dl
	je	L2010
	.align 4,0x90
L2002:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L2001
	cmpb	$61, %al
	je	L2001
	cmpb	$58, %al
	jne	L2002
L2005:
	leal	-9(%edx), %ecx
	movl	%esi, %eax
	cmpl	$23, %ecx
	ja	L2010
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	movl	%esi, %eax
	je	L2010
	movl	$1, %edx
	movl	%ebx, -32(%ebp)
L2008:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2047
	movl	%edx, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L2008
L2047:
	movl	-32(%ebp), %ebx
	subl	$1, %ebx
	cmpl	%eax, %ebx
	jbe	L2012
	.align 4,0x90
L2011:
	movzbl	(%ebx), %edx
	movl	-28(%ebp), %ecx
	cmpb	$0, _table.5883-L40$pb(%ecx,%edx)
	je	L2012
L2010:
	subl	$1, %ebx
	cmpl	%eax, %ebx
	ja	L2011
L2012:
	movl	-28(%ebp), %ecx
	movl	%ebx, %edx
	subl	%esi, %ebx
	subl	%eax, %edx
	addl	$2, %ebx
	addl	$1, %edx
	pushl	_linecharno-L40$pb(%ecx)
	pushl	_lineno-L40$pb(%ecx)
	movl	$1, %ecx
	pushl	%ebx
	pushl	%esi
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2050
L1999:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2016:
	movl	%edx, %eax
	movl	%esi, %ebx
	.align 4,0x90
L2001:
	cmpb	$58, %al
	je	L2005
	movl	-28(%ebp), %ecx
	movl	_globals-L40$pb(%ecx), %ecx
	testl	%ecx, %ecx
	je	L2000
	cmpb	$61, %al
	jne	L2000
	jmp	L2005
	.align 4,0x90
_Lua_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L41$pb:
	subl	$44, %esp
	.align 4,0x90
L2052:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2051
L2093:
	movl	8(%ebp), %edx
	leal	_lb-L41$pb(%ebx), %eax
	call	_readline
	movl	8+_lb-L41$pb(%ebx), %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2062
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L2062
L2063:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2062
	movl	$1, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L2063
	.align 4,0x90
L2062:
	cmpb	$102, %dl
	je	L2066
	cmpb	$108, %dl
	jne	L2052
L2066:
	leal	lC56-L41$pb(%ebx), %edi
	movl	$5, %ecx
	movl	%eax, %esi
	repz; cmpsb
	jne	L2053
	movzbl	5(%eax), %edx
	cmpb	$0, _table.5883-L41$pb(%ebx,%edx)
	jne	L2092
L2053:
	leal	lC48-L41$pb(%ebx), %edi
	movl	$8, %ecx
	movl	%eax, %esi
	repz; cmpsb
	jne	L2052
	movzbl	8(%eax), %edx
	cmpb	$0, _table.5883-L41$pb(%ebx,%edx)
	je	L2052
	movsbl	%dl, %ecx
	addl	$8, %eax
	subl	$9, %ecx
	movl	%eax, -44(%ebp)
	cmpl	$23, %ecx
	ja	L2057
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2057
	movl	-44(%ebp), %eax
L2058:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2088
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L2058
L2088:
	movl	%eax, -44(%ebp)
L2057:
	movl	-44(%ebp), %eax
	leal	-28(%ebp), %edx
	call	_get_tag
	movl	-28(%ebp), %edi
	subl	$8, %esp
	pushl	$46
	pushl	%edi
	call	_strrchr
	popl	%edx
	popl	%ecx
	movl	%eax, %esi
	pushl	$58
	pushl	%edi
	call	_strrchr
	movl	%esi, %edx
	addl	$16, %esp
	orl	%eax, %edx
	je	L2052
	cmpl	%eax, %esi
	cmovb	%eax, %esi
	movl	-44(%ebp), %eax
	xorl	%edx, %edx
	subl	%edi, %esi
	leal	1(%eax,%esi), %eax
	call	_get_tag
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2093
L2051:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2092:
	movsbl	%dl, %ecx
	addl	$5, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2053
L2055:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L2053
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2055
	jmp	L2053
	.cstring
lC62:
	.ascii "defvar\0"
lC63:
	.ascii "cl-\0"
lC64:
	.ascii "CL-\0"
lC65:
	.ascii "DEF\0"
	.text
	.align 4,0x90
_Lisp_functions:
	call	___x86.get_pc_thunk.ax
L42$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	%eax, -28(%ebp)
	.align 4,0x90
L2095:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2094
L2194:
	movl	-28(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edi, %eax
	addl	$_lb-L42$pb, %eax
	call	_readline
	movl	8+_lb-L42$pb(%edi), %ebx
	movl	%edi, %eax
	leal	_dbp-L42$pb(%edi), %edi
	movl	%edi, -32(%ebp)
	movl	%ebx, _dbp-L42$pb(%eax)
	movzbl	(%ebx), %eax
	cmpb	$40, %al
	jne	L2095
	movl	-28(%ebp), %edi
	leal	1(%ebx), %esi
	movl	%esi, -36(%ebp)
	movl	_declarations-L42$pb(%edi), %edx
	testl	%edx, %edx
	jne	L2096
	movl	$6, %ecx
	addl	$lC62-L42$pb, %edi
	repz; cmpsb
	jne	L2096
	movzbl	7(%ebx), %ecx
	movl	-28(%ebp), %edi
	movb	%cl, -40(%ebp)
	cmpb	$0, _table.5883-L42$pb(%edi,%ecx)
	leal	_table.5883-L42$pb(%edi), %esi
	jne	L2191
	.align 4,0x90
L2096:
	movl	-28(%ebp), %esi
	movl	$3, %ecx
	leal	lC63-L42$pb(%esi), %edi
	movl	-36(%ebp), %esi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %edx
	cmpb	%cl, %dl
	je	L2107
	movl	-28(%ebp), %esi
	movl	$3, %ecx
	leal	lC64-L42$pb(%esi), %edi
	movl	-36(%ebp), %esi
	repz; cmpsb
	je	L2107
	movl	-28(%ebp), %esi
	movl	$3, %ecx
	leal	lC46-L42$pb(%esi), %edi
	movl	-36(%ebp), %esi
	movl	%edi, -40(%ebp)
	repz; cmpsb
	je	L2187
	movl	-28(%ebp), %eax
	movl	$3, %ecx
	movl	-36(%ebp), %esi
	leal	lC65-L42$pb(%eax), %edi
	movl	%edi, -44(%ebp)
	repz; cmpsb
	je	L2139
L2113:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %ebx
	movl	(%eax), %eax
	leal	_table.5883-L42$pb(%ebx), %esi
	movl	%eax, -36(%ebp)
	addl	$1, %eax
	jmp	L2122
	.align 4,0x90
L2192:
	addl	$1, %eax
	cmpb	$58, %cl
	je	L2123
L2122:
	movzbl	(%eax), %ecx
	movl	%eax, %ebx
	cmpb	$0, (%esi,%ecx)
	je	L2192
	movl	-32(%ebp), %eax
	movl	%ebx, (%eax)
	cmpb	$58, %cl
	jne	L2095
	.align 4,0x90
L2123:
	addl	$1, %ebx
L2125:
	movl	%ebx, %edx
	movsbl	(%ebx), %eax
	leal	1(%ebx), %ebx
	cmpb	$58, %al
	je	L2125
	movl	-32(%ebp), %ebx
	movl	$3, %ecx
	movl	%edx, %esi
	movl	-40(%ebp), %edi
	movl	%edx, (%ebx)
	repz; cmpsb
	je	L2188
	movl	-44(%ebp), %edi
	movl	$3, %ecx
	movl	%edx, %esi
	repz; cmpsb
	jne	L2095
	.align 4,0x90
L2188:
	testb	%al, %al
	je	L2130
	leal	-9(%eax), %ecx
	cmpl	$23, %ecx
	ja	L2132
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2132
L2190:
	movsbl	(%edx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2130
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2193
	.align 4,0x90
L2130:
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	call	_L_getit
L2195:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2194
L2094:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2107:
	movl	-32(%ebp), %eax
	leal	3(%ebx), %edx
	movl	$3, %ecx
	leal	4(%ebx), %esi
	movl	%esi, -36(%ebp)
	movl	%edx, (%eax)
	movl	-28(%ebp), %eax
	leal	lC46-L42$pb(%eax), %edi
	movl	%edi, -40(%ebp)
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %eax
	cmpb	%cl, %al
	je	L2112
	movl	-28(%ebp), %eax
	movl	$3, %ecx
	movl	-36(%ebp), %esi
	leal	lC65-L42$pb(%eax), %edi
	movl	%edi, -44(%ebp)
	repz; cmpsb
	jne	L2113
L2112:
	movzbl	3(%ebx), %eax
	movsbl	%al, %ecx
	testb	%al, %al
	je	L2130
L2114:
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2117
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2117
	movsbl	(%edx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2130
L2120:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2130
	addl	$1, %edx
	movsbl	(%edx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2120
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	call	_L_getit
	jmp	L2195
	.align 4,0x90
L2117:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	testb	%cl, %cl
	jne	L2114
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	call	_L_getit
	jmp	L2195
	.align 4,0x90
L2139:
	movl	$40, %eax
L2187:
	movl	%ebx, %edx
	movsbl	%al, %ecx
	jmp	L2114
	.align 4,0x90
L2132:
	addl	$1, %edx
	movsbl	(%edx), %eax
	jmp	L2188
	.align 4,0x90
L2191:
	leal	7(%ebx), %edi
	movsbl	%cl, %edx
	leal	-9(%edx), %ecx
	movl	%edx, -44(%ebp)
	cmpl	$23, %ecx
	ja	L2097
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L2097
	movl	-36(%ebp), %edx
	movb	%al, -44(%ebp)
L2098:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movb	%cl, -40(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2196
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2098
	movl	%edx, -36(%ebp)
	movzbl	-40(%ebp), %edx
	movzbl	-44(%ebp), %eax
	cmpb	$0, (%esi,%edx)
	jne	L2140
	movl	%ebx, -40(%ebp)
	movl	-36(%ebp), %edx
	jmp	L2103
L2196:
	movzbl	-40(%ebp), %ecx
	movl	%edx, -36(%ebp)
	movzbl	-44(%ebp), %eax
	cmpb	$0, (%esi,%ecx)
	jne	L2102
	movl	%ebx, -40(%ebp)
	.align 4,0x90
L2103:
	addl	$1, %edi
	movzbl	(%edi), %ebx
	cmpb	$0, (%esi,%ebx)
	movl	%ebx, %ecx
	je	L2103
	movsbl	%cl, %esi
	movl	-40(%ebp), %ebx
	movl	%edx, -36(%ebp)
	movb	%cl, -40(%ebp)
	movl	%esi, -44(%ebp)
L2097:
	movl	-44(%ebp), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2102
L2140:
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L2102
	movl	-36(%ebp), %edx
L2104:
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movb	%cl, -40(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2179
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L2104
L2179:
	movl	%edx, -36(%ebp)
L2102:
	cmpb	$41, -40(%ebp)
	jne	L2096
	jmp	L2095
L2193:
	addl	$1, %edx
	jmp	L2190
	.cstring
lC66:
	.ascii "name=\0"
lC67:
	.ascii "id=\0"
lC68:
	.ascii "<title>\0"
lC69:
	.ascii "<h1>\0"
lC70:
	.ascii "<h2>\0"
lC71:
	.ascii "<h3>\0"
	.text
	.align 4,0x90
_HTML_labels:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L43$pb:
	pushl	%ebx
	subl	$28, %esp
	leal	_token_name-L43$pb(%esi), %eax
	call	_linebuffer_setlen
	leal	lC67-L43$pb(%esi), %eax
	movb	$0, -31(%ebp)
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movb	$0, -30(%ebp)
	movb	$0, -36(%ebp)
	call	_perhaps_more_input
	movb	%al, -29(%ebp)
	testb	%al, %al
	je	L2197
	.align 4,0x90
L2365:
	movl	8(%ebp), %edx
	leal	_lb-L43$pb(%esi), %eax
	call	_readline
	movl	8+_lb-L43$pb(%esi), %ebx
	leal	_dbp-L43$pb(%esi), %eax
	movl	%eax, -28(%ebp)
	movl	%edi, %eax
	movl	%ebx, _dbp-L43$pb(%esi)
	testb	%al, %al
	jne	L2225
L2253:
	cmpb	$0, -30(%ebp)
	jne	L2226
L2205:
	cmpb	$0, -36(%ebp)
	movzbl	(%ebx), %eax
	jne	L2227
	cmpb	$60, %al
	je	L2278
	leal	1(%ebx), %edx
	testb	%al, %al
	setne	%cl
	testb	%cl, %cl
	je	L2278
	.align 4,0x90
L2241:
	movzbl	(%edx), %eax
	movl	%edx, %edi
	addl	$1, %edx
	testb	%al, %al
	je	L2280
	cmpb	$60, %al
	jne	L2241
L2280:
	movl	-28(%ebp), %ecx
	movl	%edi, (%ecx)
	testb	%al, %al
	je	L2271
L2367:
	movsbl	1(%edi), %eax
	leal	-65(%eax), %ecx
	leal	32(%eax), %edx
	cmpl	$26, %ecx
	cmovb	%edx, %eax
	cmpl	$97, %eax
	je	L2359
L2244:
	leal	lC68-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$7
	pushl	%eax
	pushl	%edi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2245
	movl	-28(%ebp), %eax
	leal	7(%edi), %ebx
	movl	%ebx, (%eax)
	testl	%ebx, %ebx
	je	L2246
	movzbl	7(%edi), %eax
L2227:
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2231
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	movl	$1, %edx
	je	L2231
L2232:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2231
	movl	%edx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L2232
	.align 4,0x90
L2231:
	movl	-28(%ebp), %edi
	movl	%ebx, (%edi)
	testb	%al, %al
	je	L2268
	movzbl	1(%ebx), %edx
	cmpb	$60, %al
	je	L2360
	leal	1(%ebx), %eax
	testb	%dl, %dl
	je	L2270
	cmpb	$60, %dl
	je	L2270
L2239:
	addl	$1, %eax
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L2279
	cmpb	$60, %dl
	jne	L2239
L2279:
	subl	%ebx, %eax
L2238:
	pushl	_linecharno-L43$pb(%esi)
	movl	$1, %ecx
	pushl	_lineno-L43$pb(%esi)
	movl	4+_token_name-L43$pb(%esi), %edx
	pushl	%eax
	movl	8+_token_name-L43$pb(%esi), %eax
	pushl	%ebx
	call	_make_tag
	leal	_token_name-L43$pb(%esi), %eax
	xorl	%edx, %edx
	call	_linebuffer_setlen
	addl	$16, %esp
	movb	$0, -30(%ebp)
	movb	$0, -29(%ebp)
	movb	$0, -36(%ebp)
	jmp	L2204
	.align 4,0x90
L2360:
	movsbl	%dl, %eax
	movb	$0, -31(%ebp)
	leal	-65(%eax), %ecx
	leal	32(%eax), %edx
	cmpl	$26, %ecx
	cmovb	%edx, %eax
	cmpl	$97, %eax
	jne	L2236
	movzbl	2(%ebx), %eax
	movzbl	_table.5891-L43$pb(%esi,%eax), %eax
	xorl	$1, %eax
	movb	%al, -31(%ebp)
L2236:
	movzbl	-29(%ebp), %eax
	movb	%al, -36(%ebp)
L2226:
	movsbl	(%ebx), %eax
	testb	%al, %al
	je	L2208
	cmpb	$62, %al
	je	L2208
	xorl	%edx, %edx
	jmp	L2206
	.align 4,0x90
L2362:
	cmpl	$110, %eax
	je	L2213
	addl	$1, %ebx
	movsbl	(%ebx), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$62, %al
	setne	%dl
	andb	%cl, %dl
	je	L2361
L2206:
	leal	-65(%eax), %edi
	leal	32(%eax), %ecx
	cmpl	$26, %edi
	cmovb	%ecx, %eax
	cmpl	$105, %eax
	jne	L2362
L2213:
	testb	%dl, %dl
	je	L2214
	movl	-28(%ebp), %eax
	movl	%ebx, (%eax)
L2214:
	cmpb	$0, -31(%ebp)
	je	L2215
	leal	lC66-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2215
	movl	-28(%ebp), %eax
	addl	$5, %ebx
	movl	%ebx, (%eax)
	je	L2363
L2348:
	movl	%ebx, %edi
	movzbl	(%edi), %eax
	cmpb	$34, %al
	je	L2219
L2368:
	testb	%al, %al
	je	L2265
	cmpb	$0, _table.5891-L43$pb(%esi,%eax)
	leal	_table.5891-L43$pb(%esi), %edx
	movl	%edi, %ebx
	jne	L2221
L2352:
	movl	$0, -36(%ebp)
	xorl	%edx, %edx
L2220:
	leal	_token_name-L43$pb(%esi), %eax
	call	_linebuffer_setlen
	subl	$4, %esp
	pushl	-36(%ebp)
	pushl	%edi
	pushl	8+_token_name-L43$pb(%esi)
	call	_memcpy
	movl	8+_token_name-L43$pb(%esi), %eax
	addl	$16, %esp
	movl	-36(%ebp), %edi
	movb	$0, -30(%ebp)
	movb	$0, (%eax,%edi)
	movl	-28(%ebp), %eax
	movl	%ebx, (%eax)
	movzbl	-29(%ebp), %eax
	movb	%al, -36(%ebp)
L2225:
	movzbl	(%ebx), %edx
	cmpb	$62, %dl
	je	L2201
	leal	1(%ebx), %eax
	testb	%dl, %dl
	setne	%cl
	testb	%cl, %cl
	je	L2201
	.align 4,0x90
L2199:
	movzbl	(%eax), %edx
	movl	%eax, %ebx
	addl	$1, %eax
	testb	%dl, %dl
	je	L2276
	cmpb	$62, %dl
	jne	L2199
L2276:
	movl	-28(%ebp), %eax
	movl	%ebx, (%eax)
L2201:
	cmpb	$62, %dl
	je	L2364
L2204:
	movl	8(%ebp), %eax
	movzbl	-29(%ebp), %edi
	call	_perhaps_more_input
	movb	%al, -29(%ebp)
	testb	%al, %al
	jne	L2365
L2197:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2245:
	movl	-28(%ebp), %eax
	subl	$4, %esp
	movl	(%eax), %edi
	leal	lC69-L43$pb(%esi), %eax
	pushl	$4
	pushl	%eax
	pushl	%edi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2247
	movl	-28(%ebp), %eax
	leal	4(%edi), %ebx
	movl	%ebx, (%eax)
	testl	%ebx, %ebx
	jne	L2366
	leal	lC70-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2356
L2258:
	movzbl	4, %eax
	movl	$4, %ebx
	jmp	L2227
	.align 4,0x90
L2246:
	leal	lC69-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2258
	leal	lC70-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2275
L2356:
	leal	lC71-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2275
	.align 4,0x90
L2251:
	movl	-28(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, (%eax)
	jmp	L2226
	.align 4,0x90
L2215:
	movl	-28(%ebp), %edi
	subl	$4, %esp
	movl	(%edi), %ebx
	pushl	$3
	pushl	-40(%ebp)
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2251
	addl	$3, %ebx
	movl	%ebx, (%edi)
	jne	L2348
	movl	-28(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, (%eax)
	jmp	L2226
	.align 4,0x90
L2270:
	movl	$1, %eax
	jmp	L2238
	.align 4,0x90
L2359:
	movzbl	2(%edi), %eax
	cmpb	$0, _table.5891-L43$pb(%esi,%eax)
	jne	L2244
	movl	-28(%ebp), %eax
	movb	$0, -36(%ebp)
	movl	(%eax), %ebx
	movzbl	-29(%ebp), %eax
	movb	%al, -31(%ebp)
	jmp	L2226
	.align 4,0x90
L2361:
	movl	-28(%ebp), %edi
	movl	%ebx, (%edi)
L2208:
	testb	%al, %al
	je	L2264
	cmpb	$62, %al
	jne	L2214
	movl	-28(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, (%eax)
	jmp	L2205
	.align 4,0x90
L2247:
	leal	lC70-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	%edi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2249
	movl	-28(%ebp), %eax
	leal	4(%edi), %ebx
	movl	%ebx, (%eax)
	testl	%ebx, %ebx
	jne	L2354
	leal	lC71-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2251
	movzbl	4, %eax
	movl	$4, %ebx
	jmp	L2227
	.align 4,0x90
L2364:
	movl	-28(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, (%eax)
	jmp	L2253
	.align 4,0x90
L2249:
	leal	lC71-L43$pb(%esi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	%edi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2272
	movl	-28(%ebp), %eax
	leal	4(%edi), %ebx
	movl	%ebx, (%eax)
	testl	%ebx, %ebx
	je	L2251
L2354:
	movl	%ebx, %edx
	movl	%edi, %ebx
	jmp	L2261
	.align 4,0x90
L2278:
	movl	%ebx, %edi
	testb	%al, %al
	jne	L2367
L2271:
	movb	$0, -30(%ebp)
	movb	$0, -29(%ebp)
	jmp	L2204
L2363:
	subl	$4, %esp
	pushl	$3
	pushl	-40(%ebp)
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2251
	movl	-28(%ebp), %eax
	movl	$3, %edi
	movl	$3, (%eax)
	movzbl	(%edi), %eax
	cmpb	$34, %al
	jne	L2368
L2219:
	movl	-28(%ebp), %eax
	leal	1(%edi), %ebx
	movl	%ebx, (%eax)
	movzbl	1(%edi), %eax
	testb	%al, %al
	je	L2267
	cmpb	$34, %al
	jne	L2369
L2267:
	movl	%ebx, %edi
	jmp	L2352
L2275:
	movl	$4, %edx
L2261:
	movzbl	4(%ebx), %eax
	movl	%edx, %ebx
	jmp	L2227
L2221:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L2353
	cmpb	$0, (%edx,%eax)
	jne	L2221
L2353:
	movl	%ebx, %edx
	subl	%edi, %edx
	movl	%edx, -36(%ebp)
	jmp	L2220
L2366:
	movzbl	4(%edi), %eax
	jmp	L2227
L2272:
	movl	-28(%ebp), %eax
	movl	%edi, %ebx
	addl	$1, %ebx
	movl	%ebx, (%eax)
	jmp	L2226
L2369:
	movl	%ebx, %eax
L2222:
	addl	$1, %eax
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L2277
	cmpb	$34, %dl
	jne	L2222
L2277:
	movl	%eax, %edx
	movl	%ebx, %edi
	subl	%ebx, %edx
	movl	%eax, %ebx
	movl	%edx, -36(%ebp)
	jmp	L2220
L2268:
	movzbl	-29(%ebp), %eax
	movb	$0, -30(%ebp)
	movb	$0, -29(%ebp)
	movb	%al, -36(%ebp)
	jmp	L2204
L2265:
	movl	%edi, %ebx
	movl	$0, -36(%ebp)
	xorl	%edx, %edx
	jmp	L2220
L2264:
	movzbl	-29(%ebp), %eax
	movb	$0, -29(%ebp)
	movb	%al, -30(%ebp)
	jmp	L2204
	.cstring
lC72:
	.ascii "func\0"
lC73:
	.ascii "type\0"
	.text
	.align 4,0x90
_Go_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L44$pb:
	subl	$28, %esp
	.align 4,0x90
L2371:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2370
L2470:
	movl	8(%ebp), %edx
	leal	_lb-L44$pb(%ebx), %eax
	call	_readline
	movl	8+_lb-L44$pb(%ebx), %esi
	movsbl	(%esi), %ecx
	movl	%esi, -28(%ebp)
	movl	%esi, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2398
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2409
	movl	%esi, %eax
L2398:
	leal	lC57-L44$pb(%ebx), %edi
	movl	$7, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L2372
	movzbl	7(%eax), %edi
	leal	_table.5883-L44$pb(%ebx), %esi
	cmpb	$0, _table.5883-L44$pb(%ebx,%edi)
	movl	%edi, %ecx
	jne	L2466
L2372:
	leal	lC72-L44$pb(%ebx), %edi
	movl	$4, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L2381
	movzbl	4(%eax), %edi
	leal	_table.5883-L44$pb(%ebx), %esi
	movl	%edi, %ecx
	movzbl	%cl, %ecx
	cmpb	$0, _table.5883-L44$pb(%ebx,%ecx)
	jne	L2467
L2381:
	movl	_members-L44$pb(%ebx), %edx
	testl	%edx, %edx
	je	L2371
	leal	lC73-L44$pb(%ebx), %edi
	movl	$4, %ecx
	movl	%eax, %esi
	repz; cmpsb
	seta	%dl
	setb	%cl
	subl	%ecx, %edx
	movsbl	%dl, %edx
	testl	%edx, %edx
	jne	L2371
	movzbl	4(%eax), %edi
	leal	_table.5883-L44$pb(%ebx), %esi
	movl	%edi, %ecx
	movzbl	%cl, %ecx
	cmpb	$0, _table.5883-L44$pb(%ebx,%ecx)
	je	L2371
	addl	$4, %eax
	movl	%eax, -32(%ebp)
	movl	%edi, %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2468
L2391:
	movl	%edi, %eax
	cmpb	$40, %al
	je	L2370
	movl	-32(%ebp), %edi
	movzbl	(%edi), %ecx
	cmpb	$1, (%esi,%ecx)
	je	L2407
	testb	%cl, %cl
	je	L2407
	movl	%edi, %eax
	jmp	L2396
	.align 4,0x90
L2469:
	testb	%cl, %cl
	je	L2412
L2396:
	addl	$1, %eax
	movzbl	(%eax), %ecx
	cmpb	$1, (%esi,%ecx)
	jne	L2469
L2412:
	movl	%eax, %edx
	subl	-32(%ebp), %edx
L2395:
	movl	-28(%ebp), %edi
	xorl	%ecx, %ecx
	pushl	_linecharno-L44$pb(%ebx)
	pushl	_lineno-L44$pb(%ebx)
	subl	%edi, %eax
	addl	$1, %eax
	pushl	%eax
	movl	-32(%ebp), %eax
	pushl	%edi
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2470
L2370:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2409:
	movl	-28(%ebp), %eax
L2399:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2398
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L2398
	jmp	L2399
	.align 4,0x90
L2466:
	movsbl	%cl, %ecx
	addl	$7, %eax
	subl	$9, %ecx
	movl	%eax, %edi
	cmpl	$23, %ecx
	ja	L2373
	movl	$1, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	%eax, %edi
	andl	$8388639, %ecx
	je	L2373
	movl	%edx, -32(%ebp)
L2374:
	leal	1(%eax), %edi
	movzbl	1(%eax), %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2377
L2465:
	movzbl	%al, %ecx
	movl	-32(%ebp), %edx
	movzbl	(%esi,%ecx), %ecx
	cmpb	$1, %cl
	je	L2410
	testb	%al, %al
	je	L2410
	movl	%edi, %eax
	jmp	L2375
	.align 4,0x90
L2471:
	testb	%cl, %cl
	je	L2411
L2375:
	addl	$1, %eax
	movzbl	(%eax), %ecx
	cmpb	$1, (%esi,%ecx)
	jne	L2471
L2411:
	movl	%eax, %edx
	subl	%edi, %edx
L2373:
	movl	-28(%ebp), %esi
	xorl	%ecx, %ecx
	pushl	_linecharno-L44$pb(%ebx)
	pushl	_lineno-L44$pb(%ebx)
	subl	%esi, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%edi, %eax
	pushl	%esi
	call	_make_tag
	addl	$16, %esp
	jmp	L2371
	.align 4,0x90
L2467:
	movl	%edi, %ecx
	addl	$4, %eax
	movsbl	%cl, %ecx
	movl	%eax, -32(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2382
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L2382
	movl	-32(%ebp), %eax
	movl	%edx, -36(%ebp)
L2383:
	addl	$1, %eax
	movzbl	(%eax), %edi
	movl	%edi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2458
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L2383
L2458:
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
L2382:
	movl	%edi, %ecx
	movl	-32(%ebp), %eax
	cmpb	$40, %cl
	je	L2386
L2385:
	movl	%edi, %ecx
	testb	%cl, %cl
	je	L2371
	movzbl	%cl, %edi
	cmpb	$0, (%esi,%edi)
	jne	L2406
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	.align 4,0x90
L2390:
	addl	$1, %ecx
	movzbl	(%ecx), %edx
	cmpb	$0, (%esi,%edx)
	je	L2390
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	subl	%eax, %edx
L2389:
	movl	-28(%ebp), %eax
	pushl	_linecharno-L44$pb(%ebx)
	pushl	_lineno-L44$pb(%ebx)
	subl	%eax, %ecx
	addl	$1, %ecx
	pushl	%ecx
	movl	$1, %ecx
	pushl	%eax
	movl	-32(%ebp), %eax
	call	_make_tag
	addl	$16, %esp
	jmp	L2371
	.align 4,0x90
L2405:
	movl	%ecx, %eax
L2386:
	cmpb	$41, 1(%eax)
	leal	1(%eax), %ecx
	jne	L2405
	movzbl	1(%ecx), %edi
	addl	$2, %eax
	movl	%eax, -32(%ebp)
	movl	%edi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2385
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L2385
	movl	-32(%ebp), %eax
	movl	%edx, -36(%ebp)
L2387:
	addl	$1, %eax
	movzbl	(%eax), %edi
	movl	%edi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2460
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L2387
L2460:
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %edx
	jmp	L2385
	.align 4,0x90
L2468:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2391
	movl	-32(%ebp), %eax
	movl	%edx, -36(%ebp)
L2392:
	addl	$1, %eax
	movzbl	(%eax), %edi
	movl	%edi, %ecx
	movsbl	%cl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2462
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L2392
L2462:
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %edx
	jmp	L2391
	.align 4,0x90
L2377:
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L2465
	movl	%edi, %eax
	jmp	L2374
L2406:
	movl	-32(%ebp), %ecx
	jmp	L2389
L2407:
	movl	-32(%ebp), %eax
	jmp	L2395
L2410:
	movl	%edi, %eax
	jmp	L2373
	.align 4,0x90
_F_getit:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	call	___x86.get_pc_thunk.si
L45$pb:
	pushl	%ebx
	subl	$28, %esp
	movl	%eax, -28(%ebp)
	movl	_dbp-L45$pb(%esi), %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2473
	movl	$1, %edi
	sall	%cl, %edi
	andl	$8388639, %edi
	movl	$1, %edi
	jne	L2474
L2473:
	movl	%ebx, _dbp-L45$pb(%esi)
	testb	%dl, %dl
	je	L2476
	movzbl	(%ebx), %eax
L2477:
	cmpb	$65, %al
	jl	L2483
	cmpb	$90, %al
	jle	L2484
	leal	-97(%eax), %edx
	cmpb	$25, %dl
	ja	L2483
L2484:
	movzbl	1(%ebx), %ecx
	leal	1(%ebx), %eax
	movl	$1, %edx
	testb	%cl, %cl
	je	L2487
	cmpb	$0, _table.5891-L45$pb(%esi,%ecx)
	jne	L2489
L2487:
	movl	8+_lb-L45$pb(%esi), %ecx
	pushl	_linecharno-L45$pb(%esi)
	pushl	_lineno-L45$pb(%esi)
	subl	%ecx, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%ebx, %eax
	pushl	%ecx
	movl	$1, %ecx
	call	_make_tag
	addl	$16, %esp
L2472:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2483:
	cmpb	$36, %al
	je	L2484
	cmpb	$95, %al
	je	L2484
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2475:
	movl	%edi, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	je	L2473
L2474:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2475
	jmp	L2473
	.align 4,0x90
L2489:
	addl	$1, %eax
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L2505
	cmpb	$0, _table.5891-L45$pb(%esi,%edx)
	jne	L2489
L2505:
	movl	%eax, %edx
	subl	%ebx, %edx
	jmp	L2487
	.align 4,0x90
L2476:
	movl	-28(%ebp), %edx
	leal	_lb-L45$pb(%esi), %eax
	call	_readline
	movl	8+_lb-L45$pb(%esi), %eax
	cmpb	$38, 5(%eax)
	movl	%eax, _dbp-L45$pb(%esi)
	jne	L2472
	movsbl	6(%eax), %ecx
	leal	6(%eax), %ebx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2480
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	movl	$1, %edx
	je	L2480
L2481:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2480
	movl	%edx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L2481
	.align 4,0x90
L2480:
	movl	%ebx, _dbp-L45$pb(%esi)
	jmp	L2477
	.cstring
lC74:
	.ascii "recursive\0"
lC75:
	.ascii "pure\0"
lC76:
	.ascii "elemental\0"
lC77:
	.ascii "integer\0"
lC78:
	.ascii "real\0"
lC79:
	.ascii "logical\0"
lC80:
	.ascii "complex\0"
lC81:
	.ascii "character\0"
lC82:
	.ascii "double\0"
lC83:
	.ascii "precision\0"
lC84:
	.ascii "subroutine\0"
lC85:
	.ascii "entry\0"
lC86:
	.ascii "blockdata\0"
lC87:
	.ascii "block data\0"
	.text
	.align 4,0x90
_Fortran_functions:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L46$pb:
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.align 4,0x90
L2512:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2507
L2644:
	movl	8(%ebp), %edx
	leal	_lb-L46$pb(%edi), %eax
	call	_readline
	movl	8+_lb-L46$pb(%edi), %ebx
	movzbl	(%ebx), %eax
	cmpb	$37, %al
	jne	L2565
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
L2565:
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2509
L2511:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L2509
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2511
	.align 4,0x90
L2509:
	leal	_dbp-L46$pb(%edi), %esi
	movl	%ebx, _dbp-L46$pb(%edi)
	testb	%al, %al
	je	L2512
	leal	lC74-L46$pb(%edi), %eax
	subl	$4, %esp
	pushl	$9
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2513
	leal	9(%ebx), %eax
	movl	%eax, (%esi)
	testl	%eax, %eax
	jne	L2640
	leal	lC75-L46$pb(%edi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2641
	movl	$4, %ebx
L2632:
	movsbl	(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2520
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2642
L2520:
	movl	%ebx, (%esi)
L2518:
	leal	lC76-L46$pb(%edi), %eax
	subl	$4, %esp
	pushl	$9
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2571
	movsbl	9(%ebx), %eax
	leal	9(%ebx), %ecx
	movl	%ecx, -28(%ebp)
	movl	%ecx, (%esi)
	movl	%eax, %edx
	testl	%ecx, %ecx
	jne	L2566
L2524:
	leal	-65(%eax), %ebx
	leal	32(%eax), %ecx
	cmpl	$26, %ebx
	cmovnb	%eax, %ecx
	subl	$99, %ecx
	cmpl	$15, %ecx
	ja	L2529
	movl	L2531-L46$pb(%edi,%ecx,4), %ebx
	addl	%edi, %ebx
	jmp	*%ebx
	.align 2,0x90
L2531:
	.long	L2535-L46$pb
	.long	L2534-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2533-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2532-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2529-L46$pb
	.long	L2530-L46$pb
	.align 4,0x90
L2530:
	leal	lC78-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	jne	L2539
L2635:
	movl	(%esi), %eax
L2634:
	movl	%eax, -28(%ebp)
	movsbl	(%eax), %eax
	movl	%eax, %edx
L2529:
	leal	-9(%eax), %ecx
	cmpl	$23, %ecx
	ja	L2547
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	je	L2547
	movl	-28(%ebp), %ebx
	movl	%esi, -32(%ebp)
L2548:
	addl	$1, %ebx
	movsbl	(%ebx), %eax
	leal	-9(%eax), %ecx
	movl	%eax, %edx
	cmpl	$23, %ecx
	ja	L2628
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L2548
L2628:
	movl	-32(%ebp), %esi
	movl	%ebx, -28(%ebp)
L2547:
	movl	-28(%ebp), %ebx
	movl	%ebx, (%esi)
	testb	%dl, %dl
	je	L2512
	leal	-65(%eax), %ecx
	leal	32(%eax), %edx
	cmpl	$26, %ecx
	cmovb	%edx, %eax
	cmpl	$101, %eax
	je	L2551
	jle	L2643
	cmpl	$102, %eax
	je	L2554
	cmpl	$115, %eax
	jne	L2512
	leal	lC84-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2512
L2556:
	movl	8(%ebp), %eax
	call	_F_getit
L2647:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2644
L2507:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2532:
	leal	lC79-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2635
L2539:
	call	_F_takeprec
	movl	(%esi), %eax
	movl	%eax, -28(%ebp)
	movsbl	(%eax), %eax
	movl	%eax, %edx
	jmp	L2529
	.align 4,0x90
L2533:
	leal	lC77-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2635
	call	_F_takeprec
	movl	(%esi), %eax
	movl	%eax, -28(%ebp)
	movsbl	(%eax), %eax
	movl	%eax, %edx
	jmp	L2529
	.align 4,0x90
L2534:
	leal	lC82-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	movl	(%esi), %eax
	je	L2634
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2543
L2541:
	movl	%eax, (%esi)
	testb	%dl, %dl
	je	L2512
	leal	lC83-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2512
	jmp	L2635
	.align 4,0x90
L2535:
	leal	lC80-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	jne	L2539
	leal	lC81-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2635
	call	_F_takeprec
	movl	(%esi), %eax
	movl	%eax, -28(%ebp)
	movsbl	(%eax), %eax
	movl	%eax, %edx
	jmp	L2529
	.align 4,0x90
L2640:
	movsbl	9(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2515
L2517:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L2645
L2515:
	movl	%eax, (%esi)
	movl	%eax, %ebx
L2513:
	leal	lC75-L46$pb(%edi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2518
	addl	$4, %ebx
	movl	%ebx, (%esi)
	jne	L2632
	leal	lC76-L46$pb(%edi), %eax
	subl	$4, %esp
	pushl	$9
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2570
	movsbl	0, %eax
	movl	$0, -28(%ebp)
	movl	%eax, %edx
	jmp	L2524
	.align 4,0x90
L2643:
	cmpl	$98, %eax
	jne	L2512
	leal	lC86-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	jne	L2560
	leal	lC87-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2512
L2560:
	movl	(%esi), %eax
L2637:
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2558
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L2646
L2558:
	movl	%eax, (%esi)
	testb	%dl, %dl
	jne	L2556
	movl	8+_lb-L46$pb(%edi), %edx
	movl	$1, %ecx
	pushl	_linecharno-L46$pb(%edi)
	pushl	_lineno-L46$pb(%edi)
	subl	%edx, %eax
	pushl	%eax
	leal	lC86-L46$pb(%edi), %eax
	pushl	%edx
	movl	$9, %edx
	call	_make_tag
	addl	$16, %esp
	jmp	L2512
	.align 4,0x90
L2641:
	leal	lC76-L46$pb(%edi), %eax
	subl	$4, %esp
	xorl	%ebx, %ebx
	pushl	$9
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2570
	.align 4,0x90
L2571:
	movsbl	(%ebx), %eax
	movl	%ebx, -28(%ebp)
	movl	%eax, %edx
	jmp	L2524
	.align 4,0x90
L2570:
	movzbl	9, %edx
	movl	$9, -28(%ebp)
L2566:
	movsbl	%dl, %eax
	leal	-9(%eax), %ecx
	cmpl	$23, %ecx
	ja	L2525
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	je	L2525
	movl	-28(%ebp), %ebx
	movl	%esi, -32(%ebp)
L2526:
	addl	$1, %ebx
	movsbl	(%ebx), %eax
	leal	-9(%eax), %ecx
	movl	%eax, %edx
	cmpl	$23, %ecx
	ja	L2624
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L2526
L2624:
	movl	-32(%ebp), %esi
	movl	%ebx, -28(%ebp)
L2525:
	movl	-28(%ebp), %ebx
	movl	%ebx, (%esi)
	jmp	L2524
	.align 4,0x90
L2554:
	leal	lC48-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2512
	movl	8(%ebp), %eax
	call	_F_getit
	jmp	L2647
	.align 4,0x90
L2551:
	leal	lC85-L46$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2512
	movl	8(%ebp), %eax
	call	_F_getit
	jmp	L2647
	.align 4,0x90
L2642:
	addl	$1, %ebx
	jmp	L2632
	.align 4,0x90
L2645:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2517
	movl	%eax, (%esi)
	movl	%eax, %ebx
	jmp	L2513
	.align 4,0x90
L2543:
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	je	L2541
	addl	$1, %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2543
	jmp	L2541
	.align 4,0x90
L2646:
	addl	$1, %eax
	jmp	L2637
	.cstring
lC88:
	.ascii "constant\0"
lC89:
	.ascii "code\0"
lC90:
	.ascii "create\0"
lC91:
	.ascii "defer\0"
lC92:
	.ascii "value\0"
lC93:
	.ascii "variable\0"
lC94:
	.ascii "buffer:\0"
lC95:
	.ascii "field\0"
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB96:
	.text
LHOTB96:
	.align 4,0x90
_Forth_words:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L47$pb:
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.align 4,0x90
L2757:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2648
	movl	8(%ebp), %edx
	leal	_lb-L47$pb(%edi), %eax
	call	_readline
	movl	8+_lb-L47$pb(%edi), %ebx
	movzbl	(%ebx), %eax
	.align 4,0x90
L2684:
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2679
L2681:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L2679
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2681
	.align 4,0x90
L2679:
	testb	%al, %al
	je	L2757
	cmpb	$92, %al
	je	L2794
	cmpb	$40, %al
	je	L2795
	cmpb	$58, %al
	jne	L2651
	movsbl	1(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2651
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2651
	addl	$1, %ebx
	.align 4,0x90
L2655:
	movl	$1, %eax
	movl	%ebx, %esi
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2675
L2676:
	addl	$1, %esi
	movsbl	(%esi), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2675
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2676
	.align 4,0x90
L2675:
	movl	%esi, %eax
	xorl	%edx, %edx
	call	_get_tag
	movzbl	(%ebx), %eax
	jmp	L2684
	.align 4,0x90
L2794:
	movsbl	1(%ebx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2651
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L2757
	.align 4,0x90
L2651:
	leal	lC88-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2656
	movl	%ebx, %esi
	addl	$8, %esi
	jne	L2796
	leal	lC89-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2690
	movsbl	4, %ecx
	movl	$4, %esi
	subl	$9, %ecx
	.align 4,0x90
L2661:
	movl	%esi, %ebx
	cmpl	$23, %ecx
	jbe	L2655
	movl	%esi, %eax
	xorl	%edx, %edx
	call	_get_tag
	movzbl	(%ebx), %eax
	jmp	L2684
	.align 4,0x90
L2656:
	leal	lC89-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$4
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2659
	movl	%ebx, %esi
	addl	$4, %esi
	jne	L2797
	leal	lC90-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$6
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2697
	leal	lC91-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2686
	leal	lC92-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2720
	leal	lC93-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2719
L2668:
	leal	lC94-L47$pb(%edi), %eax
	pushl	%edx
	pushl	$7
	pushl	%eax
	pushl	%esi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2709
	movl	%esi, %eax
	addl	$7, %eax
	je	L2671
	jmp	L2700
	.align 4,0x90
L2795:
	movsbl	1(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2651
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L2651
	jmp	L2654
	.align 4,0x90
L2798:
	movzbl	1(%ebx), %eax
L2654:
	addl	$1, %ebx
	cmpb	$41, %al
	je	L2684
	testb	%al, %al
	jne	L2798
	jmp	L2684
L2708:
	movl	%ebx, %esi
L2666:
	leal	lC93-L47$pb(%edi), %eax
	pushl	%ecx
	pushl	$8
	pushl	%eax
	pushl	%esi
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2668
	movl	%esi, %eax
	addl	$8, %eax
	jne	L2702
	leal	lC94-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$7
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2691
L2671:
	leal	lC95-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2673
L2686:
	movsbl	5, %ecx
	movl	$5, %esi
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2659:
	leal	lC90-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$6
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2662
	movl	%ebx, %esi
	addl	$6, %esi
	jne	L2799
	leal	lC91-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2686
	leal	lC92-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2686
	leal	lC93-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2719
	leal	lC94-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$7
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2718
	xorl	%ebx, %ebx
L2670:
	pushl	%eax
	leal	lC95-L47$pb(%edi), %eax
	pushl	$5
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2672
	movl	%ebx, %esi
	addl	$5, %esi
	je	L2673
	movl	%ebx, -28(%ebp)
	jmp	L2699
	.align 4,0x90
L2796:
	movsbl	8(%ebx), %ecx
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2697:
	movsbl	6, %ecx
	movl	$6, %esi
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2690:
	leal	lC90-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$6
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2697
	leal	lC91-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2720
	leal	lC92-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2666
L2720:
	movl	$5, -28(%ebp)
L2704:
	movsbl	5(%esi), %ecx
	movl	-28(%ebp), %esi
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2662:
	leal	lC91-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2664
	movl	%ebx, %eax
	addl	$5, %eax
	movl	%eax, -28(%ebp)
	jne	L2792
	leal	lC92-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2686
	leal	lC93-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2693
	leal	lC94-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$7
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2800
L2785:
	subl	$4, %esp
	movl	$5, %esi
	xorl	%ebx, %ebx
	leal	lC95-L47$pb(%edi), %eax
	pushl	$5
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2672
L2699:
	movl	-28(%ebp), %eax
	movsbl	5(%eax), %ecx
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2693:
	movsbl	8, %ecx
	movl	$8, %esi
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2797:
	movsbl	4(%ebx), %ecx
	subl	$9, %ecx
	jmp	L2661
	.align 4,0x90
L2648:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L2672:
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L2757
	.align 4,0x90
L2674:
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2678
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L2678
	movzbl	(%ebx), %eax
	jmp	L2684
	.align 4,0x90
L2678:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	L2674
	jmp	L2684
L2800:
	xorl	%esi, %esi
	movl	$7, %eax
L2700:
	movsbl	7(%esi), %ecx
	movl	%eax, %esi
	subl	$9, %ecx
	jmp	L2661
L2792:
	movl	%ebx, %esi
	jmp	L2704
L2664:
	leal	lC92-L47$pb(%edi), %eax
	pushl	%esi
	pushl	$5
	pushl	%eax
	pushl	%ebx
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2708
	movl	%ebx, %eax
	addl	$5, %eax
	movl	%eax, -28(%ebp)
	jne	L2792
	leal	lC93-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$8
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2693
	leal	lC94-L47$pb(%edi), %eax
	subl	$4, %esp
	pushl	$7
	pushl	%eax
	pushl	$0
	call	_c_strncasecmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L2785
L2691:
	movsbl	7, %ecx
	movl	$7, %esi
	subl	$9, %ecx
	jmp	L2661
L2719:
	movl	$8, %eax
L2702:
	movsbl	8(%esi), %ecx
	movl	%eax, %esi
	subl	$9, %ecx
	jmp	L2661
L2718:
	movl	$7, %eax
	jmp	L2700
L2799:
	movsbl	6(%ebx), %ecx
	subl	$9, %ecx
	jmp	L2661
L2709:
	movl	%esi, %ebx
	jmp	L2670
	.section __TEXT,__text_cold,regular,pure_instructions
___cold_sect_of__Forth_words:
_Forth_words.cold.13:
L2673:
	movzbl	0, %eax
	ud2
LCOLDE96:
	.text
LHOTE96:
	.section __TEXT,__text_cold,regular,pure_instructions
	.cstring
lC97:
	.ascii "-define\0"
lC98:
	.ascii "-record\0"
	.text
	.align 4,0x90
_Erlang_functions:
	call	___x86.get_pc_thunk.ax
L48$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %ebx
	movl	$0, -44(%ebp)
	movl	$0, -36(%ebp)
	movl	%eax, -40(%ebp)
	movl	%ebx, -28(%ebp)
	leal	_lb-L48$pb(%eax), %ebx
	addl	$lC97-L48$pb, %eax
	movl	%ebx, -32(%ebp)
	movl	%eax, -48(%ebp)
	.align 4,0x90
L2802:
	movl	-28(%ebp), %edi
	movl	%edi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2824
L2869:
	movl	-32(%ebp), %esi
	movl	%edi, %edx
	movl	%esi, %eax
	call	_readline
	movl	8(%esi), %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L2802
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2803
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L2802
L2803:
	cmpb	$37, %al
	je	L2802
	cmpb	$34, %al
	je	L2802
	cmpb	$45, %al
	je	L2867
	movl	%ebx, %eax
	call	_erlang_atom
	testl	%eax, %eax
	movl	%eax, %esi
	jle	L2802
	leal	(%ebx,%eax), %edx
	movl	%esi, %edi
	movsbl	(%edx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2816
	movl	$1, %edi
	sall	%cl, %edi
	andl	$8388639, %edi
	movl	%esi, %edi
	je	L2816
	movl	$1, %edi
	movl	%ebx, -52(%ebp)
L2817:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2866
	movl	%edi, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L2817
L2866:
	movl	-52(%ebp), %ebx
	subl	%ebx, %edx
	movl	%edx, %edi
L2816:
	cmpb	$40, %al
	jne	L2802
	movl	-36(%ebp), %edx
	addl	$1, %edi
	testl	%edx, %edx
	je	L2819
L2820:
	movl	(%edx), %ecx
	addl	$4, %edx
	leal	-16843009(%ecx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	L2820
	movl	%eax, %ecx
	shrl	$16, %ecx
	testl	$32896, %eax
	cmove	%ecx, %eax
	leal	2(%edx), %ecx
	cmove	%ecx, %edx
	movl	%eax, %ecx
	addb	%al, %cl
	movl	-36(%ebp), %eax
	sbbl	$3, %edx
	subl	%eax, %edx
	cmpl	%edx, %esi
	jne	L2822
	subl	$4, %esp
	pushl	%esi
	pushl	%eax
	pushl	%ebx
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L2802
	.align 4,0x90
L2822:
	movl	-40(%ebp), %eax
	movl	$1, %ecx
	movl	%esi, %edx
	pushl	_linecharno-L48$pb(%eax)
	pushl	_lineno-L48$pb(%eax)
	movl	%ebx, %eax
	pushl	%edi
	leal	1(%esi), %edi
	pushl	%ebx
	call	_make_tag
	addl	$16, %esp
	cmpl	%esi, -44(%ebp)
	jle	L2868
L2826:
	subl	$4, %esp
	pushl	%esi
	pushl	%ebx
	movl	-36(%ebp), %ebx
	pushl	%ebx
	call	_memcpy
	movl	%edi, -44(%ebp)
	movl	-28(%ebp), %edi
	addl	$16, %esp
	movb	$0, (%ebx,%esi)
	movl	%edi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2869
L2824:
	movl	-36(%ebp), %eax
	movl	%eax, 8(%ebp)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_free
	.align 4,0x90
L2867:
	movl	-48(%ebp), %edi
	movl	$7, %ecx
	movl	%ebx, %esi
	repz; cmpsb
	jne	L2806
	movzbl	7(%ebx), %edx
	movl	-40(%ebp), %edi
	movl	%edx, %eax
	cmpb	$0, _table.5883-L48$pb(%edi,%edx)
	je	L2807
	leal	7(%ebx), %edx
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2870
L2808:
	cmpb	$40, %al
	je	L2871
L2807:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L2802
	subl	$12, %esp
	pushl	%eax
	call	_free
	addl	$16, %esp
	movl	$0, -36(%ebp)
	jmp	L2802
	.align 4,0x90
L2806:
	movl	-40(%ebp), %eax
	movl	$7, %ecx
	movl	%ebx, %esi
	leal	lC98-L48$pb(%eax), %edi
	repz; cmpsb
	jne	L2807
	movzbl	7(%ebx), %edx
	movl	-40(%ebp), %edi
	movl	%edx, %eax
	cmpb	$0, _table.5883-L48$pb(%edi,%edx)
	je	L2807
	leal	7(%ebx), %edx
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2808
	movl	$1, %esi
	sall	%cl, %esi
	andl	$8388639, %esi
	movl	$1, %esi
	je	L2808
L2811:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2808
	movl	%esi, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	je	L2808
	jmp	L2811
	.align 4,0x90
L2868:
	subl	$8, %esp
	pushl	%edi
	pushl	-36(%ebp)
	call	_realloc
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	testl	%eax, %eax
	jne	L2826
L2823:
	movl	-40(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L48$pb, %eax
	pushl	%eax
	call	_fatal
	.align 4,0x90
L2819:
	movl	-40(%ebp), %eax
	movl	$1, %ecx
	movl	%esi, %edx
	pushl	_linecharno-L48$pb(%eax)
	pushl	_lineno-L48$pb(%eax)
	movl	%ebx, %eax
	pushl	%edi
	leal	1(%esi), %edi
	pushl	%ebx
	call	_make_tag
	movl	%edi, (%esp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	testl	%eax, %eax
	jne	L2826
	jmp	L2823
	.align 4,0x90
L2870:
	movl	$1, %esi
	sall	%cl, %esi
	andl	$8388639, %esi
	movl	$1, %esi
	je	L2808
L2809:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2808
	movl	%esi, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	je	L2808
	jmp	L2809
	.align 4,0x90
L2871:
	movsbl	1(%edx), %ecx
	leal	1(%edx), %esi
	movl	%esi, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2813
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	movl	%esi, %eax
	je	L2813
	movl	$1, %edx
L2814:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2813
	movl	%edx, %edi
	sall	%cl, %edi
	movl	%edi, %ecx
	andl	$8388639, %ecx
	jne	L2814
	.align 4,0x90
L2813:
	call	_erlang_atom
	testl	%eax, %eax
	jle	L2807
	movl	-40(%ebp), %edi
	leal	(%esi,%eax), %edx
	movl	$1, %ecx
	subl	%ebx, %edx
	pushl	_linecharno-L48$pb(%edi)
	pushl	_lineno-L48$pb(%edi)
	pushl	%edx
	movl	%eax, %edx
	movl	%esi, %eax
	pushl	%ebx
	call	_make_tag
	addl	$16, %esp
	jmp	L2807
	.align 4,0x90
_Cobol_paragraphs:
	call	___x86.get_pc_thunk.ax
L49$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	8(%ebp), %esi
	movl	%eax, -32(%ebp)
	leal	_lb-L49$pb(%eax), %ebx
	.align 4,0x90
L2873:
	movl	%esi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2872
L2888:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_readline
	cmpl	$8, 4(%ebx)
	jle	L2873
	movl	8(%ebx), %ecx
	cmpb	$32, 7(%ecx)
	jne	L2873
	movzbl	8(%ecx), %eax
	cmpb	$90, %al
	jg	L2875
	cmpb	$65, %al
	jge	L2876
	leal	-48(%eax), %edx
	cmpb	$9, %dl
	ja	L2873
L2876:
	leal	8(%ecx), %edi
	movl	%edi, -28(%ebp)
L2877:
	cmpb	$90, %al
	jg	L2878
	cmpb	$65, %al
	jge	L2879
	leal	-48(%eax), %edx
	cmpb	$9, %dl
	jbe	L2879
L2880:
	cmpb	$45, %al
	je	L2879
	cmpb	$46, %al
	jne	L2873
	leal	1(%edi), %eax
	movl	-28(%ebp), %edi
	movl	%eax, %edx
	subl	%ecx, %eax
	addl	$1, %eax
	subl	%edi, %edx
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %edx
	pushl	_linecharno-L49$pb(%edx)
	pushl	_lineno-L49$pb(%edx)
	movl	-28(%ebp), %edx
	pushl	%eax
	movl	%edi, %eax
	pushl	%ecx
	movl	$1, %ecx
	call	_make_tag
	addl	$16, %esp
	movl	%esi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2888
L2872:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2878:
	leal	-97(%eax), %edx
	cmpb	$25, %dl
	ja	L2880
L2879:
	addl	$1, %edi
	movzbl	(%edi), %eax
	jmp	L2877
	.align 4,0x90
L2875:
	leal	-97(%eax), %edx
	cmpb	$25, %dl
	ja	L2873
	jmp	L2876
	.align 4,0x90
_Asm_labels:
	call	___x86.get_pc_thunk.ax
L50$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	leal	_lb-L50$pb(%eax), %edi
	movl	%eax, -28(%ebp)
	.align 4,0x90
L2890:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2889
L2913:
	movl	8(%ebp), %edx
	movl	%edi, %eax
	call	_readline
	movl	8(%edi), %esi
	movzbl	(%esi), %edx
	cmpb	$65, %dl
	jl	L2899
	cmpb	$90, %dl
	jle	L2900
	leal	-97(%edx), %ecx
	cmpb	$25, %cl
	jbe	L2900
L2899:
	cmpb	$46, %dl
	sete	%bl
	cmpb	$95, %dl
	sete	%cl
	orb	%cl, %bl
	jne	L2900
	cmpb	$36, %dl
	jne	L2890
	.align 4,0x90
L2900:
	leal	1(%esi), %edx
	jmp	L2893
	.align 4,0x90
L2912:
	cmpb	$65, %cl
	jge	L2895
	leal	-48(%ecx), %eax
	cmpb	$9, %al
	jbe	L2895
L2896:
	cmpb	$95, %cl
	sete	%bl
	cmpb	$46, %cl
	sete	%al
	orb	%al, %bl
	jne	L2895
	cmpb	$36, %cl
	jne	L2911
	.align 4,0x90
L2895:
	addl	$1, %edx
L2893:
	movsbl	(%edx), %ecx
	cmpb	$90, %cl
	jle	L2912
	leal	-97(%ecx), %eax
	cmpb	$25, %al
	ja	L2896
	jmp	L2895
	.align 4,0x90
L2911:
	cmpb	$58, %cl
	je	L2897
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2890
	movl	$1, %ebx
	sall	%cl, %ebx
	andl	$8388639, %ebx
	je	L2890
L2897:
	movl	-28(%ebp), %eax
	subl	%esi, %edx
	leal	1(%edx), %ecx
	pushl	_linecharno-L50$pb(%eax)
	pushl	_lineno-L50$pb(%eax)
	movl	%esi, %eax
	pushl	%ecx
	movl	$1, %ecx
	pushl	%esi
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L2913
L2889:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.cstring
lC99:
	.ascii "/b\0"
lC100:
	.ascii "body\0"
	.text
	.align 4,0x90
_Ada_getit:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L51$pb:
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	%eax, -28(%ebp)
	movl	%edx, -32(%ebp)
L2915:
	movl	-28(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L2914
	movl	_dbp-L51$pb(%edi), %eax
	leal	_dbp-L51$pb(%edi), %ebx
L2968:
	movsbl	(%eax), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2916
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	jne	L2970
L2916:
	movl	%eax, (%ebx)
	testb	%dl, %dl
	je	L2919
	cmpb	$45, %dl
	je	L2971
L2920:
	movsbl	(%eax), %edx
	leal	-65(%edx), %esi
	movl	%edx, %ebx
	leal	32(%edx), %ecx
	cmpl	$26, %esi
	cmovb	%ecx, %edx
	cmpl	$98, %edx
	je	L2922
	cmpl	$116, %edx
	jne	L2924
	leal	lC73-L51$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	jne	L2915
L2969:
	movl	_dbp-L51$pb(%edi), %eax
	movzbl	(%eax), %ebx
L2924:
	cmpb	$34, %bl
	je	L2972
	movsbl	%bl, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L2973
L2930:
	movl	%eax, _dbp-L51$pb(%edi)
	movl	%eax, %esi
L2933:
	cmpb	$90, %bl
	jg	L2934
	cmpb	$65, %bl
	jge	L2935
	leal	-48(%ebx), %edx
	cmpb	$9, %dl
	jbe	L2935
L2936:
	cmpb	$95, %bl
	je	L2935
	cmpb	$46, %bl
	je	L2935
	cmpl	%eax, %esi
	je	L2914
L2927:
	movl	-32(%ebp), %edx
	leal	lC3-L51$pb(%edi), %ecx
	movb	$0, (%esi)
	call	_concat
	movb	%bl, (%esi)
	movl	8+_lb-L51$pb(%edi), %ecx
	subl	$12, %esp
	pushl	%eax
	movl	%eax, -28(%ebp)
	movl	%ecx, -32(%ebp)
	call	_strlen
	movl	-32(%ebp), %ecx
	movl	%esi, %edx
	addl	$16, %esp
	pushl	_linecharno-L51$pb(%edi)
	pushl	_lineno-L51$pb(%edi)
	subl	%ecx, %edx
	addl	$1, %edx
	pushl	%edx
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	pushl	%ecx
	movl	$1, %ecx
	call	_make_tag
	popl	%eax
	pushl	-28(%ebp)
	call	_free
	addl	$16, %esp
	cmpb	$34, %bl
	jne	L2914
	addl	$1, %esi
	movl	%esi, _dbp-L51$pb(%edi)
L2914:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L2934:
	leal	-97(%ebx), %edx
	cmpb	$25, %dl
	ja	L2936
L2935:
	addl	$1, %esi
	movzbl	(%esi), %ebx
	jmp	L2933
	.align 4,0x90
L2971:
	cmpb	$45, 1(%eax)
	jne	L2920
	.align 4,0x90
L2919:
	movl	-28(%ebp), %edx
	leal	_lb-L51$pb(%edi), %eax
	call	_readline
	movl	8+_lb-L51$pb(%edi), %eax
	movl	%eax, (%ebx)
	jmp	L2920
	.align 4,0x90
L2970:
	addl	$1, %eax
	jmp	L2968
	.align 4,0x90
L2973:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	movl	$1, %edx
	je	L2930
L2931:
	addl	$1, %eax
	movsbl	(%eax), %ecx
	movl	%ecx, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L2930
	movl	%edx, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L2930
	jmp	L2931
	.align 4,0x90
L2922:
	leal	lC100-L51$pb(%edi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2969
	leal	lC99-L51$pb(%edi), %eax
	movl	%eax, -32(%ebp)
	jmp	L2915
	.align 4,0x90
L2972:
	movzbl	1(%eax), %ebx
	leal	1(%eax), %esi
	movl	%esi, _dbp-L51$pb(%edi)
	cmpb	$34, %bl
	je	L2941
	testb	%bl, %bl
	jne	L2974
L2941:
	movl	%esi, %eax
	jmp	L2927
	.align 4,0x90
L2974:
	movl	%esi, %edx
L2928:
	addl	$1, %edx
	movzbl	(%edx), %ebx
	testb	%bl, %bl
	je	L2942
	cmpb	$34, %bl
	jne	L2928
L2942:
	movl	%esi, %eax
	movl	%edx, %esi
	jmp	L2927
	.cstring
lC101:
	.ascii "/f\0"
lC102:
	.ascii "procedure\0"
lC103:
	.ascii "/p\0"
lC104:
	.ascii "/s\0"
lC105:
	.ascii "protected\0"
lC106:
	.ascii "/t\0"
lC107:
	.ascii "use\0"
lC108:
	.ascii "task\0"
lC109:
	.ascii "/k\0"
	.text
	.align 4,0x90
_Ada_funcs:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	movl	%edi, %eax
	call	___x86.get_pc_thunk.si
L52$pb:
	pushl	%ebx
	subl	$28, %esp
	movb	$0, -28(%ebp)
	movb	%al, -30(%ebp)
L3012:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	movb	%al, -29(%ebp)
	testb	%al, %al
	je	L2975
L3059:
	movl	8(%ebp), %edx
	leal	_lb-L52$pb(%esi), %eax
	leal	_dbp-L52$pb(%esi), %edi
	call	_readline
	movl	8+_lb-L52$pb(%esi), %edx
	movzbl	(%edx), %eax
	movl	%edx, _dbp-L52$pb(%esi)
L3007:
	testb	%al, %al
	je	L3012
	cmpb	$0, -28(%ebp)
	je	L3009
L2977:
	subl	$8, %esp
	pushl	$34
	pushl	%edx
	call	_strchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L2979
	leal	1(%eax), %edx
	movzbl	1(%eax), %eax
	movl	%edx, (%edi)
	testb	%al, %al
	je	L3003
L3009:
	cmpb	$34, %al
	je	L3052
	leal	lC57-L52$pb(%esi), %ebx
L2978:
	cmpb	$45, %al
	je	L3053
	cmpb	$39, %al
	je	L3054
	cmpb	$0, -30(%ebp)
	jne	L3015
	movzbl	%al, %ecx
	cmpb	$0, _table.5887-L52$pb(%esi,%ecx)
	je	L3016
	movsbl	%al, %eax
	leal	-65(%eax), %ecx
	leal	32(%eax), %edx
	cmpl	$26, %ecx
	cmovb	%edx, %eax
	cmpl	$112, %eax
	je	L2989
	jle	L3055
	cmpl	$116, %eax
	je	L2993
	cmpl	$117, %eax
	jne	L2992
	cmpb	$0, _typedefs-L52$pb(%esi)
	leal	_packages_only-L52$pb(%esi), %edx
	movl	_packages_only-L52$pb(%esi), %eax
	jne	L3056
L2999:
	testl	%eax, %eax
	je	L3057
	.align 4,0x90
L2992:
	movl	(%edi), %edx
	movzbl	(%edx), %ecx
	movl	%ecx, %eax
	movzbl	_table.5895-L52$pb(%esi,%ecx), %ecx
	testb	%cl, %cl
	jne	L3058
	movb	%cl, -28(%ebp)
	leal	1(%edx), %ecx
	.align 4,0x90
L3006:
	movzbl	(%ecx), %ebx
	movl	%ecx, %edx
	leal	1(%ecx), %ecx
	cmpb	$0, _table.5895-L52$pb(%esi,%ebx)
	movl	%ebx, %eax
	je	L3006
	movl	%edx, (%edi)
	movb	$0, -30(%ebp)
	jmp	L3007
	.align 4,0x90
L2979:
	movzbl	-29(%ebp), %eax
	movl	$0, (%edi)
	movb	%al, -28(%ebp)
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	movb	%al, -29(%ebp)
	testb	%al, %al
	jne	L3059
L2975:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L3053:
	cmpb	$45, 1(%edx)
	je	L3003
	cmpb	$0, -30(%ebp)
	jne	L3015
L3016:
	movzbl	1(%edx), %eax
	leal	1(%edx), %ecx
	movl	%ecx, (%edi)
	testb	%al, %al
	je	L2996
	movl	%ecx, %edx
	movb	$0, -30(%ebp)
L2985:
	cmpb	$34, %al
	jne	L2978
L3052:
	addl	$1, %edx
	jmp	L2977
	.align 4,0x90
L3055:
	cmpl	$102, %eax
	jne	L2992
	movl	_packages_only-L52$pb(%esi), %ecx
	testl	%ecx, %ecx
	jne	L2992
	leal	lC48-L52$pb(%esi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2992
	leal	lC101-L52$pb(%esi), %edx
L3051:
	movl	8(%ebp), %eax
	call	_Ada_getit
	movl	(%edi), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	jne	L2985
L2996:
	movb	$0, -30(%ebp)
	movb	$0, -28(%ebp)
	jmp	L3012
	.align 4,0x90
L3015:
	leal	1(%edx), %ecx
	cmpb	$59, %al
	movzbl	1(%edx), %eax
	setne	-30(%ebp)
	movl	%ecx, (%edi)
	testb	%al, %al
	je	L3003
L3020:
	movl	%ecx, %edx
	jmp	L2985
	.align 4,0x90
L3054:
	cmpb	$0, 1(%edx)
	leal	1(%edx), %eax
	movl	%eax, (%edi)
	je	L3003
	movzbl	2(%edx), %eax
	leal	2(%edx), %ecx
	movl	%ecx, (%edi)
	testb	%al, %al
	jne	L3020
	.align 4,0x90
L3003:
	movb	$0, -28(%ebp)
	jmp	L3012
	.align 4,0x90
L2993:
	movl	_packages_only-L52$pb(%esi), %eax
	leal	_packages_only-L52$pb(%esi), %edx
	testl	%eax, %eax
	jne	L2992
L3057:
	leal	lC108-L52$pb(%esi), %eax
	movl	%edx, -28(%ebp)
	call	_nocase_tail
	movl	-28(%ebp), %edx
	testb	%al, %al
	jne	L3060
	cmpb	$0, _typedefs-L52$pb(%esi)
	movb	%al, -28(%ebp)
	je	L2992
	movl	(%edx), %eax
	testl	%eax, %eax
	jne	L2992
	leal	lC73-L52$pb(%esi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2992
	movl	8(%ebp), %eax
	leal	lC106-L52$pb(%esi), %edx
	call	_Ada_getit
	movl	(%edi), %eax
	cmpb	$0, (%eax)
	je	L3003
	addl	$1, %eax
	.align 4,0x90
L3004:
	movl	%eax, %edx
	addl	$1, %eax
	cmpb	$0, -1(%eax)
	jne	L3004
	movl	%edx, (%edi)
	movb	$0, -30(%ebp)
	jmp	L3012
	.align 4,0x90
L2989:
	movl	_packages_only-L52$pb(%esi), %edx
	testl	%edx, %edx
	je	L3061
L2997:
	movl	%ebx, %eax
	call	_nocase_tail
	leal	lC104-L52$pb(%esi), %edx
	testb	%al, %al
	jne	L3051
	leal	lC105-L52$pb(%esi), %eax
	call	_nocase_tail
	testb	%al, %al
	je	L2992
	movl	8(%ebp), %eax
	leal	lC106-L52$pb(%esi), %edx
	call	_Ada_getit
	movl	(%edi), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L2996
	movb	$0, -30(%ebp)
	jmp	L2985
	.align 4,0x90
L3056:
	testl	%eax, %eax
	jne	L2992
	leal	lC107-L52$pb(%esi), %eax
	movl	%edx, -28(%ebp)
	call	_nocase_tail
	movl	%eax, %ecx
	testb	%al, %al
	jne	L3001
	movl	-28(%ebp), %edx
	movl	(%edx), %eax
	jmp	L2999
	.align 4,0x90
L3061:
	leal	lC102-L52$pb(%esi), %eax
	call	_nocase_tail
	leal	lC103-L52$pb(%esi), %edx
	testb	%al, %al
	je	L2997
	jmp	L3051
L3058:
	testb	%al, %al
	jne	L3009
	jmp	L3003
L3060:
	leal	lC109-L52$pb(%esi), %edx
	jmp	L3051
L3001:
	movl	(%edi), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L3062
	movb	%cl, -30(%ebp)
	jmp	L2985
L3062:
	movb	$0, -28(%ebp)
	movb	%cl, -30(%ebp)
	jmp	L3012
	.align 4,0x90
_Prolog_functions:
	call	___x86.get_pc_thunk.ax
L53$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	8(%ebp), %esi
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	%eax, -48(%ebp)
	addl	$_lb-L53$pb, %eax
	movl	%eax, -32(%ebp)
	movl	%esi, -28(%ebp)
	.align 4,0x90
L3064:
	movl	-28(%ebp), %edi
	movl	%edi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L3092
L3150:
	movl	%edi, %edx
	movl	-32(%ebp), %edi
	movl	%edi, %eax
	call	_readline
	movl	8(%edi), %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L3064
	movsbl	%al, %edx
	leal	-9(%edx), %ecx
	cmpl	$23, %ecx
	ja	L3065
	movl	$1, %esi
	sall	%cl, %esi
	andl	$8388639, %esi
	jne	L3064
L3065:
	cmpb	$47, %al
	jne	L3067
	cmpb	$42, 1(%ebx)
	jne	L3064
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %edi
	jmp	L3145
	.align 4,0x90
L3069:
	addl	$1, %ebx
	movl	%edx, %eax
L3145:
	testb	%al, %al
	je	L3149
	movzbl	1(%ebx), %edx
	cmpb	$42, %al
	jne	L3069
	cmpb	$47, %dl
	jne	L3069
	movl	-28(%ebp), %edi
	movl	%edi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	jne	L3150
L3092:
	movl	-40(%ebp), %eax
	movl	%eax, 8(%ebp)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	jmp	_free
	.align 4,0x90
L3067:
	subl	$97, %edx
	cmpl	$25, %edx
	jbe	L3096
	cmpb	$95, %al
	jne	L3151
L3096:
	movl	$1, %esi
	jmp	L3072
	.align 4,0x90
L3152:
	cmpb	$65, %dl
	jge	L3075
	leal	-48(%edx), %ecx
	cmpb	$9, %cl
	jbe	L3075
	cmpb	$95, %dl
	jne	L3077
	.align 4,0x90
L3075:
	addl	$1, %esi
L3072:
	movzbl	(%ebx,%esi), %edx
	cmpb	$90, %dl
	jle	L3152
	leal	-97(%edx), %ecx
	cmpb	$25, %cl
	jbe	L3075
	cmpb	$95, %dl
	je	L3075
L3077:
	testl	%esi, %esi
	je	L3064
	leal	(%ebx,%esi), %edi
	movsbl	(%edi), %ecx
	movl	%edi, -36(%ebp)
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3081
	movl	$1, %edi
	sall	%cl, %edi
	andl	$8388639, %edi
	je	L3081
	movl	$1, %edi
	movb	%al, -49(%ebp)
L3082:
	addl	$1, -36(%ebp)
	movl	-36(%ebp), %ecx
	movsbl	(%ecx), %ecx
	movl	%ecx, %edx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3143
	movl	%edi, %eax
	sall	%cl, %eax
	movl	%eax, %ecx
	andl	$8388639, %ecx
	jne	L3082
L3143:
	movzbl	-49(%ebp), %eax
L3081:
	movl	-36(%ebp), %ecx
	movl	%ecx, %edi
	subl	%ebx, %edi
	cmpb	$46, %dl
	je	L3084
	cmpb	$40, %dl
	je	L3085
	movzbl	(%ecx), %eax
L3086:
	cmpb	$58, %al
	jne	L3064
	cmpb	$45, 1(%ebx,%edi)
	jne	L3064
	addl	$2, %edi
	je	L3064
L3084:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L3087
L3155:
	movl	%eax, %edx
L3088:
	movl	(%edx), %ecx
	addl	$4, %edx
	leal	-16843009(%ecx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	L3088
	movl	%eax, %ecx
	shrl	$16, %ecx
	testl	$32896, %eax
	cmove	%ecx, %eax
	leal	2(%edx), %ecx
	cmove	%ecx, %edx
	movl	%eax, %ecx
	addb	%al, %cl
	movl	-40(%ebp), %eax
	sbbl	$3, %edx
	subl	%eax, %edx
	cmpl	%esi, %edx
	jne	L3090
	subl	$4, %esp
	pushl	%esi
	pushl	%eax
	pushl	%ebx
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L3064
L3090:
	movl	-48(%ebp), %eax
	movl	$1, %ecx
	movl	%esi, %edx
	pushl	_linecharno-L53$pb(%eax)
	pushl	_lineno-L53$pb(%eax)
	movl	%ebx, %eax
	pushl	%edi
	leal	1(%esi), %edi
	pushl	%ebx
	call	_make_tag
	addl	$16, %esp
	cmpl	-44(%ebp), %edi
	ja	L3153
L3095:
	subl	$4, %esp
	pushl	%esi
	pushl	%ebx
	movl	-40(%ebp), %ebx
	pushl	%ebx
	call	_memcpy
	movb	$0, (%ebx,%esi)
	addl	$16, %esp
	movl	%edi, -44(%ebp)
	jmp	L3064
	.align 4,0x90
L3149:
	movl	%edi, %eax
	movl	%esi, %edx
	call	_readline
	movl	%esi, %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L3064
	movl	8(%edi), %ebx
	movzbl	(%ebx), %eax
	jmp	L3145
	.align 4,0x90
L3151:
	cmpb	$39, %al
	jne	L3064
	movzbl	1(%ebx), %ecx
	movl	$1, %edx
	movl	%eax, %edi
	jmp	L3078
	.align 4,0x90
L3079:
	testb	%cl, %cl
	je	L3064
	leal	1(%edx), %esi
	movzbl	1(%ebx,%edx), %eax
	cmpb	$92, %cl
	je	L3154
L3080:
	movl	%eax, %ecx
	movl	%esi, %edx
L3078:
	cmpb	$39, %cl
	jne	L3079
	cmpb	$39, 1(%ebx,%edx)
	leal	1(%edx), %esi
	jne	L3142
L3146:
	leal	2(%edx), %esi
	movzbl	2(%ebx,%edx), %eax
	jmp	L3080
	.align 4,0x90
L3154:
	testb	%al, %al
	jne	L3146
	jmp	L3064
	.align 4,0x90
L3085:
	addl	$1, %edi
	je	L3086
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	L3155
L3087:
	movl	-48(%ebp), %eax
	movl	$1, %ecx
	movl	%esi, %edx
	pushl	_linecharno-L53$pb(%eax)
	pushl	_lineno-L53$pb(%eax)
	movl	%ebx, %eax
	pushl	%edi
	leal	1(%esi), %edi
	pushl	%ebx
	call	_make_tag
	movl	%edi, (%esp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	jne	L3095
L3091:
	movl	-48(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L53$pb, %eax
	pushl	%eax
	call	_fatal
	.align 4,0x90
L3153:
	subl	$8, %esp
	pushl	%edi
	pushl	-40(%ebp)
	call	_realloc
	addl	$16, %esp
	movl	%eax, -40(%ebp)
	testl	%eax, %eax
	jne	L3095
	jmp	L3091
	.align 4,0x90
L3142:
	movl	%edi, %eax
	jmp	L3077
	.cstring
lC110:
	.ascii "<<\0"
lC111:
	.ascii "attr_reader\0"
lC112:
	.ascii "attr_writer\0"
lC113:
	.ascii "attr_accessor\0"
lC114:
	.ascii "alias_method\0"
lC115:
	.ascii "module\0"
	.text
	.align 4,0x90
_Ruby_functions:
	call	___x86.get_pc_thunk.ax
L54$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	movb	$0, -52(%ebp)
	movb	$0, -41(%ebp)
	movl	%eax, -56(%ebp)
	movb	$0, -43(%ebp)
	movb	$0, -42(%ebp)
L3157:
	movl	8(%ebp), %eax
	call	_perhaps_more_input
	testb	%al, %al
	je	L3156
L3437:
	movl	-56(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edi, %eax
	addl	$_lb-L54$pb, %eax
	call	_readline
	movl	%edi, %eax
	leal	_lb-L54$pb(%edi), %edi
	movl	%edi, -72(%ebp)
	movl	8+_lb-L54$pb(%eax), %edi
	movsbl	(%edi), %ecx
	movl	%edi, -64(%ebp)
	movl	%edi, %ebx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3245
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L3245
	movl	-64(%ebp), %ebx
L3246:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3245
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L3246
L3245:
	cmpb	$0, -52(%ebp)
	jne	L3178
	cmpb	$65, %al
	jl	L3158
	cmpb	$90, %al
	jle	L3433
L3158:
	movl	-56(%ebp), %esi
	movl	$3, %ecx
	leal	lC46-L54$pb(%esi), %edi
	movl	%ebx, %esi
	repz; cmpsb
	jne	L3171
	movzbl	3(%ebx), %edx
	movl	-56(%ebp), %esi
	movl	%edx, %eax
	movzbl	_table.5883-L54$pb(%esi,%edx), %ecx
	leal	_table.5883-L54$pb(%esi), %edi
	movb	%cl, -48(%ebp)
	testb	%cl, %cl
	jne	L3434
L3171:
	movl	-56(%ebp), %eax
	movl	$5, %ecx
	movl	%ebx, %esi
	leal	lC45-L54$pb(%eax), %edi
	repz; cmpsb
	setb	%al
	seta	%dl
	subl	%eax, %edx
	movsbl	%dl, %eax
	movl	%eax, -60(%ebp)
	testl	%eax, %eax
	jne	L3175
	movzbl	5(%ebx), %edx
	movl	-56(%ebp), %esi
	movl	%edx, %eax
	leal	_table.5883-L54$pb(%esi), %edi
	movzbl	_table.5883-L54$pb(%esi,%edx), %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L3435
L3175:
	movl	-56(%ebp), %eax
	movl	$6, %ecx
	movl	%ebx, %esi
	leal	lC115-L54$pb(%eax), %edi
	repz; cmpsb
	setb	%al
	seta	%dl
	subl	%eax, %edx
	movsbl	%dl, %eax
	movl	%eax, -60(%ebp)
	testl	%eax, %eax
	jne	L3432
	movzbl	6(%ebx), %edx
	movl	-56(%ebp), %esi
	movl	%edx, %eax
	movzbl	_table.5883-L54$pb(%esi,%edx), %ecx
	leal	_table.5883-L54$pb(%esi), %edi
	movb	%cl, -48(%ebp)
	testb	%cl, %cl
	je	L3259
	movsbl	%dl, %ecx
	addl	$6, %ebx
	xorl	%esi, %esi
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3172
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	je	L3172
L3179:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L3180
L3424:
	movzbl	%al, %edx
	xorl	%esi, %esi
	movzbl	(%edi,%edx), %ecx
	movb	%cl, -48(%ebp)
L3172:
	movl	$46, %edx
	movl	$1718379891, -30(%ebp)
	movw	%dx, -26(%ebp)
	movl	%ebx, %edx
	cmpb	$61, %al
	je	L3365
	cmpb	$1, -48(%ebp)
	je	L3181
	.align 4,0x90
L3365:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	cmpb	$1, (%edi,%ecx)
	jne	L3365
	cmpb	$61, %cl
	je	L3365
	movl	%edx, %eax
	subl	%ebx, %eax
	cmpl	$5, %eax
	jbe	L3184
	leal	-30(%ebp), %eax
	subl	$4, %esp
	movl	%edx, -48(%ebp)
	pushl	$5
	pushl	%eax
	pushl	%ebx
	call	_strncmp
	movl	-48(%ebp), %edx
	leal	5(%ebx), %ecx
	addl	$16, %esp
	testl	%eax, %eax
	cmove	%ecx, %ebx
L3184:
	movl	-60(%ebp), %edi
	testl	%edi, %edi
	jne	L3436
L3185:
	movl	%esi, %eax
	testb	%al, %al
	je	L3188
	movl	-56(%ebp), %eax
	movl	$2, %ecx
	movl	%ebx, %esi
	leal	lC110-L54$pb(%eax), %edi
	repz; cmpsb
	jne	L3188
	leal	2(%ebx), %eax
	cmpl	%eax, %edx
	je	L3157
L3188:
	movl	-56(%ebp), %eax
	movl	%edx, %esi
	movl	$1, %ecx
	movl	-64(%ebp), %edi
	subl	%ebx, %esi
	pushl	_linecharno-L54$pb(%eax)
	pushl	_lineno-L54$pb(%eax)
	movl	%edx, %eax
	movl	%esi, %edx
	subl	%edi, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%ebx, %eax
	pushl	%edi
	call	_make_tag
	movl	8(%ebp), %eax
	addl	$16, %esp
	call	_perhaps_more_input
	testb	%al, %al
	jne	L3437
L3156:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L3259:
	movb	$0, -52(%ebp)
L3432:
	movb	$0, -41(%ebp)
	movb	$0, -43(%ebp)
	movb	$0, -42(%ebp)
L3178:
	movzbl	(%ebx), %eax
	movl	%ebx, -48(%ebp)
	movzbl	-52(%ebp), %edx
	.align 4,0x90
L3250:
	testb	%al, %al
	setne	%cl
	cmpb	$35, %al
	setne	%bl
	andb	%cl, %bl
	movb	%bl, -60(%ebp)
	je	L3438
	testb	%dl, %dl
	jne	L3189
	movl	-56(%ebp), %edi
	movl	$11, %ecx
	movl	-48(%ebp), %esi
	addl	$lC111-L54$pb, %edi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	jne	L3190
	movl	-48(%ebp), %edi
	movzbl	11(%edi), %esi
	movl	-56(%ebp), %edi
	leal	_table.5883-L54$pb(%edi), %ecx
	movl	%ecx, -64(%ebp)
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	_table.5883-L54$pb(%edi,%ecx), %ecx
	movb	%cl, -42(%ebp)
	testb	%cl, %cl
	jne	L3439
L3191:
	movl	-56(%ebp), %edi
	movl	$13, %ecx
	movl	-48(%ebp), %esi
	addl	$lC113-L54$pb, %edi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	jne	L3197
	movl	-48(%ebp), %edi
	movzbl	13(%edi), %esi
	movl	-64(%ebp), %edi
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	(%edi,%ecx), %ecx
	movb	%cl, -42(%ebp)
	testb	%cl, %cl
	jne	L3440
L3197:
	movl	-56(%ebp), %edi
	movl	$12, %ecx
	movl	-48(%ebp), %esi
	addl	$lC114-L54$pb, %edi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	jne	L3200
	movl	-48(%ebp), %edi
	movzbl	12(%edi), %esi
	movl	-64(%ebp), %edi
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	(%edi,%ecx), %ecx
	movb	%cl, -41(%ebp)
	testb	%cl, %cl
	jne	L3441
	xorl	%edx, %edx
	.align 4,0x90
L3200:
	movb	$0, -41(%ebp)
	movb	$0, -43(%ebp)
	movb	$0, -42(%ebp)
L3253:
	movl	-64(%ebp), %esi
	movzbl	%al, %eax
	cmpb	$0, (%esi,%eax)
	jne	L3239
L3451:
	movl	-48(%ebp), %ebx
	.align 4,0x90
L3241:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	movzbl	%al, %ecx
	cmpb	$0, (%esi,%ecx)
	je	L3241
	movl	%ebx, -48(%ebp)
L3240:
	testb	%al, %al
	je	L3250
	cmpb	$35, %al
	je	L3250
	movl	-48(%ebp), %ebx
	movl	-64(%ebp), %esi
	.align 4,0x90
L3242:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L3420
	cmpb	$35, %al
	je	L3420
	movzbl	%al, %ecx
	cmpb	$0, (%esi,%ecx)
	jne	L3242
L3420:
	movl	%ebx, -48(%ebp)
	jmp	L3250
	.align 4,0x90
L3189:
	movzbl	-42(%ebp), %ecx
	orb	-43(%ebp), %cl
	jne	L3289
	movl	-56(%ebp), %edi
	addl	$_table.5883-L54$pb, %edi
	cmpb	$0, -41(%ebp)
	movl	%edi, -64(%ebp)
	je	L3200
L3289:
	movl	-56(%ebp), %esi
	movb	%dl, -52(%ebp)
	movl	-48(%ebp), %edi
	leal	_table.5883-L54$pb(%esi), %ecx
	movsbl	%al, %esi
	movl	%esi, %edx
	movl	%ecx, -64(%ebp)
	movl	%ecx, %esi
	.align 4,0x90
L3236:
	leal	-9(%edx), %ecx
	cmpl	$23, %ecx
	ja	L3204
L3206:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L3204
	addl	$1, %edi
	movsbl	(%edi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L3206
	.align 4,0x90
L3204:
	cmpb	$40, %al
	je	L3207
	movzbl	(%edi), %eax
L3208:
	movzbl	%al, %edx
	movl	%edi, %ebx
	cmpb	$0, (%esi,%edx)
	jne	L3211
	.align 4,0x90
L3212:
	addl	$1, %ebx
	movzbl	(%ebx), %edx
	cmpb	$0, (%esi,%edx)
	je	L3212
L3211:
	cmpb	$58, %al
	jne	L3431
	addl	$1, %edi
	cmpb	$0, -42(%ebp)
	jne	L3442
	cmpb	$0, -43(%ebp)
	jne	L3443
	cmpb	$0, -41(%ebp)
	jne	L3444
L3221:
	movsbl	(%ebx), %edx
	leal	-9(%edx), %ecx
	movl	%edx, %eax
	cmpl	$23, %ecx
	ja	L3230
L3254:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3431
L3228:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3214
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L3228
L3214:
	cmpb	$0, -41(%ebp)
	je	L3230
L3446:
	cmpb	$44, %al
	jne	L3445
L3231:
	movsbl	1(%ebx), %edx
	leal	1(%ebx), %edi
	leal	-9(%edx), %ecx
	movl	%edx, %eax
	cmpl	$23, %ecx
	ja	L3233
L3235:
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	je	L3233
	addl	$1, %edi
	movsbl	(%edi), %edx
	leal	-9(%edx), %ecx
	movl	%edx, %eax
	cmpl	$23, %ecx
	jbe	L3235
	.align 4,0x90
L3233:
	testb	%al, %al
	je	L3290
	cmpb	$35, %al
	jne	L3236
L3290:
	movzbl	-52(%ebp), %edx
	movl	%edi, -48(%ebp)
L3232:
	cmpb	$35, %al
	je	L3250
	jmp	L3253
	.align 4,0x90
L3431:
	cmpb	$0, -41(%ebp)
	movzbl	(%ebx), %eax
	jne	L3446
L3230:
	cmpb	$44, %al
	jne	L3416
	movzbl	-60(%ebp), %eax
	movb	%al, -52(%ebp)
	jmp	L3231
	.align 4,0x90
L3442:
	movl	-56(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	_linecharno-L54$pb(%eax), %ecx
	movl	_lineno-L54$pb(%eax), %eax
	movl	8(%edx), %edx
	pushl	%ecx
	movl	%eax, -68(%ebp)
	movl	%ebx, %eax
	pushl	-68(%ebp)
	subl	%edi, %eax
	movl	%ecx, -76(%ebp)
	movl	$1, %ecx
	movl	%eax, -48(%ebp)
	movl	%ebx, %eax
	subl	%edx, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%edi, %eax
	pushl	%edx
	movl	-48(%ebp), %edx
	call	_make_tag
	addl	$16, %esp
	cmpb	$0, -43(%ebp)
	jne	L3216
	cmpb	$0, -41(%ebp)
	jne	L3217
L3218:
	movb	$0, -52(%ebp)
	jmp	L3221
	.align 4,0x90
L3443:
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%eax, -48(%ebp)
L3216:
	movl	-48(%ebp), %eax
	subl	$12, %esp
	addl	$2, %eax
	pushl	%eax
	call	_malloc
	addl	$16, %esp
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	je	L3447
	subl	$4, %esp
	pushl	-48(%ebp)
	pushl	%edi
	pushl	-52(%ebp)
	call	_memcpy
	movl	-52(%ebp), %eax
	movl	$61, %ecx
	addl	$12, %esp
	movl	-48(%ebp), %edx
	movw	%cx, (%eax,%edx)
	movl	-56(%ebp), %edx
	movl	_linecharno-L54$pb(%edx), %ecx
	movl	_lineno-L54$pb(%edx), %edx
	movl	%ecx, %eax
	movl	%ecx, -76(%ebp)
	movl	-72(%ebp), %ecx
	movl	%edx, -68(%ebp)
	movl	8(%ecx), %ecx
	pushl	%eax
	pushl	%edx
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	movl	$1, %edx
	addl	$1, %eax
	pushl	%eax
	movl	-52(%ebp), %eax
	call	_pfnote
	addl	$16, %esp
	cmpb	$0, -41(%ebp)
	je	L3218
L3217:
	movl	-72(%ebp), %eax
	movl	$1, %ecx
	movl	8(%eax), %edx
	movl	%ebx, %eax
	pushl	-76(%ebp)
	pushl	-68(%ebp)
	subl	%edx, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%edi, %eax
	pushl	%edx
	movl	-48(%ebp), %edx
	call	_make_tag
	addl	$16, %esp
	jmp	L3222
	.align 4,0x90
L3207:
	movsbl	1(%edi), %ecx
	leal	1(%edi), %edx
	movl	%edx, %edi
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3208
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	je	L3208
L3209:
	movsbl	1(%edx), %ecx
	leal	1(%edx), %edi
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3208
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L3208
	movl	%edi, %edx
	jmp	L3209
L3444:
	cmpb	$0, -52(%ebp)
	je	L3448
L3222:
	movzbl	(%ebx), %eax
	testb	%al, %al
	setne	%cl
	cmpb	$35, %al
	setne	%dl
	andb	%dl, %cl
	movl	%ecx, %edi
	je	L3279
	cmpb	$59, %al
	je	L3411
	movsbl	%al, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	%esi, -48(%ebp)
	xorl	%edi, %edi
	jmp	L3226
	.align 4,0x90
L3449:
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3281
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	cmove	%edx, %edi
L3225:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	testb	%cl, %cl
	je	L3413
L3450:
	cmpb	$35, %cl
	je	L3413
	cmpb	$59, %cl
	je	L3411
L3226:
	cmpb	$44, %cl
	jne	L3449
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%eax, %edi
	testb	%cl, %cl
	jne	L3450
L3413:
	movl	-48(%ebp), %esi
	movl	%edi, %eax
	movb	%al, -52(%ebp)
	movl	%ecx, %eax
L3223:
	cmpb	$59, %al
	je	L3227
	movsbl	%al, %edx
	leal	-9(%edx), %ecx
	cmpl	$23, %ecx
	jbe	L3254
	jmp	L3214
	.align 4,0x90
L3281:
	xorl	%edi, %edi
	jmp	L3225
L3411:
	movl	-64(%ebp), %esi
	movl	$59, %eax
	xorl	%edx, %edx
	movl	%ebx, -48(%ebp)
	movzbl	%al, %eax
	cmpb	$0, (%esi,%eax)
	je	L3451
L3239:
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	jmp	L3240
L3190:
	movl	-56(%ebp), %edi
	movl	$11, %ecx
	movl	-48(%ebp), %esi
	addl	$lC112-L54$pb, %edi
	repz; cmpsb
	seta	%cl
	movl	%ecx, %esi
	setb	%cl
	movl	%esi, %ebx
	cmpb	%cl, %bl
	je	L3393
	movl	-56(%ebp), %edi
	addl	$_table.5883-L54$pb, %edi
	movl	%edi, -64(%ebp)
	jmp	L3191
L3393:
	movl	-48(%ebp), %ebx
	movl	-56(%ebp), %edi
	movzbl	11(%ebx), %esi
	leal	_table.5883-L54$pb(%edi), %ecx
	movl	%ecx, -64(%ebp)
	movl	%esi, %ecx
	movzbl	%cl, %ecx
	movzbl	_table.5883-L54$pb(%edi,%ecx), %ecx
	movb	%cl, -43(%ebp)
	testb	%cl, %cl
	je	L3191
	movl	%esi, %eax
	movl	%ebx, %edi
	movsbl	%al, %ebx
	addl	$11, %edi
	leal	-9(%ebx), %ecx
	cmpl	$23, %ecx
	ja	L3267
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3267
L3195:
	addl	$1, %edi
	movsbl	(%edi), %esi
	leal	-9(%esi), %ecx
	movl	%esi, %eax
	cmpl	$23, %ecx
	ja	L3269
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L3195
L3269:
	movb	%dl, -52(%ebp)
	movl	%esi, %edx
	movl	-64(%ebp), %esi
	movb	$0, -41(%ebp)
	movb	$0, -42(%ebp)
	jmp	L3236
L3439:
	movl	-48(%ebp), %edi
	movl	%esi, %eax
	movsbl	%al, %ebx
	leal	-9(%ebx), %ecx
	addl	$11, %edi
	cmpl	$23, %ecx
	ja	L3264
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3264
L3193:
	addl	$1, %edi
	movsbl	(%edi), %esi
	leal	-9(%esi), %ecx
	movl	%esi, %eax
	cmpl	$23, %ecx
	ja	L3266
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L3193
L3266:
	movb	%dl, -52(%ebp)
	movl	%esi, %edx
	movl	-64(%ebp), %esi
	movb	$0, -41(%ebp)
	movb	$0, -43(%ebp)
	jmp	L3236
L3438:
	movb	%dl, -52(%ebp)
	jmp	L3157
L3264:
	movl	%esi, %eax
	movb	%dl, -52(%ebp)
	movl	-64(%ebp), %esi
	movl	%ebx, %edx
	movb	$0, -41(%ebp)
	movb	$0, -43(%ebp)
	jmp	L3236
L3440:
	movl	-48(%ebp), %edi
	movl	%esi, %eax
	movsbl	%al, %ebx
	leal	-9(%ebx), %ecx
	addl	$13, %edi
	cmpl	$23, %ecx
	ja	L3270
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3270
L3198:
	addl	$1, %edi
	movsbl	(%edi), %esi
	leal	-9(%esi), %ecx
	movl	%esi, %eax
	cmpl	$23, %ecx
	ja	L3272
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L3198
L3272:
	movzbl	-42(%ebp), %ecx
	movb	%dl, -52(%ebp)
	movl	%esi, %edx
	movb	$0, -41(%ebp)
	movl	-64(%ebp), %esi
	movb	%cl, -43(%ebp)
	jmp	L3236
L3441:
	movl	-48(%ebp), %edi
	movl	%esi, %eax
	movsbl	%al, %ebx
	leal	-9(%ebx), %ecx
	addl	$12, %edi
	cmpl	$23, %ecx
	ja	L3274
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3274
L3201:
	addl	$1, %edi
	movsbl	(%edi), %esi
	leal	-9(%esi), %ecx
	movl	%esi, %eax
	cmpl	$23, %ecx
	ja	L3276
	movl	$1, %ebx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	andl	$8388639, %ecx
	jne	L3201
L3276:
	movb	%dl, -52(%ebp)
	movl	%esi, %edx
	movl	-64(%ebp), %esi
	movb	$0, -43(%ebp)
	movb	$0, -42(%ebp)
	jmp	L3236
L3267:
	movl	%esi, %eax
	movb	$0, -41(%ebp)
L3428:
	movb	%dl, -52(%ebp)
	movl	-64(%ebp), %esi
	movl	%ebx, %edx
	movb	$0, -42(%ebp)
	jmp	L3236
L3270:
	movzbl	-42(%ebp), %ecx
	movl	%esi, %eax
	movb	%dl, -52(%ebp)
	movl	%ebx, %edx
	movb	$0, -41(%ebp)
	movl	-64(%ebp), %esi
	movb	%cl, -43(%ebp)
	jmp	L3236
L3274:
	movl	%esi, %eax
	movb	$0, -43(%ebp)
	jmp	L3428
L3279:
	movb	$0, -52(%ebp)
	jmp	L3223
L3433:
	leal	1(%ebx), %eax
	xorl	%edx, %edx
	movl	%ebx, %esi
	movl	%eax, -48(%ebp)
	movl	%eax, %edi
	jmp	L3160
L3453:
	cmpb	$65, %al
	jge	L3163
	leal	-48(%eax), %ecx
	cmpb	$9, %cl
	jbe	L3163
	cmpb	$58, %al
	sete	%bl
	cmpb	$95, %al
	sete	%cl
	orb	%bl, %cl
	je	L3452
	.align 4,0x90
L3163:
	cmpb	$58, %al
	cmove	%edi, %edx
	addl	$1, %edi
L3160:
	movzbl	(%edi), %eax
	cmpb	$90, %al
	jle	L3453
	leal	-97(%eax), %ecx
	cmpb	$25, %cl
	jbe	L3163
	cmpb	$58, %al
	sete	%bl
	cmpb	$95, %al
	sete	%cl
	orb	%bl, %cl
	jne	L3163
L3452:
	movl	%esi, %ebx
	movb	%cl, -52(%ebp)
	cmpl	-48(%ebp), %edi
	jbe	L3157
	movsbl	%al, %ecx
	movl	%edi, %esi
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3166
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	movl	%edi, %esi
	andl	$8388639, %ecx
	je	L3166
	movl	%edx, -48(%ebp)
L3167:
	addl	$1, %esi
	movsbl	(%esi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3398
	movl	$1, %edx
	sall	%cl, %edx
	movl	%edx, %ecx
	andl	$8388639, %ecx
	jne	L3167
L3398:
	movl	-48(%ebp), %edx
L3166:
	cmpb	$61, %al
	jne	L3157
	movzbl	1(%esi), %eax
	subl	$61, %eax
	cmpb	$1, %al
	jbe	L3157
	testl	%edx, %edx
	je	L3169
	movsbl	1(%edx), %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	jbe	L3454
L3170:
	leal	1(%edx), %ebx
L3169:
	movl	-56(%ebp), %eax
	movl	%edi, %edx
	xorl	%ecx, %ecx
	subl	%ebx, %edx
	pushl	_linecharno-L54$pb(%eax)
	pushl	_lineno-L54$pb(%eax)
	movl	%edi, %eax
	movl	-64(%ebp), %edi
	subl	%edi, %eax
	addl	$1, %eax
	pushl	%eax
	movl	%ebx, %eax
	pushl	%edi
	call	_make_tag
	addl	$16, %esp
	jmp	L3157
	.align 4,0x90
L3436:
	cmpl	%edx, %ebx
	jnb	L3427
	cmpb	$46, (%ebx)
	movl	%ebx, %eax
	jne	L3187
	jmp	L3186
	.align 4,0x90
L3455:
	cmpb	$46, (%eax)
	je	L3186
L3187:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L3455
L3186:
	leal	-1(%edx), %edi
	leal	1(%eax), %ecx
	cmpl	%edi, %eax
	cmovb	%ecx, %ebx
	jmp	L3185
L3416:
	movl	%ebx, -48(%ebp)
L3283:
	movb	$0, -41(%ebp)
	xorl	%edx, %edx
	jmp	L3232
L3434:
	movsbl	%dl, %ecx
	addl	$3, %ebx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3257
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L3257
L3173:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3426
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L3173
L3426:
	movzbl	%al, %edx
	xorl	%esi, %esi
	movl	$1, -60(%ebp)
	movzbl	(%edi,%edx), %ecx
	movb	%cl, -48(%ebp)
	jmp	L3172
L3257:
	xorl	%esi, %esi
	movl	$1, -60(%ebp)
	jmp	L3172
L3435:
	movsbl	%al, %ecx
	addl	$5, %ebx
	movb	%dl, -48(%ebp)
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3172
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	je	L3172
L3176:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	movsbl	%al, %ecx
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3425
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L3176
L3425:
	movzbl	%al, %edx
	movzbl	(%edi,%edx), %ecx
	movb	%cl, -48(%ebp)
	jmp	L3172
L3448:
	movl	-56(%ebp), %eax
	movl	_linecharno-L54$pb(%eax), %ecx
	movl	_lineno-L54$pb(%eax), %eax
	movl	%ecx, -76(%ebp)
	movl	%eax, -68(%ebp)
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%eax, -48(%ebp)
	jmp	L3217
L3180:
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	jne	L3179
	jmp	L3424
L3181:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	L3185
L3427:
	leal	-1(%edx), %edi
	movl	%ebx, %eax
	leal	1(%eax), %ecx
	cmpl	%edi, %eax
	cmovb	%ecx, %ebx
	jmp	L3185
L3445:
	movl	%ebx, -48(%ebp)
	movzbl	-52(%ebp), %edx
	jmp	L3232
	.align 4,0x90
L3454:
	movl	$1, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	jne	L3169
	jmp	L3170
L3227:
	cmpb	$0, -41(%ebp)
	movl	%ebx, -48(%ebp)
	je	L3283
	xorl	%edx, %edx
	jmp	L3253
	.align 4,0x90
L3447:
	movl	-56(%ebp), %eax
	subl	$12, %esp
	addl	$lC2-L54$pb, %eax
	pushl	%eax
	call	_fatal
	.cstring
lC116:
	.ascii "c++\0"
lC117:
	.ascii "c\0"
lC118:
	.ascii "fortran\0"
	.text
	.align 4,0x90
_find_entries:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	call	___x86.get_pc_thunk.di
L55$pb:
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	movl	%eax, -28(%ebp)
	leal	_curfdp-L55$pb(%edi), %eax
	movl	%eax, -40(%ebp)
	leal	_lb-L55$pb(%edi), %eax
	movl	%eax, -32(%ebp)
	leal	_lang_names-L55$pb(%edi), %eax
	movl	%eax, -36(%ebp)
L3481:
	movl	-40(%ebp), %eax
	movl	(%eax), %esi
	movl	20(%esi), %eax
	testl	%eax, %eax
	je	L3457
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L3457
L3458:
	movl	-28(%ebp), %eax
	call	_reset_input
	movl	_no_line_directive-L55$pb(%edi), %eax
	testl	%eax, %eax
	jne	L3478
	movl	_curfdp-L55$pb(%edi), %esi
	movl	20(%esi), %eax
	testl	%eax, %eax
	jne	L3477
	.align 4,0x90
L3478:
	leal	_filebuf-L55$pb(%edi), %eax
	xorl	%edx, %edx
	call	_linebuffer_setlen
	subl	$12, %esp
	movl	$0, _lineno-L55$pb(%edi)
	pushl	-28(%ebp)
	movl	$0, _charno-L55$pb(%edi)
	movl	$0, _linecharno-L55$pb(%edi)
	call	*%ebx
	movl	8+_filebuf-L55$pb(%edi), %eax
	addl	$16, %esp
	movl	_p_head-L55$pb(%edi), %esi
	movl	%eax, -32(%ebp)
	testl	%esi, %esi
	je	L3456
	leal	lC24-L55$pb(%edi), %eax
	movl	%eax, -80(%ebp)
	leal	lC25-L55$pb(%edi), %eax
	movl	%eax, -84(%ebp)
	jmp	L3508
	.align 4,0x90
L3492:
	movl	(%esi), %esi
	testl	%esi, %esi
	je	L3456
L3508:
	movzbl	35(%esi), %eax
	movb	%al, -44(%ebp)
	testb	%al, %al
	je	L3492
	movl	$1, _lineno-L55$pb(%edi)
	leal	_lineno-L55$pb(%edi), %eax
	movl	%eax, -68(%ebp)
	leal	_charno-L55$pb(%edi), %eax
	movl	%eax, -36(%ebp)
	leal	_linecharno-L55$pb(%edi), %eax
	movl	%eax, -72(%ebp)
	movl	4(%esi), %eax
	movl	$0, _charno-L55$pb(%edi)
	movl	$0, _linecharno-L55$pb(%edi)
	testl	%eax, %eax
	je	L3516
	movl	-40(%ebp), %edx
	movl	(%edx), %edx
	cmpl	20(%edx), %eax
	jne	L3492
L3516:
	movl	$0, -28(%ebp)
	leal	_filebuf-L55$pb(%edi), %eax
	movl	%eax, -76(%ebp)
L3506:
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jle	L3492
	leal	20(%esi), %ecx
	subl	$8, %esp
	movl	%eax, %edx
	subl	-28(%ebp), %edx
	pushl	%ecx
	movl	-36(%ebp), %ecx
	pushl	%edx
	pushl	(%ecx)
	pushl	%eax
	pushl	-32(%ebp)
	pushl	16(%esi)
	call	_re_search
	addl	$32, %esp
	movl	%eax, -28(%ebp)
	cmpl	$-2, %eax
	je	L3495
	cmpl	$-1, %eax
	je	L3492
	movl	28(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	cmpl	%eax, -28(%ebp)
	je	L3497
	movl	-36(%ebp), %eax
	movl	(%eax), %ebx
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%edx, -56(%ebp)
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%eax, -60(%ebp)
	xorl	%eax, %eax
L3498:
	movl	%eax, %ecx
	movb	%al, -61(%ebp)
	jmp	L3499
	.align 4,0x90
L3500:
	movl	-32(%ebp), %eax
	addl	$1, %ebx
	movzbl	-44(%ebp), %ecx
	cmpb	$10, -1(%eax,%ebx)
	je	L3578
L3499:
	cmpl	%ebx, -52(%ebp)
	jg	L3500
	movzbl	-61(%ebp), %eax
	testb	%cl, %cl
	je	L3501
	movl	-36(%ebp), %ecx
	movl	%ebx, (%ecx)
L3501:
	testb	%al, %al
	je	L3502
	movl	-68(%ebp), %eax
	movl	%edx, -56(%ebp)
	movl	-72(%ebp), %ecx
	movl	%edx, (%eax)
	movl	-60(%ebp), %eax
	movl	%eax, (%ecx)
	movl	%eax, -48(%ebp)
L3502:
	movl	12(%esi), %edx
	movl	$0, -52(%ebp)
	cmpb	$0, (%edx)
	jne	L3579
L3503:
	movl	-48(%ebp), %eax
	movl	-32(%ebp), %ecx
	subl	%eax, %ebx
	addl	$1, %ebx
	addl	%eax, %ecx
	cmpb	$0, 33(%esi)
	je	L3504
	subl	$4, %esp
	movl	$1, %edx
	pushl	%eax
	movl	-52(%ebp), %eax
	pushl	-56(%ebp)
	pushl	%ebx
	call	_pfnote
	addl	$16, %esp
L3505:
	movl	-28(%ebp), %edx
	testl	%edx, %edx
	jns	L3506
	jmp	L3492
	.align 4,0x90
L3456:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L3457:
	movl	4(%esi), %eax
	movl	$1, %edx
	call	_get_language_from_filename
	testl	%eax, %eax
	je	L3459
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L3459
	movl	%eax, 20(%esi)
	jmp	L3458
	.align 4,0x90
L3459:
	movl	_infilename-L55$pb(%edi), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	call	_readline_internal
	testl	%eax, %eax
	jle	L3463
	movl	-32(%ebp), %eax
	cmpl	$1, 4(%eax)
	jle	L3463
	movl	-32(%ebp), %eax
	movl	8(%eax), %esi
	cmpb	$35, (%esi)
	je	L3580
L3463:
	movl	-28(%ebp), %eax
	call	_reset_input
	movl	-40(%ebp), %eax
	xorl	%edx, %edx
	movl	(%eax), %esi
	movl	4(%esi), %eax
	call	_get_language_from_filename
	testl	%eax, %eax
	je	L3462
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L3462
	movl	_no_line_directive-L55$pb(%edi), %edx
	movl	%eax, 20(%esi)
	testl	%edx, %edx
	jne	L3478
L3477:
	cmpb	$0, 24(%eax)
	je	L3478
	leal	_fdhead-L55$pb(%edi), %eax
	movl	%ebx, -48(%ebp)
	movl	%eax, -32(%ebp)
	leal	_nodehead-L55$pb(%edi), %eax
	movl	%eax, -44(%ebp)
L3482:
	movl	-32(%ebp), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L3581
L3489:
	cmpl	%esi, %ebx
	je	L3483
	subl	$8, %esp
	pushl	16(%esi)
	pushl	16(%ebx)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L3582
L3483:
	movl	%ebx, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	jne	L3489
L3581:
	movl	-48(%ebp), %ebx
	jmp	L3478
	.align 4,0x90
L3462:
	leal	lC118-L55$pb(%edi), %eax
	movl	_last_node-L55$pb(%edi), %ebx
	call	_get_language_from_langname.part.5
	movl	%eax, 20(%esi)
	movl	-28(%ebp), %esi
	movl	%esi, %eax
	call	_find_entries
	cmpl	%ebx, _last_node-L55$pb(%edi)
	jne	L3456
	movl	%esi, %eax
	call	_reset_input
	movl	-40(%ebp), %ecx
	leal	lC117-L55$pb(%edi), %edx
	cmpb	$0, _cplusplus-L55$pb(%edi)
	leal	lC116-L55$pb(%edi), %eax
	movl	(%ecx), %ebx
	cmove	%edx, %eax
	call	_get_language_from_langname.part.5
	movl	%eax, 20(%ebx)
	jmp	L3481
	.align 4,0x90
L3495:
	cmpb	$0, 32(%esi)
	jne	L3492
	subl	$8, %esp
	pushl	8(%esi)
	pushl	-80(%ebp)
	call	_error
	addl	$16, %esp
	movb	$1, 32(%esi)
	jmp	L3492
	.align 4,0x90
L3578:
	addl	$1, %edx
	movl	%ebx, -60(%ebp)
	movl	%ecx, %eax
	jmp	L3498
	.align 4,0x90
L3504:
	subl	$12, %esp
	movl	%ecx, -60(%ebp)
	pushl	-52(%ebp)
	call	_strlen
	movl	-60(%ebp), %ecx
	addl	$16, %esp
	pushl	-48(%ebp)
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	pushl	-56(%ebp)
	pushl	%ebx
	pushl	%ecx
	movl	$1, %ecx
	call	_make_tag
	addl	$16, %esp
	jmp	L3505
	.align 4,0x90
L3579:
	leal	28(%esi), %eax
	subl	$12, %esp
	pushl	%eax
	movl	-32(%ebp), %eax
	leal	24(%esi), %ecx
	call	_substitute.isra.4
	addl	$16, %esp
	movl	%eax, -52(%ebp)
	jmp	L3503
	.align 4,0x90
L3580:
	cmpb	$33, 1(%esi)
	jne	L3463
	leal	2(%esi), %ebx
	subl	$8, %esp
	pushl	$47
	pushl	%ebx
	call	_strrchr
	addl	$16, %esp
	testl	%eax, %eax
	je	L3464
	leal	1(%eax), %ebx
	movsbl	1(%eax), %eax
L3465:
	movl	%ebx, %edx
	movl	$1, %esi
	testb	%al, %al
	je	L3469
L3468:
	leal	-9(%eax), %ecx
	cmpl	$23, %ecx
	ja	L3470
	movl	%esi, %eax
	sall	%cl, %eax
	testl	$8388639, %eax
	je	L3470
L3469:
	movb	$0, (%edx)
	cmpb	$0, (%ebx)
	je	L3463
	movl	-36(%ebp), %eax
	movl	(%eax), %ecx
	movl	%eax, -44(%ebp)
	testl	%ecx, %ecx
	je	L3463
L3475:
	movl	-44(%ebp), %eax
	movl	20(%eax), %esi
	testl	%esi, %esi
	jne	L3576
L3472:
	addl	$28, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	L3475
	jmp	L3463
	.align 4,0x90
L3582:
	movl	-44(%ebp), %edx
	movl	(%edx), %eax
L3484:
	testl	%eax, %eax
	je	L3485
L3584:
	movl	(%eax), %ecx
	cmpl	8(%eax), %ebx
	je	L3583
	movl	%eax, %edx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L3584
L3485:
	movl	-32(%ebp), %edx
	subl	$12, %esp
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	pushl	4(%ebx)
	call	_free
	popl	%ecx
	pushl	8(%ebx)
	call	_free
	popl	%eax
	pushl	12(%ebx)
	call	_free
	popl	%eax
	pushl	16(%ebx)
	call	_free
	popl	%eax
	pushl	24(%ebx)
	call	_free
	movl	%ebx, (%esp)
	call	_free
	addl	$16, %esp
	jmp	L3482
	.align 4,0x90
L3583:
	movl	%ecx, (%edx)
	movl	$0, (%eax)
	movl	%edx, -36(%ebp)
	call	_free_tree
	movl	-36(%ebp), %edx
	movl	(%edx), %eax
	jmp	L3484
	.align 4,0x90
L3497:
	cmpb	$0, 32(%esi)
	jne	L3492
	subl	$8, %esp
	pushl	8(%esi)
	pushl	-84(%ebp)
	call	_error
	addl	$16, %esp
	movb	$1, 32(%esi)
	jmp	L3492
	.align 4,0x90
L3585:
	addl	$4, %esi
L3576:
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L3472
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3585
	movl	-44(%ebp), %eax
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L3463
	movl	_curfdp-L55$pb(%edi), %eax
	movl	-44(%ebp), %edx
	movl	%edx, 20(%eax)
	jmp	L3458
	.align 4,0x90
L3470:
	addl	$1, %edx
	movsbl	(%edx), %eax
	testb	%al, %al
	jne	L3468
	jmp	L3469
L3464:
	movsbl	2(%esi), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3465
	movl	$1, %edx
	sall	%cl, %edx
	andl	$8388639, %edx
	movl	$1, %edx
	je	L3465
L3466:
	addl	$1, %ebx
	movsbl	(%ebx), %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	cmpl	$23, %ecx
	ja	L3465
	movl	%edx, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	andl	$8388639, %ecx
	je	L3465
	jmp	L3466
	.align 4,0x90
_process_file:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	movl	%edx, %esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L56$pb:
	subl	$40, %esp
	movl	%eax, -28(%ebp)
	pushl	$32
	movl	%ecx, -32(%ebp)
	movl	%edx, _infilename-L56$pb(%ebx)
	call	_malloc
	addl	$16, %esp
	testl	%eax, %eax
	je	L3600
	movl	%eax, %edi
	movl	4+_emptyfdesc.6420-L56$pb(%ebx), %eax
	subl	$12, %esp
	movl	%eax, 4(%edi)
	movl	8+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 8(%edi)
	movl	12+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 12(%edi)
	movl	16+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 16(%edi)
	movl	20+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 20(%edi)
	movl	24+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 24(%edi)
	movl	28+_emptyfdesc.6420-L56$pb(%ebx), %eax
	movl	%eax, 28(%edi)
	movl	_fdhead-L56$pb(%ebx), %eax
	movl	%eax, (%edi)
	pushl	%esi
	call	_strlen
	addl	$16, %esp
	movl	%eax, %edx
	movl	%esi, %eax
	call	_savenstr
	movl	_cwd-L56$pb(%ebx), %ecx
	movl	%eax, 4(%edi)
	movl	-32(%ebp), %eax
	movl	%ecx, %edx
	movl	%ecx, -32(%ebp)
	movl	%eax, 20(%edi)
	movl	%esi, %eax
	call	_absolute_filename
	movl	-32(%ebp), %ecx
	movl	%eax, 8(%edi)
	movl	%esi, %eax
	movl	%ecx, %edx
	call	_absolute_dirname
	cmpb	$47, (%esi)
	movl	%eax, 12(%edi)
	je	L3601
	movl	_tagfiledir-L56$pb(%ebx), %edx
	movl	%esi, %eax
	call	_relative_filename
	movl	%eax, 16(%edi)
L3589:
	movl	$1, %eax
	movl	$0, 24(%edi)
	movw	%ax, 28(%edi)
	movl	-28(%ebp), %eax
	movl	%edi, _fdhead-L56$pb(%ebx)
	movl	%edi, _curfdp-L56$pb(%ebx)
	call	_find_entries
	movl	_curfdp-L56$pb(%ebx), %eax
	cmpb	$0, 28(%eax)
	je	L3586
	movl	20(%eax), %edx
	cmpb	$0, 24(%edx)
	jne	L3586
	movl	_nodehead-L56$pb(%ebx), %esi
	testl	%esi, %esi
	je	L3586
	cmpl	8(%esi), %eax
	jne	L3592
	jmp	L3602
	.align 4,0x90
L3594:
	cmpl	8(%ebx), %eax
	je	L3593
	movl	%ebx, %esi
L3592:
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	jne	L3594
L3586:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L3601:
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_absolute_filename
	movl	%eax, 16(%edi)
	jmp	L3589
	.align 4,0x90
L3593:
	movl	%ebx, %eax
	call	_put_entries
	movl	%ebx, %eax
	call	_free_tree
	movl	$0, (%esi)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L3602:
	movl	%esi, %eax
	call	_put_entries
	movl	%esi, %eax
	call	_free_tree
	movl	$0, _nodehead-L56$pb(%ebx)
	jmp	L3586
L3600:
	leal	lC2-L56$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
	.cstring
lC119:
	.ascii "/tmp\0"
lC120:
	.ascii "-\0"
	.align 2
lC121:
	.ascii "skipping inclusion of %s in self.\0"
lC122:
	.ascii "TMPDIR\0"
lC123:
	.ascii "etXXXXXX\0"
lC124:
	.ascii " '\0"
lC125:
	.ascii "' > \0"
	.text
	.align 4,0x90
_process_file_name:
	call	___x86.get_pc_thunk.cx
L57$pb:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	%edx, -40(%ebp)
	movzbl	(%eax), %edx
	movl	%eax, -28(%ebp)
	movl	%ecx, -32(%ebp)
	movl	%eax, %ecx
	testb	%dl, %dl
	jne	L3608
	jmp	L3633
	.align 4,0x90
L3605:
	movb	%dl, (%ecx)
	movzbl	1(%eax), %edx
L3606:
	addl	$1, %eax
	addl	$1, %ecx
	testb	%dl, %dl
	je	L3604
L3608:
	cmpb	$47, %dl
	jne	L3605
	movb	$47, (%ecx)
	movzbl	1(%eax), %edx
	cmpb	$47, %dl
	jne	L3606
	.align 4,0x90
L3607:
	addl	$1, %eax
	movzbl	1(%eax), %edx
	cmpb	$47, %dl
	je	L3607
	addl	$1, %eax
	addl	$1, %ecx
	testb	%dl, %dl
	jne	L3608
	.align 4,0x90
L3604:
	movl	-32(%ebp), %ebx
	subl	$8, %esp
	movb	$0, (%ecx)
	movl	_tagfile-L57$pb(%ebx), %esi
	pushl	%esi
	pushl	-28(%ebp)
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3609
	leal	lC120-L57$pb(%ebx), %edi
	movl	$2, %ecx
	repz; cmpsb
	jne	L3661
L3609:
	movl	-28(%ebp), %esi
	subl	$8, %esp
	pushl	$47
	pushl	%esi
	call	_strrchr
	popl	%ecx
	popl	%ebx
	pushl	$46
	movl	%eax, %ebx
	pushl	%esi
	call	_strrchr
	addl	$16, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L3635
	cmpl	%eax, %ebx
	ja	L3635
	movl	-32(%ebp), %ebx
	leal	1(%eax), %esi
	movl	_compressors-L57$pb(%ebx), %eax
	testl	%eax, %eax
	je	L3635
	addl	$_compressors-L57$pb, %ebx
	jmp	L3613
	.align 4,0x90
L3662:
	addl	$8, %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L3635
L3613:
	subl	$8, %esp
	pushl	%esi
	pushl	%eax
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3662
	movl	-28(%ebp), %eax
	subl	%eax, %edi
	movl	%edi, %edx
	movl	%eax, %edi
	call	_savenstr
	movl	%edi, -36(%ebp)
	movl	%eax, %esi
	jmp	L3611
	.align 4,0x90
L3635:
	movl	-28(%ebp), %esi
	xorl	%ebx, %ebx
	movl	$0, -36(%ebp)
L3611:
	movl	-32(%ebp), %eax
	movl	_fdhead-L57$pb(%eax), %edi
	testl	%edi, %edi
	jne	L3616
	jmp	L3614
	.align 4,0x90
L3663:
	movl	(%edi), %edi
	testl	%edi, %edi
	je	L3614
L3616:
	subl	$8, %esp
	pushl	4(%edi)
	pushl	%esi
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3663
L3615:
	movl	-36(%ebp), %eax
	movl	-28(%ebp), %ecx
	cmpl	%ecx, %eax
	je	L3630
	subl	$12, %esp
	pushl	%eax
	call	_free
	addl	$16, %esp
L3630:
	cmpl	-28(%ebp), %esi
	je	L3631
	subl	$12, %esp
	pushl	%esi
	call	_free
	addl	$16, %esp
L3631:
	movl	-32(%ebp), %eax
	movl	$0, _last_node-L57$pb(%eax)
	movl	$0, _curfdp-L57$pb(%eax)
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L3614:
	movl	-32(%ebp), %eax
	subl	$8, %esp
	addl	$lC18-L57$pb, %eax
	pushl	%eax
	pushl	-28(%ebp)
	movl	%eax, -48(%ebp)
	call	_fopen
	addl	$16, %esp
	movl	%eax, %edi
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
	testl	%edi, %edi
	je	L3664
L3617:
	movl	-44(%ebp), %ecx
	cmpl	%ecx, -36(%ebp)
	je	L3665
	movl	-40(%ebp), %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	_process_file
	subl	$12, %esp
	pushl	%edi
	call	_fclose
	addl	$16, %esp
	movl	%eax, %ebx
L3632:
	testl	%ebx, %ebx
	jns	L3615
	movl	-28(%ebp), %eax
	call	_pfatal
	.align 4,0x90
L3661:
	movl	%ebx, %eax
	subl	$8, %esp
	pushl	-28(%ebp)
	addl	$lC121-L57$pb, %eax
	pushl	%eax
	call	_error
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.align 4,0x90
L3664:
	call	___errno_location
	movl	-36(%ebp), %edx
	movl	%eax, -52(%ebp)
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	testl	%edx, %edx
	je	L3666
	subl	$8, %esp
	pushl	-48(%ebp)
	pushl	%esi
	call	_fopen
	addl	$16, %esp
	movl	%eax, %edi
	movl	%esi, -44(%ebp)
	testl	%eax, %eax
	jne	L3617
L3621:
	movl	-52(%ebp), %eax
	subl	$12, %esp
	movl	-56(%ebp), %ebx
	movl	%ebx, (%eax)
	pushl	-28(%ebp)
	call	_perror
	addl	$16, %esp
	jmp	L3615
L3633:
	movl	-28(%ebp), %ecx
	jmp	L3604
L3665:
	call	___errno_location
	movl	%eax, -52(%ebp)
L3622:
	subl	$12, %esp
	pushl	%edi
	call	_fclose
	movl	-32(%ebp), %ecx
	leal	lC122-L57$pb(%ecx), %eax
	movl	%eax, (%esp)
	call	_getenv
	addl	$16, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L3640
	subl	$12, %esp
	pushl	%eax
	call	_strlen
	addl	$16, %esp
	movl	-32(%ebp), %ecx
	cmpb	$47, -1(%edi,%eax)
	leal	lC4-L57$pb(%ecx), %edx
	je	L3667
L3624:
	movl	-32(%ebp), %eax
	leal	lC123-L57$pb(%eax), %ecx
	movl	%edi, %eax
	call	_concat
	subl	$8, %esp
	pushl	$524288
	movl	%eax, %edi
	pushl	%eax
	call	_mkostemp
	addl	$16, %esp
	testl	%eax, %eax
	js	L3627
	subl	$12, %esp
	pushl	%eax
	call	_close
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3627
	movl	4(%ebx), %eax
	movl	-32(%ebp), %ebx
	movl	-44(%ebp), %ecx
	leal	lC124-L57$pb(%ebx), %edx
	call	_concat
	movl	%edi, %ecx
	movl	%eax, %ebx
	movl	-32(%ebp), %eax
	leal	lC125-L57$pb(%eax), %edx
	movl	%ebx, %eax
	call	_concat
	subl	$12, %esp
	pushl	%ebx
	movl	%eax, -56(%ebp)
	call	_free
	movl	-56(%ebp), %ebx
	movl	%ebx, (%esp)
	call	_system
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	L3628
	subl	$12, %esp
	pushl	%ebx
	call	_free
	movl	-52(%ebp), %eax
	addl	$16, %esp
	movl	$22, (%eax)
L3626:
	subl	$12, %esp
	pushl	-44(%ebp)
	call	_perror
	addl	$16, %esp
	jmp	L3615
L3666:
	movl	-32(%ebp), %eax
	movl	_compressors-L57$pb(%eax), %ecx
	leal	_compressors-L57$pb(%eax), %ebx
	addl	$lC26-L57$pb, %eax
	movl	%eax, -44(%ebp)
	testl	%ecx, %ecx
	je	L3621
	movl	%esi, -60(%ebp)
	movl	-48(%ebp), %edi
	jmp	L3619
	.align 4,0x90
L3669:
	subl	$12, %esp
	addl	$8, %ebx
	pushl	%esi
	call	_free
	movl	(%ebx), %ecx
	addl	$16, %esp
	testl	%ecx, %ecx
	je	L3668
L3619:
	movl	-44(%ebp), %edx
	movl	-28(%ebp), %eax
	call	_concat
	subl	$8, %esp
	pushl	%edi
	movl	%eax, %esi
	pushl	%eax
	call	_fopen
	addl	$16, %esp
	testl	%eax, %eax
	je	L3669
	movl	%eax, %edi
	movl	%esi, %eax
	movl	%esi, -44(%ebp)
	movl	-60(%ebp), %esi
	movl	%eax, -36(%ebp)
	jmp	L3622
L3627:
	movl	-52(%ebp), %eax
	subl	$12, %esp
	movl	(%eax), %ebx
	pushl	%edi
	call	_free
	movl	-52(%ebp), %eax
	addl	$16, %esp
	movl	%ebx, (%eax)
	jmp	L3626
L3628:
	subl	$8, %esp
	pushl	-48(%ebp)
	pushl	%edi
	call	_fopen
	movl	-52(%ebp), %ecx
	movl	%eax, %ebx
	movl	(%ecx), %eax
	movl	%eax, -48(%ebp)
	popl	%eax
	pushl	-56(%ebp)
	call	_free
	movl	-52(%ebp), %ecx
	addl	$16, %esp
	movl	-48(%ebp), %eax
	movl	%eax, (%ecx)
	testl	%ebx, %ebx
	je	L3626
	movl	-40(%ebp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_process_file
	subl	$12, %esp
	pushl	%ebx
	call	_fclose
	movl	%edi, (%esp)
	movl	%eax, %ebx
	call	_remove
	movl	%edi, (%esp)
	call	_free
	addl	$16, %esp
	jmp	L3632
L3667:
	leal	lC3-L57$pb(%ecx), %edx
	jmp	L3624
L3640:
	movl	-32(%ebp), %eax
	leal	lC119-L57$pb(%eax), %edi
	leal	lC4-L57$pb(%eax), %edx
	jmp	L3624
L3668:
	movl	-60(%ebp), %esi
	jmp	L3621
	.cstring
lC126:
	.ascii "ab\0"
lC127:
	.ascii "wb\0"
lC128:
	.ascii "Di:\0"
lC129:
	.ascii "-ac:Cf:Il:o:Qr:RSVhH\0"
	.align 2
lC130:
	.ascii "cannot parse standard input more than once\0"
	.align 2
lC131:
	.ascii "-o option may only be given once.\0"
lC132:
	.ascii "empty language name\0"
lC133:
	.ascii "i\0"
lC135:
	.ascii "25.1.50\0"
lC136:
	.ascii "GNU Emacs\0"
lC137:
	.ascii "etags\0"
lC138:
	.ascii "%s (%s %s)\12\0"
	.align 2
lC139:
	.ascii "This program is distributed under the terms in ETAGS.README\0"
	.align 2
lC140:
	.ascii "Usage: %s [options] [[regex-option ...] file-name] ...\12\12These are the options accepted by %s.\12\0"
	.align 2
lC141:
	.ascii "You may use unambiguous abbreviations for the long option names.\0"
	.align 2
lC142:
	.ascii "  A - as file name means read names from stdin (one per line).\12Absolute names are stored in the output file as they are.\12Relative ones are stored relative to the output file's directory.\12\0"
	.align 2
lC143:
	.ascii "-a, --append\12        Append tag entries to existing tags file.\0"
	.align 2
lC144:
	.ascii "--packages-only\12        For Ada files, only generate tags for packages.\0"
	.align 2
lC145:
	.ascii "--declarations\12\11In C and derived languages, create tags for function declarations,\0"
	.align 2
lC146:
	.ascii "\11and create tags for extern variables unless --no-globals is used.\0"
	.align 2
lC147:
	.ascii "-D, --no-defines\12        Don't create tag entries for C #define constants and enum constants.\12\11This makes the tags file smaller.\0"
	.align 2
lC148:
	.ascii "-i FILE, --include=FILE\12        Include a note in tag file indicating that, when searching for\12        a tag, one should also consult the tags file FILE after\12        checking the current file.\0"
	.align 2
lC149:
	.ascii "-l LANG, --language=LANG\12        Force the following files to be considered as written in the\12\11named language up to the next --language=LANG option.\0"
	.align 2
lC150:
	.ascii "--no-globals\12\11Do not create tag entries for global variables in some\12\11languages.  This makes the tags file smaller.\0"
	.align 2
lC151:
	.ascii "--no-line-directive\12        Ignore #line preprocessor directives in C and derived languages.\0"
	.align 2
lC152:
	.ascii "--no-members\12\11Do not create tag entries for members of structures\12\11in some languages.\0"
	.align 2
lC153:
	.ascii "-Q, --class-qualify\12        Qualify tag names with their class name in C++, ObjC, Java, and Perl.\12        This produces tag names of the form \"class::member\" for C++,\12        \"class(category)\" for Objective C, and \"class.member\" for Java.\12        For Objective C, this also produces class methods qualified with\12        their arguments, as in \"foo:bar:baz:more\".\12        For Perl, this produces \"package::member\".\0"
	.align 2
lC154:
	.ascii "-r REGEXP, --regex=REGEXP or --regex=@regexfile\12        Make a tag for each line matching a regular expression pattern\12\11in the following files.  {LANGUAGE}REGEXP uses REGEXP for LANGUAGE\12\11files only.  REGEXFILE is a file containing one REGEXP per line.\12\11REGEXP takes the form /TAGREGEXP/TAGNAME/MODS, where TAGNAME/ is\12\11optional.  The TAGREGEXP pattern is anchored (as if preceded by ^).\0"
	.align 2
lC155:
	.ascii "\11If TAGNAME/ is present, the tags created are named.\12\11For example Tcl named tags can be created with:\12\11  --regex=\"/proc[ \\t]+\\([^ \\t]+\\)/\\1/.\".\12\11MODS are optional one-letter modifiers: 'i' means to ignore case,\12\11'm' means to allow multi-line matches, 's' implies 'm' and\12\11causes dot to match any character, including newline.\0"
	.align 2
lC156:
	.ascii "-R, --no-regex\12        Don't create tags from regexps for the following files.\0"
	.align 2
lC157:
	.ascii "-I, --ignore-indentation\12        In C and C++ do not assume that a closing brace in the first\12        column is the final brace of a function or structure definition.\0"
	.align 2
lC158:
	.ascii "-o FILE, --output=FILE\12        Write the tags to FILE.\0"
	.align 2
lC159:
	.ascii "--parse-stdin=NAME\12        Read from standard input and record tags as belonging to file NAME.\0"
	.align 2
lC160:
	.ascii "-V, --version\12        Print the version of the program.\12-h, --help\12        Print this help message.\12        Followed by one or more '--language' options prints detailed\12        help about tag generation for the specified languages.\0"
	.align 2
lC161:
	.ascii "\12These are the currently supported languages, along with the\12default file names and dot suffixes:\0"
lC162:
	.ascii "  %-*s\0"
lC163:
	.ascii " %s\0"
lC164:
	.ascii " .%s\0"
	.align 2
lC165:
	.ascii "where 'auto' means use default language for files based on file\12name suffix, and 'none' means only do regexp processing on files.\12If no language is specified and no matching suffix is found,\12the first line of the file is read for a sharp-bang (#!) sequence\12followed by the name of an interpreter.  If no such sequence is found,\12Fortran is tried first; if no tags are found, C is tried next.\12When parsing any C file, a \"class\" or \"template\" keyword\12switches to C++.\0"
	.align 2
lC166:
	.ascii "Compressed files are supported using gzip, bzip2, and xz.\12\12For detailed help on a given language use, for example,\12etags --help --lang=ada.\0"
	.align 2
lC167:
	.ascii "Report bugs to bug-gnu-emacs@gnu.org\0"
lC168:
	.ascii "no input files specified.\0"
lC169:
	.ascii "TAGS\0"
lC170:
	.ascii "getcwd\0"
lC171:
	.ascii "/dev/\0"
	.align 2
lC172:
	.ascii "cannot parse standard input AND read file names from it\0"
lC173:
	.ascii "internal error: arg_type\0"
lC174:
	.ascii "\14\12%s,0\12\0"
lC175:
	.ascii "\14\12%s,include\12\0"
	.align 2
lC134:
	.ascii "Copyright (C) 2016 Free Software Foundation, Inc.\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	___x86.get_pc_thunk.bx
L58$pb:
	subl	$136, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, _progname-L58$pb(%ebx)
	movl	8(%ebp), %eax
	sall	$2, %eax
	pushl	%eax
	call	_malloc
	addl	$16, %esp
	movl	%eax, -112(%ebp)
	testl	%eax, %eax
	je	L3672
	movl	8(%ebp), %eax
	subl	$12, %esp
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	pushl	%eax
	call	_malloc
	addl	$16, %esp
	movl	%eax, -104(%ebp)
	testl	%eax, %eax
	je	L3672
	leal	lC3-L58$pb(%ebx), %ecx
	movb	$1, _constantypedefs-L58$pb(%ebx)
	leal	lC128-L58$pb(%ebx), %edx
	movb	$1, _typedefs_or_cplusplus-L58$pb(%ebx)
	leal	lC129-L58$pb(%ebx), %eax
	movb	$1, _typedefs-L58$pb(%ebx)
	movl	$1, _members-L58$pb(%ebx)
	leal	_longopts-L58$pb(%ebx), %esi
	movl	$1, _globals-L58$pb(%ebx)
	call	_concat
	movb	$0, -100(%ebp)
	movl	%eax, -92(%ebp)
	leal	lC132-L58$pb(%ebx), %eax
	movl	$0, -116(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -108(%ebp)
	movl	%eax, -120(%ebp)
	.align 4
L3673:
	subl	$12, %esp
	pushl	$0
	pushl	%esi
	pushl	-92(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	_getopt_long
	addl	$32, %esp
	cmpl	$-1, %eax
	je	L3831
	cmpl	$97, %eax
	je	L3674
	jg	L3675
	cmpl	$72, %eax
	je	L3767
	jg	L3677
	cmpl	$66, %eax
	je	L3673
	jg	L3678
	testl	%eax, %eax
	je	L3673
	cmpl	$1, %eax
	jne	L3680
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %edx
	orl	$-1, %ecx
	imull	$12, -96(%ebp), %eax
	addl	-104(%ebp), %eax
	movl	(%edx), %edi
	movl	$2, (%eax)
	movl	%edi, 8(%eax)
	xorl	%eax, %eax
	repnz; scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	%eax, _whatlen_max-L58$pb(%ebx)
	jge	L3700
	movl	%eax, _whatlen_max-L58$pb(%ebx)
L3700:
	addl	$1, -96(%ebp)
	addl	$1, -116(%ebp)
	jmp	L3673
	.align 4
L3678:
	cmpl	$67, %eax
	je	L3681
	cmpl	$68, %eax
	jne	L3680
	movb	$0, _constantypedefs-L58$pb(%ebx)
	jmp	L3673
	.align 4
L3677:
	cmpl	$82, %eax
	je	L3683
	jle	L3832
	cmpl	$84, %eax
	je	L3687
	jl	L3685
	cmpl	$86, %eax
	jne	L3680
	leal	lC135-L58$pb(%ebx), %eax
	subl	$12, %esp
	movl	$50, %ecx
	leal	lC134-L58$pb(%ebx), %esi
	leal	-76(%ebp), %edi
	rep; movsb
	pushl	%eax
	leal	lC136-L58$pb(%ebx), %eax
	pushl	%eax
	leal	lC137-L58$pb(%ebx), %eax
	pushl	%eax
	leal	lC138-L58$pb(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	___printf_chk
	leal	-76(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	call	_puts
	leal	lC139-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	movl	$0, (%esp)
	call	_exit
	.align 4
L3675:
	cmpl	$108, %eax
	je	L3689
	jle	L3833
	cmpl	$116, %eax
	je	L3829
	jle	L3834
	cmpl	$120, %eax
	jle	L3673
	cmpl	$4097, %eax
	jne	L3680
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %edx
	orl	$-1, %ecx
	imull	$12, -96(%ebp), %eax
	addl	-104(%ebp), %eax
	movl	(%edx), %edi
	movl	$3, (%eax)
	movl	%edi, 8(%eax)
	xorl	%eax, %eax
	repnz; scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	%eax, _whatlen_max-L58$pb(%ebx)
	jl	L3835
L3701:
	addl	$1, -96(%ebp)
	addl	$1, -116(%ebp)
	cmpb	$0, _parsing_stdin-L58$pb(%ebx)
	jne	L3836
	movb	$1, _parsing_stdin-L58$pb(%ebx)
	jmp	L3673
	.align 4
L3834:
	cmpl	$111, %eax
	je	L3691
	cmpl	$114, %eax
	jne	L3680
	leal	l_optarg$non_lazy_ptr-L58$pb(%ebx), %edx
L3698:
	movl	-96(%ebp), %eax
	subl	$12, %esp
	movl	-104(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %ecx
	movl	(%edx), %eax
	movl	$1, (%ecx)
	movl	(%eax), %eax
	movl	%eax, 8(%ecx)
	pushl	%eax
	call	_strlen
	addl	$16, %esp
	cmpl	%eax, _whatlen_max-L58$pb(%ebx)
	jge	L3705
	movl	%eax, _whatlen_max-L58$pb(%ebx)
L3705:
	addl	$1, -96(%ebp)
	jmp	L3673
	.align 4
L3833:
	cmpl	$102, %eax
	je	L3691
	jg	L3692
	cmpl	$99, %eax
	je	L3693
	cmpl	$100, %eax
	jne	L3680
	movb	$1, _constantypedefs-L58$pb(%ebx)
	jmp	L3673
	.align 4
L3832:
	cmpl	$73, %eax
	je	L3685
	cmpl	$81, %eax
	jne	L3680
	movl	$1, _class_qualify-L58$pb(%ebx)
	jmp	L3673
	.align 4
L3692:
	cmpl	$104, %eax
	je	L3767
	cmpl	$105, %eax
	jne	L3680
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	-108(%ebp), %edx
	movl	-112(%ebp), %ecx
	movl	(%eax), %eax
	movl	%eax, (%ecx,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, -108(%ebp)
	jmp	L3673
	.align 4
L3767:
	movb	$1, -100(%ebp)
	jmp	L3673
L3687:
	movb	$1, _typedefs_or_cplusplus-L58$pb(%ebx)
	.align 4
L3829:
	movb	$1, _typedefs-L58$pb(%ebx)
	jmp	L3673
L3691:
	cmpl	$0, _tagfile-L58$pb(%ebx)
	jne	L3837
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, _tagfile-L58$pb(%ebx)
	jmp	L3673
L3680:
	call	_suggest_asking_for_help
L3674:
	movb	$1, _append_to_tagfile-L58$pb(%ebx)
	jmp	L3673
L3689:
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3838
	call	_get_language_from_langname.part.5
	testl	%eax, %eax
	je	L3673
	movl	-96(%ebp), %ecx
	imull	$12, %ecx, %edx
	addl	-104(%ebp), %edx
	addl	$1, %ecx
	movl	%ecx, -96(%ebp)
	movl	%eax, 4(%edx)
	movl	$0, (%edx)
	jmp	L3673
L3685:
	movb	$1, _ignoreindent-L58$pb(%ebx)
	jmp	L3673
L3683:
	movl	-96(%ebp), %edx
	imull	$12, %edx, %eax
	addl	-104(%ebp), %eax
	addl	$1, %edx
	movl	%edx, -96(%ebp)
	movl	$1, (%eax)
	movl	$0, 8(%eax)
	jmp	L3673
L3681:
	movb	$1, _cplusplus-L58$pb(%ebx)
	jmp	L3673
L3693:
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %eax
	leal	lC3-L58$pb(%ebx), %ecx
	leal	lC133-L58$pb(%ebx), %edx
	movl	(%eax), %eax
	call	_concat
	movl	l_optarg$non_lazy_ptr-L58$pb(%ebx), %ecx
	leal	l_optarg$non_lazy_ptr-L58$pb(%ebx), %edx
	movl	%eax, (%ecx)
	jmp	L3698
L3831:
	movl	l_optind$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	(%eax), %edi
	cmpl	%edi, 8(%ebp)
	movl	%edi, -120(%ebp)
	jle	L3707
	movl	-104(%ebp), %eax
	imull	$12, -96(%ebp), %ecx
	leal	(%eax,%ecx), %esi
	leal	_whatlen_max-L58$pb(%ebx), %eax
	movl	%eax, -116(%ebp)
	movl	l_optind$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%eax, %edi
	.align 4
L3709:
	movl	12(%ebp), %eax
	subl	$12, %esp
	movl	$2, (%edi)
	movl	(%eax,%esi,4), %eax
	movl	%eax, 8(%edi)
	pushl	%eax
	call	_strlen
	movl	-116(%ebp), %ecx
	addl	$16, %esp
	cmpl	%eax, (%ecx)
	jge	L3708
	movl	%eax, (%ecx)
L3708:
	movl	-92(%ebp), %eax
	addl	$1, %esi
	addl	$12, %edi
	movl	%esi, (%eax)
	cmpl	8(%ebp), %esi
	jne	L3709
	movl	%esi, %edx
	subl	-120(%ebp), %edx
	addl	%edx, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	-104(%ebp), %edx
	imull	$12, %eax, %eax
	cmpb	$0, -100(%ebp)
	movl	$4, (%edx,%eax)
	je	L3726
L3711:
	leal	lC3-L58$pb(%ebx), %esi
	xorl	%edx, %edx
	movl	-104(%ebp), %edi
	jmp	L3715
L3714:
	movl	4(%edi), %eax
	subl	$12, %esp
	pushl	4(%eax)
	call	_puts
	addl	$16, %esp
	movl	$1, %edx
L3713:
	addl	$12, %edi
L3715:
	movl	(%edi), %eax
	cmpl	$4, %eax
	je	L3839
	testl	%eax, %eax
	jne	L3713
	testb	%dl, %dl
	je	L3714
	subl	$12, %esp
	pushl	%esi
	call	_puts
	addl	$16, %esp
	jmp	L3714
L3835:
	movl	%eax, _whatlen_max-L58$pb(%ebx)
	jmp	L3701
L3726:
	cmpl	$0, _tagfile-L58$pb(%ebx)
	je	L3840
L3727:
	subl	$12, %esp
	pushl	$200
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L3672
	movl	$200, %edi
	jmp	L3728
	.align 4
L3730:
	call	___errno_location
	cmpl	$34, (%eax)
	jne	L3841
	subl	$12, %esp
	addl	%edi, %edi
	pushl	%esi
	call	_free
	movl	%edi, (%esp)
	call	_malloc
	addl	$16, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L3672
L3728:
	subl	$8, %esp
	pushl	%edi
	pushl	%esi
	call	getcwd
	addl	$16, %esp
	testl	%eax, %eax
	je	L3730
	movzbl	(%esi), %edx
	testb	%dl, %dl
	je	L3768
	movl	%esi, %eax
	movl	%esi, %ecx
	jmp	L3735
L3732:
	movb	%dl, (%ecx)
	movl	%eax, %edx
L3733:
	movzbl	1(%edx), %edx
	addl	$1, %eax
	addl	$1, %ecx
	testb	%dl, %dl
	je	L3731
L3735:
	cmpb	$47, %dl
	jne	L3732
	movb	$47, (%ecx)
	cmpb	$47, 1(%eax)
	jne	L3769
	.align 4
L3734:
	addl	$1, %eax
	cmpb	$47, 1(%eax)
	je	L3734
L3769:
	movl	%eax, %edx
	jmp	L3733
L3768:
	movl	%esi, %ecx
L3731:
	movb	$0, (%ecx)
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%esi, %edi
	movl	%esi, _cwd-L58$pb(%ebx)
	repnz; scasb
	movl	%ecx, %eax
	notl	%eax
	cmpb	$47, -2(%esi,%eax)
	jne	L3842
L3736:
	movl	_tagfile-L58$pb(%ebx), %esi
	pushl	%eax
	pushl	%eax
	leal	lC120-L58$pb(%ebx), %eax
	pushl	%eax
	movl	%eax, -100(%ebp)
	pushl	%esi
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L3737
	pushl	%eax
	leal	lC171-L58$pb(%ebx), %eax
	pushl	$5
	pushl	%eax
	pushl	%esi
	call	_strncmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L3737
	movl	%esi, %edx
	jmp	L3738
L3740:
	movb	%al, (%edx)
	leal	1(%esi), %eax
L3742:
	movl	%eax, %esi
	addl	$1, %edx
L3738:
	movzbl	(%esi), %eax
	testb	%al, %al
	je	L3843
	cmpb	$47, %al
	jne	L3740
	movb	$47, (%edx)
	jmp	L3741
L3771:
	movl	%eax, %esi
L3741:
	cmpb	$47, 1(%esi)
	leal	1(%esi), %eax
	je	L3771
	jmp	L3742
L3737:
	movl	_cwd-L58$pb(%ebx), %eax
	movl	%eax, _tagfiledir-L58$pb(%ebx)
L3739:
	leal	_lb-L58$pb(%ebx), %eax
	call	_linebuffer_init
	leal	-76(%ebp), %eax
	movl	%eax, -124(%ebp)
	call	_linebuffer_init
	leal	_filebuf-L58$pb(%ebx), %eax
	call	_linebuffer_init
	leal	_token_name-L58$pb(%ebx), %eax
	call	_linebuffer_init
	movl	_tagfile-L58$pb(%ebx), %esi
	pushl	%eax
	pushl	%eax
	pushl	-100(%ebp)
	pushl	%esi
	call	_strcmp
	addl	$16, %esp
	testl	%eax, %eax
	je	L3844
	cmpb	$0, _append_to_tagfile-L58$pb(%ebx)
	leal	lC126-L58$pb(%ebx), %eax
	je	L3845
L3746:
	pushl	%edi
	pushl	%edi
	pushl	%eax
	pushl	%esi
	call	_fopen
	addl	$16, %esp
	movl	%eax, _tagf-L58$pb(%ebx)
L3745:
	cmpl	$0, _tagf-L58$pb(%ebx)
	je	L3830
	leal	lC120-L58$pb(%ebx), %eax
	xorl	%edi, %edi
	cmpl	$0, -96(%ebp)
	movl	%eax, -128(%ebp)
	movl	-104(%ebp), %esi
	leal	lC173-L58$pb(%ebx), %eax
	movl	%eax, -104(%ebp)
	jne	L3759
	jmp	L3760
L3846:
	subl	$12, %esp
	pushl	-104(%ebp)
	call	_error
	addl	$16, %esp
L3755:
	addl	$1, %edi
	addl	$12, %esi
	cmpl	-96(%ebp), %edi
	je	L3760
L3759:
	movl	(%esi), %eax
	cmpl	$1, %eax
	je	L3750
	testl	%eax, %eax
	je	L3751
	cmpl	$2, %eax
	je	L3752
	cmpl	$3, %eax
	jne	L3846
	movl	l_stdin$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	8(%esi), %edx
	movl	_lang.6302-L58$pb(%ebx), %ecx
	movl	(%eax), %eax
	call	_process_file
	jmp	L3755
L3752:
	movl	8(%esi), %ecx
	pushl	%eax
	pushl	%eax
	pushl	-100(%ebp)
	pushl	%ecx
	movl	%ecx, -92(%ebp)
	call	_strcmp
	addl	$16, %esp
	movl	-92(%ebp), %ecx
	testl	%eax, %eax
	je	L3847
	movl	_lang.6302-L58$pb(%ebx), %edx
	movl	%ecx, %eax
	call	_process_file_name
	jmp	L3755
L3751:
	movl	4(%esi), %eax
	movl	%eax, _lang.6302-L58$pb(%ebx)
	jmp	L3755
L3750:
	movl	8(%esi), %eax
	call	_analyze_regex
	jmp	L3755
L3847:
	cmpb	$0, _parsing_stdin-L58$pb(%ebx)
	jne	L3825
	movl	l_stdin$non_lazy_ptr-L58$pb(%ebx), %eax
	movl	%esi, -116(%ebp)
	movl	%edi, -120(%ebp)
	movl	-124(%ebp), %esi
	movl	-128(%ebp), %edi
	movl	%eax, -92(%ebp)
	jmp	L3757
	.align 4
L3758:
	movl	_lang.6302-L58$pb(%ebx), %edx
	movl	-68(%ebp), %eax
	call	_process_file_name
L3757:
	movl	-92(%ebp), %eax
	movl	%edi, %ecx
	movl	(%eax), %edx
	movl	%esi, %eax
	call	_readline_internal
	testl	%eax, %eax
	jg	L3758
	movl	-116(%ebp), %esi
	movl	-120(%ebp), %edi
	jmp	L3755
L3760:
	call	_free_regexps
	leal	_tagf-L58$pb(%ebx), %esi
	subl	$12, %esp
	pushl	8+_lb-L58$pb(%ebx)
	call	_free
	popl	%edx
	pushl	8+_filebuf-L58$pb(%ebx)
	call	_free
	popl	%ecx
	pushl	8+_token_name-L58$pb(%ebx)
	call	_free
	movl	_nodehead-L58$pb(%ebx), %eax
	call	_put_entries
	movl	_nodehead-L58$pb(%ebx), %eax
	call	_free_tree
	movl	_fdhead-L58$pb(%ebx), %edi
	leal	lC174-L58$pb(%ebx), %eax
	addl	$16, %esp
	movl	$0, _nodehead-L58$pb(%ebx)
	movl	%eax, -92(%ebp)
L3749:
	testl	%edi, %edi
	je	L3848
	cmpb	$0, 29(%edi)
	je	L3849
	movl	(%edi), %edi
	jmp	L3749
L3849:
	pushl	16(%edi)
	pushl	-92(%ebp)
	pushl	$1
	pushl	(%esi)
	call	___fprintf_chk
	addl	$16, %esp
	movl	(%edi), %edi
	jmp	L3749
L3848:
	leal	lC175-L58$pb(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	L3763
L3764:
	movl	-112(%ebp), %ecx
	pushl	(%ecx,%edi,4)
	addl	$1, %edi
	pushl	-92(%ebp)
	pushl	$1
	pushl	%eax
	call	___fprintf_chk
	addl	$16, %esp
L3763:
	movl	(%esi), %eax
	cmpl	%edi, -108(%ebp)
	jne	L3764
	subl	$12, %esp
	pushl	%eax
	call	_fclose
	addl	$16, %esp
	addl	$1, %eax
	je	L3830
L3765:
	subl	$12, %esp
	pushl	$0
	call	_exit
L3839:
	testb	%dl, %dl
	jne	L3765
	movl	_progname-L58$pb(%ebx), %eax
	leal	_lang_names-L58$pb(%ebx), %esi
	pushl	%eax
	pushl	%eax
	leal	lC140-L58$pb(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	___printf_chk
	leal	lC141-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC142-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC143-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC144-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC145-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC146-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC147-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC148-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC149-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC150-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC151-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC152-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC153-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC154-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC155-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC156-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC157-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC158-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC159-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC160-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC161-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	leal	lC3-L58$pb(%ebx), %eax
	addl	$16, %esp
	movl	%eax, -92(%ebp)
	leal	lC162-L58$pb(%ebx), %eax
	movl	%eax, -96(%ebp)
	leal	lC163-L58$pb(%ebx), %eax
	movl	%eax, -104(%ebp)
	jmp	L3718
L3722:
	movl	12(%esi), %edi
	testl	%edi, %edi
	jne	L3850
L3721:
	subl	$12, %esp
	addl	$28, %esi
	pushl	-92(%ebp)
	call	_puts
	addl	$16, %esp
L3718:
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L3851
	pushl	%eax
	pushl	$10
	pushl	-96(%ebp)
	pushl	$1
	call	___printf_chk
	movl	16(%esi), %edi
	addl	$16, %esp
	testl	%edi, %edi
	je	L3722
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L3722
	movl	%esi, -100(%ebp)
	movl	%edi, %esi
	movl	-104(%ebp), %edi
	.align 4
L3723:
	subl	$4, %esp
	addl	$4, %esi
	pushl	%eax
	pushl	%edi
	pushl	$1
	call	___printf_chk
	movl	(%esi), %eax
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3723
	movl	-100(%ebp), %esi
	jmp	L3722
L3842:
	leal	lC3-L58$pb(%ebx), %ecx
	movl	%esi, %eax
	leal	lC4-L58$pb(%ebx), %edx
	call	_concat
	subl	$12, %esp
	pushl	%esi
	movl	%eax, _cwd-L58$pb(%ebx)
	call	_free
	addl	$16, %esp
	jmp	L3736
L3845:
	leal	lC127-L58$pb(%ebx), %eax
	jmp	L3746
L3830:
	movl	_tagfile-L58$pb(%ebx), %eax
	call	_pfatal
L3707:
	imull	$12, -96(%ebp), %eax
	movl	-104(%ebp), %edx
	cmpb	$0, -100(%ebp)
	movl	$4, (%edx,%eax)
	jne	L3711
	movl	-116(%ebp), %eax
	orl	-108(%ebp), %eax
	jne	L3726
	leal	lC168-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_error
	call	_suggest_asking_for_help
L3850:
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L3721
	leal	lC164-L58$pb(%ebx), %ecx
	movl	%esi, -100(%ebp)
	movl	%edi, %esi
	movl	%ecx, %edi
	.align 4
L3724:
	subl	$4, %esp
	addl	$4, %esi
	pushl	%eax
	pushl	%edi
	pushl	$1
	call	___printf_chk
	movl	(%esi), %eax
	addl	$16, %esp
	testl	%eax, %eax
	jne	L3724
	movl	-100(%ebp), %esi
	jmp	L3721
L3851:
	leal	lC165-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_puts
	leal	lC166-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	popl	%eax
	pushl	-92(%ebp)
	call	_puts
	leal	lC167-L58$pb(%ebx), %eax
	movl	%eax, (%esp)
	call	_puts
	movl	$0, (%esp)
	call	_exit
L3844:
	movl	l_stdout$non_lazy_ptr-L58$pb(%ebx), %eax
	subl	$12, %esp
	movl	(%eax), %eax
	pushl	%eax
	movl	%eax, _tagf-L58$pb(%ebx)
	call	_fileno
	addl	$16, %esp
	jmp	L3745
L3838:
	subl	$12, %esp
	pushl	-120(%ebp)
	call	_error
	addl	$16, %esp
	jmp	L3673
L3843:
	movb	$0, (%edx)
	movl	_tagfile-L58$pb(%ebx), %eax
	movl	_cwd-L58$pb(%ebx), %edx
	call	_absolute_dirname
	movl	%eax, _tagfiledir-L58$pb(%ebx)
	jmp	L3739
L3840:
	leal	lC169-L58$pb(%ebx), %eax
	movl	$4, %edx
	call	_savenstr
	movl	%eax, _tagfile-L58$pb(%ebx)
	jmp	L3727
L3837:
	leal	lC131-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_error
	call	_suggest_asking_for_help
L3836:
	leal	lC130-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
L3825:
	leal	lC172-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
L3672:
	leal	lC2-L58$pb(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	_fatal
L3841:
	leal	lC170-L58$pb(%ebx), %eax
	call	_pfatal
	.zerofill __DATA,__bss2,_fdp.6521,4,2
	.const
	.align 5
_emptyfdesc.6420:
	.space 32
	.zerofill __DATA,__bss5,_lc_trans.7591,256,5
	.const
	.align 5
_zeropattern.7569:
	.space 32
	.align 5
_table.5887:
	.space 36
	.byte	1
	.space 27
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 4
	.byte	1
	.space 1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 3
	.byte	1
	.space 129
	.align 5
_table.5891:
	.space 36
	.byte	1
	.space 11
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 7
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 4
	.byte	1
	.space 1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 133
	.align 5
_asso_values.6550:
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	3
	.byte	26
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	27
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	24
	.byte	0
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	0
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	1
	.byte	35
	.byte	16
	.byte	35
	.byte	6
	.byte	23
	.byte	0
	.byte	0
	.byte	35
	.byte	22
	.byte	0
	.byte	35
	.byte	35
	.byte	5
	.byte	0
	.byte	0
	.byte	15
	.byte	1
	.byte	35
	.byte	6
	.byte	35
	.byte	8
	.byte	19
	.byte	35
	.byte	16
	.byte	4
	.byte	5
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.cstring
lC176:
	.ascii "if\0"
lC177:
	.ascii "GTY\0"
lC178:
	.ascii "@end\0"
lC179:
	.ascii "union\0"
lC180:
	.ascii "import\0"
lC181:
	.ascii "template\0"
lC182:
	.ascii "operator\0"
lC183:
	.ascii "@interface\0"
lC184:
	.ascii "implements\0"
lC185:
	.ascii "friend\0"
lC186:
	.ascii "typedef\0"
lC187:
	.ascii "return\0"
lC188:
	.ascii "@implementation\0"
lC189:
	.ascii "@protocol\0"
lC190:
	.ascii "interface\0"
lC191:
	.ascii "extends\0"
lC192:
	.ascii "struct\0"
lC193:
	.ascii "domain\0"
lC194:
	.ascii "switch\0"
lC195:
	.ascii "enum\0"
lC196:
	.ascii "for\0"
lC197:
	.ascii "namespace\0"
lC198:
	.ascii "while\0"
lC199:
	.ascii "undef\0"
lC200:
	.ascii "__attribute__\0"
lC201:
	.ascii "SYSCALL\0"
lC202:
	.ascii "ENTRY\0"
lC203:
	.ascii "PSEUDO\0"
lC204:
	.ascii "DEFUN\0"
	.data
	.align 5
_wordlist.6565:
	.long	lC3
	.space 8
	.long	lC3
	.space 8
	.long	lC176
	.long	0
	.long	5
	.long	lC177
	.long	0
	.long	6
	.long	lC178
	.long	0
	.long	3
	.long	lC179
	.long	0
	.long	11
	.long	lC49
	.long	0
	.long	14
	.long	lC180
	.long	4
	.long	5
	.long	lC181
	.long	0
	.long	10
	.long	lC182
	.long	1
	.long	8
	.long	lC183
	.long	0
	.long	1
	.long	lC184
	.long	4
	.long	7
	.long	lC185
	.long	1
	.long	5
	.long	lC186
	.long	0
	.long	15
	.long	lC187
	.long	0
	.long	5
	.long	lC188
	.long	0
	.long	2
	.long	lC189
	.long	0
	.long	1
	.long	lC190
	.long	4
	.long	11
	.long	lC58
	.long	0
	.long	12
	.long	lC191
	.long	4
	.long	7
	.long	lC192
	.long	0
	.long	11
	.long	lC193
	.long	3
	.long	11
	.long	lC194
	.long	0
	.long	5
	.long	lC195
	.long	0
	.long	13
	.long	lC196
	.long	0
	.long	5
	.long	lC197
	.long	1
	.long	11
	.long	lC45
	.long	0
	.long	9
	.long	lC198
	.long	0
	.long	5
	.long	lC199
	.long	0
	.long	14
	.long	lC57
	.long	4
	.long	5
	.long	lC200
	.long	0
	.long	6
	.long	lC201
	.long	0
	.long	4
	.long	lC202
	.long	0
	.long	4
	.long	lC203
	.long	0
	.long	4
	.long	lC204
	.long	0
	.long	4
	.zerofill __DATA,__bss2,_structbracelev.6702,4,2
	.zerofill __DATA,__bss2,_structtype.6701,4,2
	.zerofill __DATA,__bss2,_toktype.6703,4,2
	.const
	.align 5
_table.5895:
	.byte	1
	.space 8
	.byte	1
	.byte	1
	.space 2
	.byte	1
	.space 18
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 10
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 27
	.byte	1
	.space 1
	.byte	1
	.byte	1
	.space 28
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.space 129
	.align 5
_table.5883:
	.byte	1
	.space 8
	.byte	1
	.byte	1
	.space 1
	.byte	1
	.byte	1
	.space 18
	.byte	1
	.space 7
	.byte	1
	.byte	1
	.space 2
	.byte	1
	.space 14
	.byte	1
	.space 1
	.byte	1
	.space 194
	.static_data
_discard_until_line_directive.7676:
	.space	1
	.zerofill __DATA,__bss2,_lang.6302,4,2
	.zerofill __DATA,__bss2,_TEX_toktab,4,2
	.zerofill __DATA,__bss5,_lbs,32,5
	.zerofill __DATA,__bss2,_cstack,16,2
	.zerofill __DATA,__bss2,_token,24,2
	.zerofill __DATA,__bss2,_objdef,4,2
	.zerofill __DATA,__bss2,_definedef,4,2
	.cstring
lC205:
	.ascii "<uninited>\0"
	.data
	.align 2
_objtag:
	.long	lC205
	.zerofill __DATA,__bss2,_structdef,4,2
	.zerofill __DATA,__bss2,_typdef,4,2
	.static_data
_fvextern:
	.space	1
	.zerofill __DATA,__bss2,_fvdef,4,2
	.static_data
_inattribute:
	.space	1
	.cstring
lC206:
	.ascii "ada\0"
lC207:
	.ascii "c*\0"
lC208:
	.ascii "cobol\0"
lC209:
	.ascii "erlang\0"
lC210:
	.ascii "forth\0"
lC211:
	.ascii "go\0"
lC212:
	.ascii "html\0"
lC213:
	.ascii "java\0"
lC214:
	.ascii "lisp\0"
lC215:
	.ascii "lua\0"
lC216:
	.ascii "makefile\0"
lC217:
	.ascii "objc\0"
lC218:
	.ascii "pascal\0"
lC219:
	.ascii "perl\0"
lC220:
	.ascii "php\0"
lC221:
	.ascii "postscript\0"
lC222:
	.ascii "proc\0"
lC223:
	.ascii "prolog\0"
lC224:
	.ascii "python\0"
lC225:
	.ascii "ruby\0"
lC226:
	.ascii "scheme\0"
lC227:
	.ascii "tex\0"
lC228:
	.ascii "texinfo\0"
lC229:
	.ascii "yacc\0"
lC230:
	.ascii "auto\0"
lC231:
	.ascii "none\0"
	.data
	.align 5
_lang_names:
	.long	lC206
	.long	_Ada_help
	.long	_Ada_funcs
	.long	_Ada_suffixes
	.space 12
	.long	lC31
	.long	_Asm_help
	.long	_Asm_labels
	.long	_Asm_suffixes
	.space 12
	.long	lC117
	.long	_default_C_help
	.long	_default_C_entries
	.long	_default_C_suffixes
	.space 12
	.long	lC116
	.long	_Cplusplus_help
	.long	_Cplusplus_entries
	.long	_Cplusplus_suffixes
	.space 12
	.long	lC207
	.long	_no_lang_help
	.long	_Cstar_entries
	.long	_Cstar_suffixes
	.space 12
	.long	lC208
	.long	_Cobol_help
	.long	_Cobol_paragraphs
	.long	_Cobol_suffixes
	.space 12
	.long	lC209
	.long	_Erlang_help
	.long	_Erlang_functions
	.long	_Erlang_suffixes
	.space 12
	.long	lC210
	.long	_Forth_help
	.long	_Forth_words
	.long	_Forth_suffixes
	.space 12
	.long	lC118
	.long	_Fortran_help
	.long	_Fortran_functions
	.long	_Fortran_suffixes
	.space 12
	.long	lC211
	.long	_Go_help
	.long	_Go_functions
	.long	_Go_suffixes
	.space 12
	.long	lC212
	.long	_HTML_help
	.long	_HTML_labels
	.long	_HTML_suffixes
	.space 12
	.long	lC213
	.long	_Cjava_help
	.long	_Cjava_entries
	.long	_Cjava_suffixes
	.space 12
	.long	lC214
	.long	_Lisp_help
	.long	_Lisp_functions
	.long	_Lisp_suffixes
	.space 12
	.long	lC215
	.long	_Lua_help
	.long	_Lua_functions
	.long	_Lua_suffixes
	.space 12
	.long	lC216
	.long	_Makefile_help
	.long	_Makefile_targets
	.long	0
	.long	_Makefile_filenames
	.space 8
	.long	lC217
	.long	_Objc_help
	.long	_plain_C_entries
	.long	_Objc_suffixes
	.space 12
	.long	lC218
	.long	_Pascal_help
	.long	_Pascal_functions
	.long	_Pascal_suffixes
	.space 12
	.long	lC219
	.long	_Perl_help
	.long	_Perl_functions
	.long	_Perl_suffixes
	.long	0
	.long	_Perl_interpreters
	.space 4
	.long	lC220
	.long	_PHP_help
	.long	_PHP_functions
	.long	_PHP_suffixes
	.space 12
	.long	lC221
	.long	_PS_help
	.long	_PS_functions
	.long	_PS_suffixes
	.space 12
	.long	lC222
	.long	_no_lang_help
	.long	_plain_C_entries
	.long	_plain_C_suffixes
	.space 12
	.long	lC223
	.long	_Prolog_help
	.long	_Prolog_functions
	.long	_Prolog_suffixes
	.space 12
	.long	lC224
	.long	_Python_help
	.long	_Python_functions
	.long	_Python_suffixes
	.space 12
	.long	lC225
	.long	_Ruby_help
	.long	_Ruby_functions
	.long	_Ruby_suffixes
	.long	_Ruby_filenames
	.space 8
	.long	lC226
	.long	_Scheme_help
	.long	_Scheme_functions
	.long	_Scheme_suffixes
	.space 12
	.long	lC227
	.long	_TeX_help
	.long	_TeX_commands
	.long	_TeX_suffixes
	.space 12
	.long	lC228
	.long	_Texinfo_help
	.long	_Texinfo_nodes
	.long	_Texinfo_suffixes
	.space 12
	.long	lC229
	.long	_Yacc_help
	.long	_Yacc_entries
	.long	_Yacc_suffixes
	.long	0
	.long	0
	.byte	1
	.space 3
	.long	lC230
	.long	_auto_help
	.space 20
	.long	lC231
	.long	_none_help
	.long	_just_read_file
	.space 16
	.long	0
	.space 24
	.const
	.align 5
_no_lang_help:
	.ascii "No detailed help available for this language.\0"
	.align 5
_none_help:
	.ascii "'none' is not a real language, it indicates to only do\12regexp processing on files.\0"
	.align 5
_auto_help:
	.ascii "'auto' is not a real language, it indicates to use\12a default language for files base on file name suffix and file contents.\0"
	.align 5
_Yacc_help:
	.ascii "In Bison or Yacc input files, each rule defines as a tag the\12nonterminal it constructs.  The portions of the file that contain\12C code are parsed as C code (use --help --lang=c --lang=yacc\12for full help).\0"
	.cstring
lC232:
	.ascii "y\0"
lC233:
	.ascii "y++\0"
lC234:
	.ascii "ym\0"
lC235:
	.ascii "yxx\0"
lC236:
	.ascii "yy\0"
	.data
	.align 2
_Yacc_suffixes:
	.long	lC232
	.long	lC233
	.long	lC234
	.long	lC235
	.long	lC236
	.long	0
	.const
	.align 5
_Texinfo_help:
	.ascii "for texinfo files, lines starting with @node are tagged.\0"
	.cstring
lC237:
	.ascii "texi\0"
lC238:
	.ascii "txi\0"
	.data
	.align 2
_Texinfo_suffixes:
	.long	lC237
	.long	lC228
	.long	lC238
	.long	0
	.const
	.align 5
_TeX_help:
	.ascii "In LaTeX text, the argument of any of the commands '\\chapter',\12'\\section', '\\subsection', '\\subsubsection', '\\eqno', '\\label',\12'\\ref', '\\cite', '\\bibitem', '\\part', '\\appendix', '\\entry',\12'\\index', '\\def', '\\newcommand', '\\renewcommand',\12'\\newenvironment' or '\\renewenvironment' is a tag.\12\12Other commands can be specified by setting the environment variable\12'TEXTAGS' to a colon-separated list like, for example,\12     TEXTAGS=\"mycommand:myothercommand\".\0"
	.cstring
lC239:
	.ascii "bib\0"
lC240:
	.ascii "clo\0"
lC241:
	.ascii "cls\0"
lC242:
	.ascii "ltx\0"
lC243:
	.ascii "sty\0"
lC244:
	.ascii "TeX\0"
	.data
	.align 5
_TeX_suffixes:
	.long	lC239
	.long	lC240
	.long	lC241
	.long	lC242
	.long	lC243
	.long	lC244
	.long	lC227
	.long	0
	.const
	.align 5
_Scheme_help:
	.ascii "In Scheme code, tags include anything defined with 'def' or with a\12construct whose name starts with 'def'.  They also include\12variables set with 'set!' at top level in the file.\0"
	.cstring
lC245:
	.ascii "oak\0"
lC246:
	.ascii "sch\0"
lC247:
	.ascii "SCM\0"
lC248:
	.ascii "scm\0"
lC249:
	.ascii "SM\0"
lC250:
	.ascii "sm\0"
lC251:
	.ascii "ss\0"
lC252:
	.ascii "t\0"
	.data
	.align 5
_Scheme_suffixes:
	.long	lC245
	.long	lC246
	.long	lC226
	.long	lC247
	.long	lC248
	.long	lC249
	.long	lC250
	.long	lC251
	.long	lC252
	.long	0
	.const
	.align 5
_Ruby_help:
	.ascii "In Ruby code, 'def' or 'class' or 'module' at the beginning of\12a line generate a tag.  Constants also generate a tag.\0"
	.cstring
lC253:
	.ascii "Rakefile\0"
lC254:
	.ascii "Thorfile\0"
	.data
	.align 2
_Ruby_filenames:
	.long	lC253
	.long	lC254
	.long	0
	.cstring
lC255:
	.ascii "rb\0"
lC256:
	.ascii "ru\0"
lC257:
	.ascii "rbw\0"
	.data
	.align 2
_Ruby_suffixes:
	.long	lC255
	.long	lC256
	.long	lC257
	.long	0
	.const
	.align 5
_Python_help:
	.ascii "In Python code, 'def' or 'class' at the beginning of a line\12generate a tag.\0"
	.cstring
lC258:
	.ascii "py\0"
	.data
	.align 2
_Python_suffixes:
	.long	lC258
	.long	0
	.const
	.align 5
_Prolog_help:
	.ascii "In Prolog code, tags are predicates and rules at the beginning of\12line.\0"
	.data
	.align 2
_Prolog_suffixes:
	.long	lC223
	.long	0
	.const
	.align 5
_PS_help:
	.ascii "In PostScript code, the tags are the functions.\0"
	.cstring
lC259:
	.ascii "ps\0"
lC260:
	.ascii "psw\0"
	.data
	.align 2
_PS_suffixes:
	.long	lC259
	.long	lC260
	.long	0
	.cstring
lC261:
	.ascii "pc\0"
	.data
	.align 2
_plain_C_suffixes:
	.long	lC261
	.long	0
	.const
	.align 5
_PHP_help:
	.ascii "In PHP code, tags are functions, classes and defines.  Unless you use\12the '--no-members' option, vars are tags too.\0"
	.cstring
lC262:
	.ascii "php3\0"
lC263:
	.ascii "php4\0"
	.data
	.align 2
_PHP_suffixes:
	.long	lC220
	.long	lC262
	.long	lC263
	.long	0
	.const
	.align 5
_Perl_help:
	.ascii "In Perl code, the tags are the packages, subroutines and variables\12defined by the 'package', 'sub', 'my' and 'local' keywords.  Use\12'--globals' if you want to tag global variables.  Tags for\12subroutines are named 'PACKAGE::SUB'.  The name for subroutines\12defined in the default package is 'main::SUB'.\0"
	.cstring
lC264:
	.ascii "@PERL@\0"
	.data
	.align 2
_Perl_interpreters:
	.long	lC219
	.long	lC264
	.long	0
	.cstring
lC265:
	.ascii "pl\0"
lC266:
	.ascii "pm\0"
	.data
	.align 2
_Perl_suffixes:
	.long	lC265
	.long	lC266
	.long	0
	.const
	.align 5
_Pascal_help:
	.ascii "In Pascal code, the tags are the functions and procedures defined\12in the file.\0"
	.cstring
lC267:
	.ascii "p\0"
lC268:
	.ascii "pas\0"
	.data
	.align 2
_Pascal_suffixes:
	.long	lC267
	.long	lC268
	.long	0
	.const
	.align 5
_Objc_help:
	.ascii "In Objective C code, tags include Objective C definitions for classes,\12class categories, methods and protocols.  Tags for variables and\12functions in classes are named 'CLASS::VARIABLE' and 'CLASS::FUNCTION'.\12(Use --help --lang=c --lang=objc --lang=java for full help.)\0"
	.cstring
lC269:
	.ascii "lm\0"
lC270:
	.ascii "m\0"
	.data
	.align 2
_Objc_suffixes:
	.long	lC269
	.long	lC270
	.long	0
	.const
	.align 5
_Makefile_help:
	.ascii "In makefiles, targets are tags; additionally, variables are tags\12unless you specify '--no-globals'.\0"
	.cstring
lC271:
	.ascii "Makefile\0"
lC272:
	.ascii "GNUMakefile\0"
lC273:
	.ascii "Makefile.in\0"
lC274:
	.ascii "Makefile.am\0"
	.data
	.align 2
_Makefile_filenames:
	.long	lC271
	.long	lC216
	.long	lC272
	.long	lC273
	.long	lC274
	.long	0
	.const
	.align 5
_Lua_help:
	.ascii "In Lua scripts, all functions are tags.\0"
	.cstring
lC275:
	.ascii "LUA\0"
	.data
	.align 2
_Lua_suffixes:
	.long	lC215
	.long	lC275
	.long	0
	.const
	.align 5
_Lisp_help:
	.ascii "In Lisp code, any function defined with 'defun', any variable\12defined with 'defvar' or 'defconst', and in general the first\12argument of any expression that starts with '(def' in column zero\12is a tag.\12The '--declarations' option tags \"(defvar foo)\" constructs too.\0"
	.cstring
lC276:
	.ascii "cl\0"
lC277:
	.ascii "clisp\0"
lC278:
	.ascii "el\0"
lC279:
	.ascii "l\0"
lC280:
	.ascii "LSP\0"
lC281:
	.ascii "lsp\0"
lC282:
	.ascii "ml\0"
	.data
	.align 5
_Lisp_suffixes:
	.long	lC276
	.long	lC277
	.long	lC278
	.long	lC279
	.long	lC214
	.long	lC280
	.long	lC281
	.long	lC282
	.long	0
	.const
	.align 5
_HTML_help:
	.ascii "In HTML input files, the tags are the 'title' and the 'h1', 'h2',\12'h3' headers.  Also, tags are 'name=' in anchors and all\12occurrences of 'id='.\0"
	.cstring
lC283:
	.ascii "htm\0"
lC284:
	.ascii "shtml\0"
	.data
	.align 2
_HTML_suffixes:
	.long	lC283
	.long	lC212
	.long	lC284
	.long	0
	.const
	.align 5
_Go_help:
	.ascii "In Go code, functions, interfaces and packages are tags.\0"
	.data
	.align 2
_Go_suffixes:
	.long	lC211
	.long	0
	.const
	.align 5
_Fortran_help:
	.ascii "In Fortran code, functions, subroutines and block data are tags.\0"
	.cstring
lC285:
	.ascii "F\0"
lC286:
	.ascii "f\0"
lC287:
	.ascii "f90\0"
	.data
	.align 2
_Fortran_suffixes:
	.long	lC285
	.long	lC286
	.long	lC287
	.long	lC196
	.long	0
	.const
	.align 5
_Forth_help:
	.ascii "In Forth code, tags are words defined by ':',\12constant, code, create, defer, value, variable, buffer:, field.\0"
	.globl _Forth_suffixes
	.cstring
lC288:
	.ascii "fth\0"
lC289:
	.ascii "tok\0"
	.data
	.align 2
_Forth_suffixes:
	.long	lC288
	.long	lC289
	.long	0
	.const
	.align 5
_Erlang_help:
	.ascii "In Erlang code, the tags are the functions, records and macros\12defined in the file.\0"
	.cstring
lC290:
	.ascii "erl\0"
lC291:
	.ascii "hrl\0"
	.data
	.align 2
_Erlang_suffixes:
	.long	lC290
	.long	lC291
	.long	0
	.cstring
lC292:
	.ascii "cs\0"
lC293:
	.ascii "hs\0"
	.data
	.align 2
_Cstar_suffixes:
	.long	lC292
	.long	lC293
	.long	0
	.align 5
_Cobol_help:
	.ascii "In Cobol code, tags are paragraph names; that is, any word\12starting in column 8 and followed by a period.\0"
	.cstring
lC294:
	.ascii "COB\0"
lC295:
	.ascii "cob\0"
	.data
	.align 2
_Cobol_suffixes:
	.long	lC294
	.long	lC295
	.long	0
	.align 5
_Cjava_help:
	.ascii "In Java code, all the tags constructs of C and C++ code are\12tagged.  (Use --help --lang=c --lang=c++ --lang=java for full help.)\0"
	.align 2
_Cjava_suffixes:
	.long	lC213
	.long	0
	.const
	.align 5
_Cplusplus_help:
	.ascii "In C++ code, all the tag constructs of C code are tagged.  (Use\12--help --lang=c --lang=c++ for full help.)\12In addition to C tags, member functions are also recognized.  Member\12variables are recognized unless you use the '--no-members' option.\12Tags for variables and functions in classes are named 'CLASS::VARIABLE'\12and 'CLASS::FUNCTION'.  'operator' definitions have tag names like\12'operator+'.\0"
	.cstring
lC296:
	.ascii "C\0"
lC297:
	.ascii "cc\0"
lC298:
	.ascii "cpp\0"
lC299:
	.ascii "cxx\0"
lC300:
	.ascii "H\0"
lC301:
	.ascii "h++\0"
lC302:
	.ascii "hh\0"
lC303:
	.ascii "hpp\0"
lC304:
	.ascii "hxx\0"
lC305:
	.ascii "M\0"
lC306:
	.ascii "pdb\0"
	.data
	.align 5
_Cplusplus_suffixes:
	.long	lC296
	.long	lC116
	.long	lC297
	.long	lC298
	.long	lC299
	.long	lC300
	.long	lC301
	.long	lC302
	.long	lC303
	.long	lC304
	.long	lC305
	.long	lC306
	.long	0
	.const
	.align 5
_default_C_help:
	.ascii "In C code, any C function or typedef is a tag, and so are\12definitions of 'struct', 'union' and 'enum'.  '#define' macro\12definitions and 'enum' constants are tags unless you specify\12'--no-defines'.  Global variables are tags unless you specify\12'--no-globals' and so are struct members unless you specify\12'--no-members'.  Use of '--no-globals', '--no-defines' and\12'--no-members' can make the tags table file much smaller.\12You can tag function declarations and external variables by\12using '--declarations'.\0"
	.cstring
lC307:
	.ascii "h\0"
	.data
	.align 2
_default_C_suffixes:
	.long	lC117
	.long	lC307
	.long	0
	.const
	.align 5
_Asm_help:
	.ascii "In assembler code, labels appearing at the beginning of a line,\12followed by a colon, are tags.\0"
	.cstring
lC308:
	.ascii "a\0"
lC309:
	.ascii "inc\0"
lC310:
	.ascii "ins\0"
lC311:
	.ascii "s\0"
lC312:
	.ascii "sa\0"
lC313:
	.ascii "S\0"
lC314:
	.ascii "src\0"
	.data
	.align 5
_Asm_suffixes:
	.long	lC308
	.long	lC31
	.long	lC46
	.long	lC309
	.long	lC310
	.long	lC311
	.long	lC312
	.long	lC313
	.long	lC314
	.long	0
	.const
	.align 5
_Ada_help:
	.ascii "In Ada code, functions, procedures, packages, tasks and types are\12tags.  Use the '--packages-only' option to create tags for\12packages only.\12Ada tag names have suffixes indicating the type of entity:\12\11Entity type:\11Qualifier:\12\11------------\11----------\12\11function\11/f\12\11procedure\11/p\12\11package spec\11/s\12\11package body\11/b\12\11type\11\11/t\12\11task\11\11/k\12Thus, 'M-x find-tag <RET> bidule/b <RET>' will go directly to the\12body of the package 'bidule', while 'M-x find-tag <RET> bidule <RET>'\12will just search for any tag 'bidule'.\0"
	.cstring
lC315:
	.ascii "ads\0"
lC316:
	.ascii "adb\0"
	.data
	.align 2
_Ada_suffixes:
	.long	lC315
	.long	lC316
	.long	lC206
	.long	0
	.cstring
lC317:
	.ascii "z\0"
lC318:
	.ascii "gzip -d -c\0"
lC319:
	.ascii "Z\0"
lC320:
	.ascii "gz\0"
lC321:
	.ascii "GZ\0"
lC322:
	.ascii "bz2\0"
lC323:
	.ascii "bzip2 -d -c\0"
lC324:
	.ascii "xz\0"
lC325:
	.ascii "xz -d -c\0"
	.data
	.align 5
_compressors:
	.long	lC317
	.long	lC318
	.long	lC319
	.long	lC318
	.long	lC320
	.long	lC318
	.long	lC321
	.long	lC318
	.long	lC322
	.long	lC323
	.long	lC324
	.long	lC325
	.long	0
	.space 4
	.cstring
lC326:
	.ascii "append\0"
lC327:
	.ascii "packages-only\0"
lC328:
	.ascii "declarations\0"
lC329:
	.ascii "no-line-directive\0"
lC330:
	.ascii "no-duplicates\0"
lC331:
	.ascii "help\0"
lC332:
	.ascii "ignore-indentation\0"
lC333:
	.ascii "language\0"
lC334:
	.ascii "members\0"
lC335:
	.ascii "no-members\0"
lC336:
	.ascii "output\0"
lC337:
	.ascii "class-qualify\0"
lC338:
	.ascii "regex\0"
lC339:
	.ascii "no-regex\0"
lC340:
	.ascii "ignore-case-regex\0"
lC341:
	.ascii "parse-stdin\0"
lC342:
	.ascii "version\0"
lC343:
	.ascii "no-defines\0"
lC344:
	.ascii "no-globals\0"
lC345:
	.ascii "include\0"
	.data
	.align 5
_longopts:
	.long	lC326
	.long	0
	.long	0
	.long	97
	.long	lC327
	.long	0
	.long	_packages_only
	.long	1
	.long	lC116
	.long	0
	.long	0
	.long	67
	.long	lC328
	.long	0
	.long	_declarations
	.long	1
	.long	lC329
	.long	0
	.long	_no_line_directive
	.long	1
	.long	lC330
	.long	0
	.long	_no_duplicates
	.long	1
	.long	lC331
	.long	0
	.long	0
	.long	104
	.long	lC331
	.long	0
	.long	0
	.long	72
	.long	lC332
	.long	0
	.long	0
	.long	73
	.long	lC333
	.long	1
	.long	0
	.long	108
	.long	lC334
	.long	0
	.long	_members
	.long	1
	.long	lC335
	.long	0
	.long	_members
	.long	0
	.long	lC336
	.long	1
	.long	0
	.long	111
	.long	lC337
	.long	0
	.long	_class_qualify
	.long	81
	.long	lC338
	.long	1
	.long	0
	.long	114
	.long	lC339
	.long	0
	.long	0
	.long	82
	.long	lC340
	.long	1
	.long	0
	.long	99
	.long	lC341
	.long	1
	.long	0
	.long	4097
	.long	lC342
	.long	0
	.long	0
	.long	86
	.long	lC343
	.long	0
	.long	0
	.long	68
	.long	lC344
	.long	0
	.long	_globals
	.long	0
	.long	lC345
	.long	1
	.long	0
	.long	105
	.long	0
	.space 12
	.static_data
_need_filebuf:
	.space	1
	.zerofill __DATA,__bss2,_p_head,4,2
	.static_data
_parsing_stdin:
	.space	1
	.zerofill __DATA,__bss2,_class_qualify,4,2
	.zerofill __DATA,__bss2,_packages_only,4,2
	.static_data
_ignoreindent:
	.space	1
	.static_data
_cplusplus:
	.space	1
	.zerofill __DATA,__bss2,_no_duplicates,4,2
	.zerofill __DATA,__bss2,_no_line_directive,4,2
	.zerofill __DATA,__bss2,_declarations,4,2
	.zerofill __DATA,__bss2,_members,4,2
	.zerofill __DATA,__bss2,_globals,4,2
	.static_data
_constantypedefs:
	.space	1
	.static_data
_typedefs_or_cplusplus:
	.space	1
	.static_data
_typedefs:
	.space	1
	.static_data
_append_to_tagfile:
	.space	1
	.zerofill __DATA,__bss2,_token_name,12,2
	.zerofill __DATA,__bss2,_filebuf,12,2
	.zerofill __DATA,__bss2,_lb,12,2
	.zerofill __DATA,__bss2,_last_node,4,2
	.zerofill __DATA,__bss2,_nodehead,4,2
	.zerofill __DATA,__bss2,_dbp,4,2
	.zerofill __DATA,__bss2,_linecharno,4,2
	.zerofill __DATA,__bss2,_charno,4,2
	.zerofill __DATA,__bss2,_lineno,4,2
	.zerofill __DATA,__bss2,_infilename,4,2
	.zerofill __DATA,__bss2,_curfdp,4,2
	.zerofill __DATA,__bss2,_fdhead,4,2
	.zerofill __DATA,__bss2,_whatlen_max,4,2
	.zerofill __DATA,__bss2,_tagf,4,2
	.zerofill __DATA,__bss2,_tagfiledir,4,2
	.zerofill __DATA,__bss2,_cwd,4,2
	.zerofill __DATA,__bss2,_progname,4,2
	.zerofill __DATA,__bss2,_tagfile,4,2
	.globl _pot_etags_version
	.data
	.align 5
_pot_etags_version:
	.ascii "@(#) pot revision number is 17.38.1.4\0"
	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.weak_definition	___x86.get_pc_thunk.ax
	.private_extern	___x86.get_pc_thunk.ax
___x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.weak_definition	___x86.get_pc_thunk.dx
	.private_extern	___x86.get_pc_thunk.dx
___x86.get_pc_thunk.dx:
	movl	(%esp), %edx
	ret
	.weak_definition	___x86.get_pc_thunk.cx
	.private_extern	___x86.get_pc_thunk.cx
___x86.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.weak_definition	___x86.get_pc_thunk.bx
	.private_extern	___x86.get_pc_thunk.bx
___x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.weak_definition	___x86.get_pc_thunk.si
	.private_extern	___x86.get_pc_thunk.si
___x86.get_pc_thunk.si:
	movl	(%esp), %esi
	ret
	.weak_definition	___x86.get_pc_thunk.di
	.private_extern	___x86.get_pc_thunk.di
___x86.get_pc_thunk.di:
	movl	(%esp), %edi
	ret
	.section __IMPORT,__pointers,non_lazy_symbol_pointers
l_stdin$non_lazy_ptr:
	.indirect_symbol _stdin
	.long	0
l_stderr$non_lazy_ptr:
	.indirect_symbol _stderr
	.long	0
l_optind$non_lazy_ptr:
	.indirect_symbol _optind
	.long	0
l_optarg$non_lazy_ptr:
	.indirect_symbol _optarg
	.long	0
l_stdout$non_lazy_ptr:
	.indirect_symbol _stdout
	.long	0
	.subsections_via_symbols
