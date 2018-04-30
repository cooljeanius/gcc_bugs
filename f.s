	.text
	.align 4,0x90
	.globl _Fframe_windows_min_size
_Fframe_windows_min_size:
LFB912:
	movl	$2, %eax
	ret
LFE912:
	.align 4,0x90
	.globl _Fselected_frame
_Fselected_frame:
LFB927:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	ret
LFE927:
	.align 4,0x90
	.globl _Flast_nonminibuf_frame
_Flast_nonminibuf_frame:
LFB937:
	movq	_last_nonminibuf_frame(%rip), %rdx
	leaq	5(%rdx), %rax
	testq	%rdx, %rdx
	movl	$0, %edx
	cmove	%rdx, %rax
	ret
LFE937:
	.align 4,0x90
	.globl _Fvisible_frame_list
_Fvisible_frame_list:
LFB954:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%eax, %eax
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L18
	pushq	%rbx
LCFI0:
	jmp	L8
	.align 4,0x90
L11:
	movq	8(%rbx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L7
L8:
	movq	-3(%rdx), %rdi
	leaq	-3(%rdx), %rbx
	testb	$12, 212(%rdi)
	je	L11
	movq	%rax, %rsi
	call	_Fcons
	movq	8(%rbx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L8
L7:
	popq	%rbx
LCFI1:
	ret
	.align 4,0x90
L18:
LCFI2:
	ret
LFE954:
	.align 4,0x90
_get_future_frame_param:
LFB922:
	pushq	%rbp
LCFI3:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI4:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI5:
	call	_Fassq
	testq	%rax, %rax
	je	L39
L20:
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$4, %edx
	je	L19
	movq	5(%rax), %rax
	testq	%rax, %rax
	je	L21
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$4, %edx
	jne	L21
L19:
	addq	$8, %rsp
LCFI6:
	popq	%rbx
LCFI7:
	popq	%rbp
LCFI8:
	ret
	.align 4,0x90
L39:
LCFI9:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movq	(%rax), %rax
	movq	67(%rax), %rsi
	call	_Fassq
	testq	%rax, %rax
	jne	L20
	testq	%rbp, %rbp
	je	L21
	movq	%rbp, %rdi
	call	_strlen
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	_make_string
	testq	%rax, %rax
	jne	L20
L21:
	addq	$8, %rsp
LCFI10:
	xorl	%eax, %eax
	popq	%rbx
LCFI11:
	popq	%rbp
LCFI12:
	ret
LFE922:
	.align 4,0x90
	.globl _Fframe_list
_Fframe_list:
LFB928:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	xorl	%eax, %eax
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L52
	pushq	%rbx
LCFI13:
	jmp	L41
	.align 4,0x90
L43:
	movq	8(%rbx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L42
L41:
	movq	-3(%rdx), %rdi
	leaq	-3(%rdx), %rbx
	testb	$4, 214(%rdi)
	jne	L43
	movq	%rax, %rsi
	call	_Fcons
	movq	8(%rbx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L41
L42:
	popq	%rbx
LCFI14:
	movq	%rax, %rdi
	jmp	_Fnreverse
	.align 4,0x90
L52:
	movq	%rax, %rdi
	jmp	_Fnreverse
LFE928:
	.align 4,0x90
_frame_float:
LFB992:
	movsd	-7(%rsi), %xmm2
	pxor	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	ja	L105
	ucomisd	lC1(%rip), %xmm2
	jbe	L113
L105:
	movl	%r9d, %eax
	ret
	.align 4,0x90
L113:
	pushq	%r14
LCFI15:
	pushq	%r13
LCFI16:
	pushq	%r12
LCFI17:
	pushq	%rbp
LCFI18:
	movl	%edx, %ebp
	pushq	%rbx
LCFI19:
	movq	%rdi, %rbx
	subq	$32, %rsp
LCFI20:
	movq	32(%rdi), %rax
	movl	(%rcx), %edx
	testq	%rax, %rax
	je	L114
	leaq	-5(%rax), %r12
	cmpl	$1, %edx
	je	L59
	testq	%r12, %r12
	je	L60
	movl	320(%r12), %eax
	movl	%eax, _parent_width.77364(%rip)
	movl	324(%r12), %eax
	movl	$1, (%rcx)
	movl	%eax, _parent_height.77365(%rip)
L59:
	movl	(%r8), %eax
	cmpl	$1, %eax
	je	L63
	testb	$8, 220(%rbx)
	jne	L65
	testl	%eax, %eax
	je	L108
	cmpl	$-1, %eax
	jne	L63
	leaq	5(%rbx), %rsi
	movl	$40176, %edx
	movl	$25440, %edi
	movq	%r8, 8(%rsp)
	movsd	%xmm2, (%rsp)
	call	_call2
	movsd	(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, %r14
	movq	8(%rsp), %r8
	je	L65
	movq	%rax, %rsi
	movl	$10, %edi
	call	_Fnth
	movq	%r14, %rsi
	movl	$2, %edi
	movq	%rax, %r13
	call	_Fnth
	sarq	$2, %r13
	movq	%r14, %rsi
	sarq	$2, %rax
	movl	%r13d, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	subl	296(%rbx), %eax
	movl	$14, %edi
	movl	%eax, _outer_minus_text_width.77368(%rip)
	call	_Fnth
	movl	$6, %edi
	movq	%r14, %rsi
	movq	%rax, %r13
	call	_Fnth
	sarq	$2, %r13
	movsd	(%rsp), %xmm2
	sarq	$2, %rax
	movl	%r13d, %edi
	movq	8(%rsp), %r8
	subl	%eax, %edi
	movl	%edi, %eax
	subl	300(%rbx), %eax
	movl	%eax, _outer_minus_text_height.77369(%rip)
	jmp	L66
	.align 4,0x90
L114:
	cmpl	$1, %edx
	je	L115
L60:
	testl	%edx, %edx
	je	L108
	xorl	%r12d, %r12d
	cmpl	$-1, %edx
	jne	L59
	leaq	5(%rbx), %rsi
	movl	$19776, %edi
	movl	%r9d, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movsd	%xmm2, (%rsp)
	call	_call1
	movq	%rax, %rdi
	call	_Fcar
	movsd	(%rsp), %xmm2
	testq	%rax, %rax
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r8
	movl	24(%rsp), %r9d
	je	L62
	movq	%rax, %rsi
	movl	$56592, %edi
	movl	%r9d, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%r8, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	call	_Fassq
	movq	%rax, %rdi
	call	_Fcdr
	movq	(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, %r13
	movl	8(%rsp), %r9d
	je	L62
	movq	%rax, %rsi
	movl	$2, %edi
	call	_Fnth
	movq	%r13, %rsi
	movl	$6, %edi
	sarq	$2, %rax
	movl	%eax, _parent_left.77366(%rip)
	call	_Fnth
	movq	%r13, %rsi
	movl	$10, %edi
	sarq	$2, %rax
	movl	%eax, _parent_top.77367(%rip)
	call	_Fnth
	movq	%r13, %rsi
	movl	$14, %edi
	sarq	$2, %rax
	movl	%eax, _parent_width.77364(%rip)
	call	_Fnth
	movq	(%rsp), %rcx
	sarq	$2, %rax
	movl	8(%rsp), %r9d
	movl	%eax, _parent_height.77365(%rip)
	movsd	16(%rsp), %xmm2
	movq	24(%rsp), %r8
	movl	$1, (%rcx)
	jmp	L59
L62:
	movl	$0, (%rcx)
	.align 4,0x90
L108:
	movl	%r9d, %eax
L53:
	addq	$32, %rsp
LCFI21:
	popq	%rbx
LCFI22:
	popq	%rbp
LCFI23:
	popq	%r12
LCFI24:
	popq	%r13
LCFI25:
	popq	%r14
LCFI26:
	ret
	.align 4,0x90
L65:
LCFI27:
	movl	320(%rbx), %eax
	subl	296(%rbx), %eax
	movl	%eax, _outer_minus_text_width.77368(%rip)
	movl	324(%rbx), %eax
	subl	300(%rbx), %eax
	movl	%eax, _outer_minus_text_height.77369(%rip)
L66:
	movl	$1, (%r8)
L63:
	cmpl	$2, %ebp
	je	L68
	cmpl	$3, %ebp
	je	L69
	cmpl	$1, %ebp
	je	L70
	movl	_parent_width.77364(%rip), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm0
	movl	_outer_minus_text_width.77368(%rip), %eax
	mulsd	%xmm2, %xmm0
	cvtsi2sdq	%rax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	jmp	L53
	.align 4,0x90
L70:
	movl	_parent_height.77365(%rip), %eax
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm1
	movl	_outer_minus_text_height.77369(%rip), %eax
	mulsd	%xmm2, %xmm1
	cvtsi2sdq	%rax, %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	jmp	L53
	.align 4,0x90
L69:
	movl	_parent_height.77365(%rip), %edx
	subl	300(%rbx), %edx
	subl	_outer_minus_text_height.77369(%rip), %edx
	testq	%r12, %r12
	je	L80
L112:
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	L53
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	jmp	L53
	.align 4,0x90
L68:
	movl	_parent_width.77364(%rip), %edx
	subl	296(%rbx), %edx
	subl	_outer_minus_text_width.77368(%rip), %edx
	testq	%r12, %r12
	jne	L112
	testl	%edx, %edx
	movl	_parent_left.77366(%rip), %eax
	jg	L110
	jmp	L53
	.align 4,0x90
L80:
	testl	%edx, %edx
	movl	_parent_top.77367(%rip), %eax
	jle	L53
L110:
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	mulsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	jmp	L53
	.align 4,0x90
L115:
	xorl	%r12d, %r12d
	jmp	L59
LFE992:
	.align 4,0x90
	.globl _Fx_parse_geometry
_Fx_parse_geometry:
LFB1025:
	movl	%edi, %eax
	pushq	%rbp
LCFI28:
	andl	$7, %eax
	pushq	%rbx
LCFI29:
	subq	$24, %rsp
LCFI30:
	cmpl	$4, %eax
	jne	L142
	movq	20(%rdi), %rdi
	leaq	8(%rsp), %rcx
	movq	%rsp, %rsi
	xorl	%ebp, %ebp
	leaq	4(%rsp), %rdx
	leaq	12(%rsp), %r8
	call	_XParseGeometry
	testb	$1, %al
	movl	%eax, %ebx
	je	L118
	movslq	(%rsp), %rax
	movl	%ebx, %ecx
	andl	$16, %ecx
	testl	%eax, %eax
	js	L119
	leaq	2(,%rax,4), %rsi
	testl	%ecx, %ecx
	jne	L143
L122:
	movl	$33408, %edi
	call	_Fcons
	movq	%rax, %rdi
L121:
	xorl	%esi, %esi
	call	_Fcons
	movq	%rax, %rbp
L118:
	testb	$2, %bl
	je	L123
	movslq	4(%rsp), %rax
	movl	%ebx, %ecx
	andl	$32, %ecx
	testl	%eax, %eax
	js	L124
	leaq	2(,%rax,4), %rsi
	testl	%ecx, %ecx
	jne	L144
L127:
	movl	$50784, %edi
	call	_Fcons
	movq	%rax, %rdi
L126:
	movq	%rbp, %rsi
	call	_Fcons
	movq	%rax, %rbp
L123:
	testb	$4, %bl
	jne	L145
L128:
	andl	$8, %ebx
	je	L116
	movl	12(%rsp), %eax
	movl	$28512, %edi
	leaq	2(,%rax,4), %rsi
	call	_Fcons
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%rax, %rbp
L116:
	addq	$24, %rsp
LCFI31:
	movq	%rbp, %rax
	popq	%rbx
LCFI32:
	popq	%rbp
LCFI33:
	ret
	.align 4,0x90
L145:
LCFI34:
	movl	8(%rsp), %eax
	movl	$55584, %edi
	leaq	2(,%rax,4), %rsi
	call	_Fcons
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%rax, %rbp
	jmp	L128
	.align 4,0x90
L119:
	leaq	2(,%rax,4), %rsi
	testl	%ecx, %ecx
	jne	L122
	movq	%rsi, %rdx
	movl	$33408, %edi
	movl	$41616, %esi
	call	_list3
	movq	%rax, %rdi
	jmp	L121
	.align 4,0x90
L124:
	leaq	2(,%rax,4), %rsi
	testl	%ecx, %ecx
	jne	L127
	movq	%rsi, %rdx
	movl	$50784, %edi
	movl	$41616, %esi
	call	_list3
	movq	%rax, %rdi
	jmp	L126
	.align 4,0x90
L143:
	negl	%eax
	movl	$33408, %edi
	movl	$36864, %esi
	cltq
	leaq	2(,%rax,4), %rdx
	call	_list3
	movq	%rax, %rdi
	jmp	L121
	.align 4,0x90
L144:
	negl	%eax
	movl	$50784, %edi
	movl	$36864, %esi
	cltq
	leaq	2(,%rax,4), %rdx
	call	_list3
	movq	%rax, %rdi
	jmp	L126
L142:
	movq	%rdi, %rsi
	movl	$48528, %edi
	call	_wrong_type_argument
LFE1025:
	.align 4,0x90
_set_menu_bar_lines.isra.32:
LFB1064:
	movq	64(%rdi), %rax
	cmpq	%rax, 48(%rdi)
	je	L152
	movl	%esi, %edx
	xorl	%eax, %eax
	andl	$3, %edx
	cmpl	$2, %edx
	je	L155
	movl	364(%rdi), %edx
	cmpl	%eax, %edx
	je	L152
L156:
	subq	$16, %rsp
LCFI35:
	movq	_windows_or_buffers_changed@GOTPCREL(%rip), %rcx
	movl	%eax, 364(%rdi)
	xorl	%r9d, %r9d
	addl	284(%rdi), %edx
	movl	$1, %r8d
	movl	280(%rdi), %esi
	movl	$14, (%rcx)
	movl	376(%rdi), %ecx
	pushq	$0
LCFI36:
	subl	%eax, %edx
	imull	%eax, %ecx
	movl	%ecx, 368(%rdi)
	xorl	%ecx, %ecx
	call	_change_frame_size
	addq	$24, %rsp
LCFI37:
	ret
	.align 4,0x90
L152:
	ret
	.align 4,0x90
L155:
	sarq	$2, %rsi
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	addq	%rsi, %rdx
	cmpq	%rcx, %rdx
	movl	364(%rdi), %edx
	cmovbe	%esi, %eax
	cmpl	%eax, %edx
	jne	L156
	jmp	L152
LFE1064:
	.align 4,0x90
_frame_unspecified_color:
LFB966:
	pushq	%r12
LCFI38:
	pushq	%rbp
LCFI39:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI40:
	movq	4(%rsi), %rdx
	movq	20(%rsi), %r12
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	cmovs	-4(%rsi), %rbx
	movq	%r12, %rdi
	movq	_unspecified_bg@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdx
	call	_strncmp
	testl	%eax, %eax
	je	L163
	movq	_unspecified_fg@GOTPCREL(%rip), %rsi
	movq	%rbx, %rdx
	movq	%r12, %rdi
	call	_strncmp
	testl	%eax, %eax
	jne	L160
	popq	%rbx
LCFI41:
	movq	%rbp, %rdi
	movl	488(%rbp), %esi
	popq	%rbp
LCFI42:
	popq	%r12
LCFI43:
	jmp	_tty_color_name
	.align 4,0x90
L163:
LCFI44:
	popq	%rbx
LCFI45:
	movq	%rbp, %rdi
	movl	480(%rbp), %esi
	popq	%rbp
LCFI46:
	popq	%r12
LCFI47:
	jmp	_tty_color_name
	.align 4,0x90
L160:
LCFI48:
	popq	%rbx
LCFI49:
	xorl	%eax, %eax
	popq	%rbp
LCFI50:
	popq	%r12
LCFI51:
	ret
LFE966:
	.align 4,0x90
_make_frame_visible_1:
LFB950:
	testq	%rdi, %rdi
	je	L174
	pushq	%r12
LCFI52:
	movabsq	$4611686019484352512, %r12
	pushq	%rbp
LCFI53:
	movabsq	$4611686018494496768, %rbp
	pushq	%rbx
LCFI54:
L168:
	leaq	-5(%rdi), %rbx
	movq	80(%rbx), %rdi
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L166
	movq	-5(%rdi), %rax
	andq	%r12, %rax
	cmpq	%rbp, %rax
	je	L177
L166:
	call	_Fcurrent_time
	movq	80(%rbx), %rdx
	movq	%rax, 539(%rdx)
L167:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	jne	L168
	popq	%rbx
LCFI55:
	popq	%rbp
LCFI56:
	popq	%r12
LCFI57:
	ret
	.align 4,0x90
L174:
LCFI58:
	ret
	.align 4,0x90
L177:
LCFI59:
	call	_make_frame_visible_1
	jmp	L167
LFE950:
	.align 4,0x90
	.globl _Fframe_visible_p
_Fframe_visible_p:
LFB953:
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L179
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdi), %rax
	movabsq	$4611686018477719552, %rcx
	leaq	-5(%rdi), %rdx
	cmpq	%rcx, %rax
	jne	L179
	cmpq	$0, 384(%rdx)
	je	L179
	movzbl	217(%rdx), %edx
	movl	$49344, %eax
	testb	$12, %dl
	jne	L178
	movq	%rdx, %rax
	salq	$59, %rax
	sarq	$63, %rax
	andl	$29184, %eax
L178:
	ret
L179:
	movq	%rdi, %rsi
	subq	$8, %rsp
LCFI60:
	movl	$25536, %edi
	call	_wrong_type_argument
LFE953:
	.align 4,0x90
	.globl _Fframep
_Fframep:
LFB909:
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L195
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdi), %rax
	movabsq	$4611686018477719552, %rdx
	cmpq	%rdx, %rax
	jne	L195
	movzwl	213(%rdi), %eax
	shrw	$7, %ax
	andl	$7, %eax
	cmpb	$5, %al
	ja	L188
	leaq	L189(%rip), %rdx
	movzbl	%al, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.align 2,0x90
L189:
	.long	L196-L189
	.long	L196-L189
	.long	L190-L189
	.long	L191-L189
	.long	L192-L189
	.long	L193-L189
	.align 4,0x90
L195:
	xorl	%eax, %eax
	ret
	.align 4,0x90
L192:
	movl	$55152, %eax
	ret
	.align 4,0x90
L193:
	movl	$39312, %eax
	ret
	.align 4,0x90
L196:
	movl	$49344, %eax
	ret
	.align 4,0x90
L190:
	movl	$56928, %eax
	ret
	.align 4,0x90
L191:
	movl	$41184, %eax
	ret
L188:
	subq	$8, %rsp
LCFI61:
	call	_emacs_abort
LFE909:
	.align 4,0x90
	.globl _Fframe_live_p
_Fframe_live_p:
LFB910:
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L199
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdi), %rax
	movabsq	$4611686018477719552, %rdx
	cmpq	%rdx, %rax
	jne	L199
	cmpq	$0, 379(%rdi)
	je	L199
	jmp	_Fframep
	.align 4,0x90
L199:
	xorl	%eax, %eax
	ret
LFE910:
	.align 4,0x90
	.globl _Fwindow_system
_Fwindow_system:
LFB911:
	testq	%rdi, %rdi
	pushq	%rbx
LCFI62:
	movq	%rdi, %rbx
	je	L210
L205:
	movq	%rbx, %rdi
	call	_Fframep
	testq	%rax, %rax
	je	L211
	cmpq	$49344, %rax
	movl	$0, %edx
	popq	%rbx
LCFI63:
	cmove	%rdx, %rax
	ret
	.align 4,0x90
L210:
LCFI64:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	jmp	L205
L211:
	movq	%rbx, %rsi
	movl	$25728, %edi
	call	_wrong_type_argument
LFE911:
	.align 4,0x90
	.globl _Fmouse_pixel_position
_Fmouse_pixel_position:
LFB944:
	subq	$56, %rsp
LCFI65:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L213
	movabsq	$4611686019484352512, %rcx
	andq	-5(%rdx), %rcx
	leaq	-5(%rdx), %rax
	movq	%rcx, %rdx
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L213
	movq	384(%rax), %rdx
	testq	%rdx, %rdx
	je	L213
	movq	248(%rdx), %r10
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rax, 8(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	testq	%r10, %r10
	je	L215
	leaq	4(%rsp), %rcx
	movl	$-1, %esi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rdi
	subq	$8, %rsp
LCFI66:
	leaq	48(%rsp), %rax
	pushq	%rax
LCFI67:
	leaq	48(%rsp), %r9
	leaq	40(%rsp), %r8
	call	*%r10
	movq	24(%rsp), %rax
	movq	48(%rsp), %rsi
	movq	40(%rsp), %rdi
	popq	%rdx
LCFI68:
	popq	%rcx
LCFI69:
L215:
	addq	$5, %rax
	movq	%rax, 16(%rsp)
	call	_Fcons
	movq	16(%rsp), %rdi
	movq	%rax, %rsi
	call	_Fcons
	movq	_globals@GOTPCREL(%rip), %rdx
	movq	1768(%rdx), %rdi
	testq	%rdi, %rdi
	je	L212
	movq	%rax, %rsi
	call	_call1
L212:
	addq	$56, %rsp
LCFI70:
	ret
L213:
LCFI71:
	call	_emacs_abort
LFE944:
	.align 4,0x90
	.globl _Fset_mouse_pixel_position
_Fset_mouse_pixel_position:
LFB948:
	movl	%edi, %eax
	subq	$8, %rsp
LCFI72:
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L225
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdi), %rax
	movq	%rdx, %r9
	movabsq	$4611686018477719552, %rdx
	leaq	-5(%rdi), %rcx
	cmpq	%rdx, %rax
	jne	L225
	cmpq	$0, 384(%rcx)
	je	L225
	movl	%esi, %eax
	movq	%rsi, %r8
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L233
	sarq	$2, %rsi
	movl	$2147483648, %eax
	movl	$4294967295, %edi
	leaq	(%rsi,%rax), %rdx
	cmpq	%rdi, %rdx
	ja	L234
	movl	%r9d, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L235
	movq	%r9, %rdx
	sarq	$2, %rdx
	addq	%rdx, %rax
	cmpq	%rdi, %rax
	ja	L236
	movzwl	218(%rcx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L237
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI73:
	ret
	.align 4,0x90
L237:
LCFI74:
	movq	%rcx, %rdi
	call	_frame_set_mouse_pixel_position
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI75:
	ret
L225:
LCFI76:
	movq	%rdi, %rsi
	movl	$25536, %edi
	call	_wrong_type_argument
L236:
	movabsq	$8589934590, %rdx
	movq	%r9, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L235:
	movq	%r9, %rsi
L233:
	movl	$30816, %edi
	call	_wrong_type_argument
L234:
	movabsq	$8589934590, %rdx
	movq	%r8, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
LFE948:
	.align 4,0x90
	.globl _Fset_mouse_position
_Fset_mouse_position:
LFB947:
	movl	%edi, %eax
	subq	$8, %rsp
LCFI77:
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L239
	movabsq	$4611686018477719552, %rcx
	movq	%rdx, %r9
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rdi), %rdx
	leaq	-5(%rdi), %rax
	cmpq	%rcx, %rdx
	jne	L239
	cmpq	$0, 384(%rax)
	je	L239
	movl	%esi, %edx
	movq	%rsi, %r8
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L249
	sarq	$2, %rsi
	movl	$2147483648, %ecx
	movl	$4294967295, %edi
	leaq	(%rsi,%rcx), %rdx
	cmpq	%rdi, %rdx
	ja	L250
	movl	%r9d, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L251
	movq	%r9, %rdx
	sarq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rdi, %rcx
	ja	L252
	movzwl	218(%rax), %ecx
	andw	$896, %cx
	cmpw	$256, %cx
	je	L253
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI78:
	ret
	.align 4,0x90
L253:
LCFI79:
	movl	372(%rax), %r8d
	movl	340(%rax), %ecx
	movl	224(%rax), %r9d
	addl	364(%rax), %r9d
	imull	%r8d, %esi
	leal	(%rsi,%rcx), %edi
	movl	%r8d, %esi
	shrl	$31, %esi
	addl	%r8d, %esi
	xorl	%r8d, %r8d
	sarl	%esi
	cmpl	%edx, %r9d
	movl	376(%rax), %r9d
	cmovg	%r8d, %ecx
	addl	%edi, %esi
	movq	%rax, %rdi
	cmovs	%r8d, %esi
	imull	%r9d, %edx
	addl	%edx, %ecx
	movl	%r9d, %edx
	shrl	$31, %edx
	addl	%r9d, %edx
	sarl	%edx
	addl	%ecx, %edx
	cmovs	%r8d, %edx
	cmpl	%edx, 324(%rax)
	cmovle	324(%rax), %edx
	cmpl	%esi, 320(%rax)
	cmovle	320(%rax), %esi
	call	_frame_set_mouse_pixel_position
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI80:
	ret
L239:
LCFI81:
	movq	%rdi, %rsi
	movl	$25536, %edi
	call	_wrong_type_argument
L252:
	movabsq	$8589934590, %rdx
	movq	%r9, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L251:
	movq	%r9, %rsi
L249:
	movl	$30816, %edi
	call	_wrong_type_argument
L250:
	movabsq	$8589934590, %rdx
	movq	%r8, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
LFE947:
	.align 4,0x90
	.globl _Fmouse_position
_Fmouse_position:
LFB943:
	pushq	%rbp
LCFI82:
	pushq	%rbx
LCFI83:
	subq	$56, %rsp
LCFI84:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L255
	movabsq	$4611686019484352512, %rcx
	andq	-5(%rdx), %rcx
	leaq	-5(%rdx), %rax
	movq	%rcx, %rdx
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L255
	movq	384(%rax), %rdx
	testq	%rdx, %rdx
	je	L255
	movq	248(%rdx), %r10
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rax, 8(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	testq	%r10, %r10
	je	L257
	leaq	8(%rsp), %rdi
	movl	$-1, %esi
	leaq	4(%rsp), %rbx
	leaq	16(%rsp), %rdx
	subq	$8, %rsp
LCFI85:
	movq	%rbx, %rcx
	leaq	48(%rsp), %rbp
	pushq	%rbp
LCFI86:
	leaq	48(%rsp), %r9
	leaq	40(%rsp), %r8
	call	*%r10
	movq	40(%rsp), %rdi
	popq	%rsi
LCFI87:
	popq	%r8
LCFI88:
	testq	%rdi, %rdi
	je	L267
	movq	32(%rsp), %rdx
	movq	%rdi, %rsi
	subq	$8, %rsp
LCFI89:
	movq	%rbx, %rcx
	sarq	$2, %rsi
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	movl	%esi, 12(%rsp)
	sarq	$2, %rdx
	movl	%edx, 48(%rsp)
	pushq	$1
LCFI90:
	movq	24(%rsp), %rdi
	call	_pixel_to_glyph_coords
	movslq	20(%rsp), %rax
	leaq	2(,%rax,4), %rdi
	movslq	56(%rsp), %rax
	movq	%rdi, 40(%rsp)
	leaq	2(,%rax,4), %rsi
	movq	24(%rsp), %rax
	movq	%rsi, 48(%rsp)
	popq	%rdx
LCFI91:
	popq	%rcx
LCFI92:
L257:
	addq	$5, %rax
	movq	%rax, 16(%rsp)
	call	_Fcons
	movq	16(%rsp), %rdi
	movq	%rax, %rsi
	call	_Fcons
	movq	_globals@GOTPCREL(%rip), %rdx
	movq	1768(%rdx), %rdi
	testq	%rdi, %rdi
	je	L254
	movq	%rax, %rsi
	call	_call1
L254:
	addq	$56, %rsp
LCFI93:
	popq	%rbx
LCFI94:
	popq	%rbp
LCFI95:
	ret
	.align 4,0x90
L267:
LCFI96:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rsi
	jmp	L257
L255:
	call	_emacs_abort
LFE943:
	.align 4,0x90
	.globl _decode_live_frame
_decode_live_frame:
LFB900:
	testq	%rdi, %rdi
	je	L274
L269:
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L270
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rdi), %rdx
	movabsq	$4611686018477719552, %rcx
	leaq	-5(%rdi), %rax
	cmpq	%rcx, %rdx
	jne	L270
	cmpq	$0, 384(%rax)
	je	L270
	ret
	.align 4,0x90
L274:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	jmp	L269
L270:
	movq	%rdi, %rsi
	subq	$8, %rsp
LCFI97:
	movl	$25536, %edi
	call	_wrong_type_argument
LFE900:
	.align 4,0x90
	.globl _Fframe_parent
_Fframe_parent:
LFB929:
	subq	$8, %rsp
LCFI98:
	call	_decode_live_frame
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L277
	cmpq	$5, %rax
	movl	$0, %edx
	cmove	%rdx, %rax
L275:
	addq	$8, %rsp
LCFI99:
	ret
	.align 4,0x90
L277:
LCFI100:
	xorl	%eax, %eax
	jmp	L275
LFE929:
	.align 4,0x90
_check_minibuf_window:
LFB939:
	pushq	%r12
LCFI101:
	pushq	%rbp
LCFI102:
	movl	%esi, %ebp
	pushq	%rbx
LCFI103:
	call	_decode_live_frame
	movq	_minibuf_window@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$5, %ecx
	je	L293
L280:
	popq	%rbx
LCFI104:
	popq	%rbp
LCFI105:
	popq	%r12
LCFI106:
	ret
	.align 4,0x90
L293:
LCFI107:
	movq	-5(%rdx), %rsi
	leaq	-5(%rdx), %rdi
	movabsq	$4611686019484352512, %rcx
	movabsq	$4611686018494496768, %r8
	andq	%rcx, %rsi
	cmpq	%r8, %rsi
	jne	L280
	cmpq	%rdx, 64(%rax)
	jne	L280
	movq	_selected_frame@GOTPCREL(%rip), %rdx
	addq	$5, %rax
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	je	L284
	movq	59(%rdx), %r12
	subq	$5, %rdx
	movl	%r12d, %r8d
	andl	$7, %r8d
	cmpl	$5, %r8d
	je	L294
L284:
	movq	_Vframe_list@GOTPCREL(%rip), %rdx
	movabsq	$4611686019484352512, %r9
	movabsq	$4611686018494496768, %r8
	movq	(%rdx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L286
	jmp	L280
	.align 4,0x90
L287:
	movq	8(%rcx), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L280
L286:
	leaq	-3(%rdx), %rcx
	movq	-3(%rdx), %rdx
	cmpq	%rax, %rdx
	je	L287
	movq	59(%rdx), %r12
	subq	$5, %rdx
	movl	%r12d, %esi
	andl	$7, %esi
	cmpl	$5, %esi
	jne	L287
	movq	-5(%r12), %rsi
	andq	%r9, %rsi
	cmpq	%r8, %rsi
	jne	L287
	movq	3(%r12), %rsi
	subq	$5, %rsi
	cmpq	%rsi, %rdx
	jne	L287
	jmp	L285
	.align 4,0x90
L294:
	andq	-5(%r12), %rcx
	cmpq	%rsi, %rcx
	jne	L284
	movq	3(%r12), %rcx
	subq	$5, %rcx
	cmpq	%rcx, %rdx
	jne	L284
L285:
	movq	80(%rdi), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	_set_window_buffer
	testl	%ebp, %ebp
	movq	%r12, (%rbx)
	je	L280
	popq	%rbx
LCFI108:
	movq	%r12, %rdi
	xorl	%esi, %esi
	popq	%rbp
LCFI109:
	popq	%r12
LCFI110:
	jmp	_Fselect_window
LFE939:
	.align 4,0x90
	.globl _Fmake_frame_visible
_Fmake_frame_visible:
LFB949:
	pushq	%rbx
LCFI111:
	call	_decode_live_frame
	movq	%rax, %rbx
	movzwl	218(%rax), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L298
	movq	48(%rbx), %rdi
	call	_make_frame_visible_1
	leaq	5(%rbx), %rax
	popq	%rbx
LCFI112:
	ret
	.align 4,0x90
L298:
LCFI113:
	movq	%rbx, %rdi
	call	_x_make_frame_visible
	movq	48(%rbx), %rdi
	call	_make_frame_visible_1
	leaq	5(%rbx), %rax
	popq	%rbx
LCFI114:
	ret
LFE949:
	.align 4,0x90
	.globl _Flower_frame
_Flower_frame:
LFB956:
	subq	$8, %rsp
LCFI115:
	call	_decode_live_frame
	movq	384(%rax), %rdx
	movq	264(%rdx), %rdx
	testq	%rdx, %rdx
	je	L300
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	*%rdx
L300:
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI116:
	ret
LFE956:
	.align 4,0x90
	.globl _Fframe_focus
_Fframe_focus:
LFB958:
	subq	$8, %rsp
LCFI117:
	call	_decode_live_frame
	movq	40(%rax), %rax
	addq	$8, %rsp
LCFI118:
	ret
LFE958:
	.align 4,0x90
	.globl _Fframe_after_make_frame
_Fframe_after_make_frame:
LFB960:
	pushq	%rbx
LCFI119:
	movq	%rsi, %rbx
	call	_decode_live_frame
	testq	%rbx, %rbx
	setne	%dl
	andb	$-4, 222(%rax)
	movl	%edx, %ecx
	movzbl	221(%rax), %edx
	sall	$5, %ecx
	andl	$-33, %edx
	orl	%ecx, %edx
	movb	%dl, 221(%rax)
	movq	%rbx, %rax
	popq	%rbx
LCFI120:
	ret
LFE960:
	.align 4,0x90
	.globl _Fframe_position
_Fframe_position:
LFB990:
	subq	$8, %rsp
LCFI121:
	call	_decode_live_frame
	movslq	316(%rax), %rdx
	movslq	312(%rax), %rax
	addq	$8, %rsp
LCFI122:
	leaq	2(,%rdx,4), %rsi
	leaq	2(,%rax,4), %rdi
	jmp	_Fcons
LFE990:
	.align 4,0x90
	.globl _Fset_frame_position
_Fset_frame_position:
LFB991:
	pushq	%rbp
LCFI123:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI124:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI125:
	call	_decode_live_frame
	movl	%ebx, %edx
	movq	%rbx, %rsi
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L318
	sarq	$2, %rsi
	movl	$2147483648, %ecx
	movl	$4294967295, %r8d
	leaq	(%rsi,%rcx), %rdx
	cmpq	%r8, %rdx
	ja	L319
	movl	%ebp, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L320
	movq	%rbp, %rdx
	sarq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%r8, %rcx
	ja	L321
	movzwl	218(%rax), %ecx
	andw	$896, %cx
	cmpw	$256, %cx
	je	L322
	addq	$8, %rsp
LCFI126:
	movl	$49344, %eax
	popq	%rbx
LCFI127:
	popq	%rbp
LCFI128:
	ret
	.align 4,0x90
L322:
LCFI129:
	movq	%rax, %rdi
	movl	$1, %ecx
	call	_x_set_offset
	addq	$8, %rsp
LCFI130:
	movl	$49344, %eax
	popq	%rbx
LCFI131:
	popq	%rbp
LCFI132:
	ret
L321:
LCFI133:
	movabsq	$8589934590, %rdx
	movq	%rbp, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L319:
	movabsq	$8589934590, %rdx
	movq	%rbx, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L320:
	movq	%rbp, %rsi
L318:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE991:
	.align 4,0x90
	.globl _Fframe_ancestor_p
_Fframe_ancestor_p:
LFB931:
	pushq	%rbp
LCFI134:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI135:
	subq	$8, %rsp
LCFI136:
	call	_decode_live_frame
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_decode_live_frame
	movq	32(%rax), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	L323
	subq	$5, %rdx
	je	L323
	cmpq	%rdx, %rbx
	je	L330
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	jne	L325
	jmp	L323
	.align 4,0x90
L326:
	cmpq	%rdx, %rbx
	je	L330
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	je	L331
L325:
	subq	$5, %rdx
	jne	L326
L331:
	xorl	%eax, %eax
L323:
	addq	$8, %rsp
LCFI137:
	popq	%rbx
LCFI138:
	popq	%rbp
LCFI139:
	ret
	.align 4,0x90
L330:
LCFI140:
	addq	$8, %rsp
LCFI141:
	movl	$49344, %eax
	popq	%rbx
LCFI142:
	popq	%rbp
LCFI143:
	ret
LFE931:
	.align 4,0x90
	.globl _decode_any_frame
_decode_any_frame:
LFB901:
	testq	%rdi, %rdi
	je	L341
L336:
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L337
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rdi), %rdx
	movabsq	$4611686018477719552, %rcx
	leaq	-5(%rdi), %rax
	cmpq	%rcx, %rdx
	jne	L337
	ret
	.align 4,0x90
L341:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	jmp	L336
L337:
	movq	%rdi, %rsi
	subq	$8, %rsp
LCFI144:
	movl	$25728, %edi
	call	_wrong_type_argument
LFE901:
	.align 4,0x90
	.globl _Fredirect_frame_focus
_Fredirect_frame_focus:
LFB957:
	pushq	%rbx
LCFI145:
	movq	%rsi, %rbx
	call	_decode_any_frame
	testq	%rbx, %rbx
	je	L343
	movl	%ebx, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	jne	L344
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rbx), %rdx
	movabsq	$4611686018477719552, %rsi
	cmpq	%rsi, %rdx
	jne	L344
	cmpq	$0, 379(%rbx)
	je	L344
L343:
	movq	384(%rax), %rdx
	movq	%rbx, 40(%rax)
	movq	256(%rdx), %rdx
	testq	%rdx, %rdx
	je	L345
	movq	%rax, %rdi
	call	*%rdx
L345:
	xorl	%eax, %eax
	popq	%rbx
LCFI146:
	ret
L344:
LCFI147:
	movq	%rbx, %rsi
	movl	$25536, %edi
	call	_wrong_type_argument
LFE957:
	.align 4,0x90
	.globl _Fframe_char_height
_Fframe_char_height:
LFB970:
	subq	$8, %rsp
LCFI148:
	call	_decode_any_frame
	movl	$6, %ecx
	movzwl	218(%rax), %edx
	andw	$896, %dx
	cmpw	$256, %dx
	jne	L353
	movslq	376(%rax), %rax
	leaq	2(,%rax,4), %rcx
L353:
	movq	%rcx, %rax
	addq	$8, %rsp
LCFI149:
	ret
LFE970:
	.align 4,0x90
	.globl _Fframe_char_width
_Fframe_char_width:
LFB971:
	subq	$8, %rsp
LCFI150:
	call	_decode_any_frame
	movl	$6, %ecx
	movzwl	218(%rax), %edx
	andw	$896, %dx
	cmpw	$256, %dx
	jne	L358
	movslq	372(%rax), %rax
	leaq	2(,%rax,4), %rcx
L358:
	movq	%rcx, %rax
	addq	$8, %rsp
LCFI151:
	ret
LFE971:
	.align 4,0x90
	.globl _Fframe_native_width
_Fframe_native_width:
LFB972:
	subq	$8, %rsp
LCFI152:
	call	_decode_any_frame
	movzwl	218(%rax), %edx
	andw	$896, %dx
	cmpw	$256, %dx
	je	L367
	movslq	288(%rax), %rax
	addq	$8, %rsp
LCFI153:
	leaq	2(,%rax,4), %rax
	ret
	.align 4,0x90
L367:
LCFI154:
	movslq	320(%rax), %rax
	addq	$8, %rsp
LCFI155:
	leaq	2(,%rax,4), %rax
	ret
LFE972:
	.align 4,0x90
	.globl _Fframe_native_height
_Fframe_native_height:
LFB973:
	subq	$8, %rsp
LCFI156:
	call	_decode_any_frame
	movzwl	218(%rax), %edx
	andw	$896, %dx
	cmpw	$256, %dx
	je	L372
	movslq	292(%rax), %rax
	addq	$8, %rsp
LCFI157:
	leaq	2(,%rax,4), %rax
	ret
	.align 4,0x90
L372:
LCFI158:
	movslq	324(%rax), %rax
	addq	$8, %rsp
LCFI159:
	leaq	2(,%rax,4), %rax
	ret
LFE973:
	.align 4,0x90
	.globl _Ftool_bar_pixel_width
_Ftool_bar_pixel_width:
LFB974:
	subq	$8, %rsp
LCFI160:
	call	_decode_any_frame
	movl	$2, %ecx
	movzwl	218(%rax), %edx
	andw	$896, %dx
	cmpw	$256, %dx
	jne	L373
	movq	392(%rax), %rdx
	movl	16(%rdx), %eax
	addl	12(%rdx), %eax
	cltq
	leaq	2(,%rax,4), %rcx
L373:
	movq	%rcx, %rax
	addq	$8, %rsp
LCFI161:
	ret
LFE974:
	.align 4,0x90
	.globl _Fframe_text_cols
_Fframe_text_cols:
LFB975:
	subq	$8, %rsp
LCFI162:
	call	_decode_any_frame
	movslq	280(%rax), %rax
	addq	$8, %rsp
LCFI163:
	leaq	2(,%rax,4), %rax
	ret
LFE975:
	.align 4,0x90
	.globl _Fframe_text_lines
_Fframe_text_lines:
LFB976:
	subq	$8, %rsp
LCFI164:
	call	_decode_any_frame
	movslq	284(%rax), %rax
	addq	$8, %rsp
LCFI165:
	leaq	2(,%rax,4), %rax
	ret
LFE976:
	.align 4,0x90
	.globl _Fframe_total_cols
_Fframe_total_cols:
LFB977:
	subq	$8, %rsp
LCFI166:
	call	_decode_any_frame
	movslq	288(%rax), %rax
	addq	$8, %rsp
LCFI167:
	leaq	2(,%rax,4), %rax
	ret
LFE977:
	.align 4,0x90
	.globl _Fframe_total_lines
_Fframe_total_lines:
LFB978:
	subq	$8, %rsp
LCFI168:
	call	_decode_any_frame
	movslq	292(%rax), %rax
	addq	$8, %rsp
LCFI169:
	leaq	2(,%rax,4), %rax
	ret
LFE978:
	.align 4,0x90
	.globl _Fframe_text_width
_Fframe_text_width:
LFB979:
	subq	$8, %rsp
LCFI170:
	call	_decode_any_frame
	movslq	296(%rax), %rax
	addq	$8, %rsp
LCFI171:
	leaq	2(,%rax,4), %rax
	ret
LFE979:
	.align 4,0x90
	.globl _Fframe_text_height
_Fframe_text_height:
LFB980:
	subq	$8, %rsp
LCFI172:
	call	_decode_any_frame
	movslq	300(%rax), %rax
	addq	$8, %rsp
LCFI173:
	leaq	2(,%rax,4), %rax
	ret
LFE980:
	.align 4,0x90
	.globl _Fscroll_bar_width
_Fscroll_bar_width:
LFB981:
	subq	$8, %rsp
LCFI174:
	call	_decode_any_frame
	movl	$2, %edx
	testb	$3, 220(%rax)
	je	L390
	movslq	428(%rax), %rax
	leaq	2(,%rax,4), %rdx
L390:
	movq	%rdx, %rax
	addq	$8, %rsp
LCFI175:
	ret
LFE981:
	.align 4,0x90
	.globl _Fscroll_bar_height
_Fscroll_bar_height:
LFB982:
	subq	$8, %rsp
LCFI176:
	call	_decode_any_frame
	movl	$2, %edx
	testb	$4, 220(%rax)
	je	L396
	movslq	436(%rax), %rax
	leaq	2(,%rax,4), %rdx
L396:
	movq	%rdx, %rax
	addq	$8, %rsp
LCFI177:
	ret
LFE982:
	.align 4,0x90
	.globl _Ffringe_width
_Ffringe_width:
LFB983:
	subq	$8, %rsp
LCFI178:
	call	_decode_any_frame
	movl	356(%rax), %edx
	addl	352(%rax), %edx
	addq	$8, %rsp
LCFI179:
	movslq	%edx, %rax
	leaq	2(,%rax,4), %rax
	ret
LFE983:
	.align 4,0x90
	.globl _Fframe_internal_border_width
_Fframe_internal_border_width:
LFB984:
	subq	$8, %rsp
LCFI180:
	call	_decode_any_frame
	movslq	340(%rax), %rax
	addq	$8, %rsp
LCFI181:
	leaq	2(,%rax,4), %rax
	ret
LFE984:
	.align 4,0x90
	.globl _Fright_divider_width
_Fright_divider_width:
LFB985:
	subq	$8, %rsp
LCFI182:
	call	_decode_any_frame
	movslq	344(%rax), %rax
	addq	$8, %rsp
LCFI183:
	leaq	2(,%rax,4), %rax
	ret
LFE985:
	.align 4,0x90
	.globl _Fbottom_divider_width
_Fbottom_divider_width:
LFB986:
	subq	$8, %rsp
LCFI184:
	call	_decode_any_frame
	movslq	348(%rax), %rax
	addq	$8, %rsp
LCFI185:
	leaq	2(,%rax,4), %rax
	ret
LFE986:
	.align 4,0x90
	.globl _Fframe_pointer_visible_p
_Fframe_pointer_visible_p:
LFB1029:
	subq	$8, %rsp
LCFI186:
	call	_decode_any_frame
	movzbl	218(%rax), %eax
	andl	$32, %eax
	cmpb	$1, %al
	sbbq	%rax, %rax
	addq	$8, %rsp
LCFI187:
	andl	$49344, %eax
	ret
LFE1029:
	.align 4,0x90
	.globl _display_available
_display_available:
LFB902:
	movq	_x_display_list@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	setne	%al
	ret
LFE902:
	.cstring
	.align 3
lC2:
	.ascii "Window system is not in use or not initialized\0"
	.align 3
lC3:
	.ascii "Window system frame should be used\0"
	.text
	.align 4,0x90
	.globl _check_window_system
_check_window_system:
LFB904:
	testq	%rdi, %rdi
	je	L416
	movzwl	218(%rdi), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	jne	L424
L415:
	ret
	.align 4,0x90
L416:
	movq	_x_display_list@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	jne	L415
	leaq	lC2(%rip), %rdi
	jmp	L418
L424:
	leaq	lC3(%rip), %rdi
L418:
	subq	$8, %rsp
LCFI188:
	xorl	%eax, %eax
	call	_error
LFE904:
	.align 4,0x90
	.globl _decode_window_system_frame
_decode_window_system_frame:
LFB903:
	pushq	%rbx
LCFI189:
	call	_decode_live_frame
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_check_window_system
	movq	%rbx, %rax
	popq	%rbx
LCFI190:
	ret
LFE903:
	.align 4,0x90
	.globl _Fx_focus_frame
_Fx_focus_frame:
LFB959:
	pushq	%rbp
LCFI191:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI192:
	subq	$8, %rsp
LCFI193:
	call	_decode_live_frame
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_check_window_system
	xorl	%esi, %esi
	testq	%rbp, %rbp
	movq	%rbx, %rdi
	setne	%sil
	call	_x_focus_frame
	addq	$8, %rsp
LCFI194:
	xorl	%eax, %eax
	popq	%rbx
LCFI195:
	popq	%rbp
LCFI196:
	ret
LFE959:
	.align 4,0x90
	.globl _get_frame_param
_get_frame_param:
LFB905:
	subq	$8, %rsp
LCFI197:
	movq	%rsi, %rax
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	call	_Fassq
	testq	%rax, %rax
	je	L429
	movq	%rax, %rdi
	addq	$8, %rsp
LCFI198:
	jmp	_Fcdr
	.align 4,0x90
L429:
LCFI199:
	xorl	%eax, %eax
	addq	$8, %rsp
LCFI200:
	ret
LFE905:
	.align 4,0x90
_candidate_frame:
LFB932:
	pushq	%r12
LCFI201:
	leaq	-5(%rdi), %r12
	subq	$5, %rsi
	pushq	%rbp
LCFI202:
	pushq	%rbx
LCFI203:
	movzwl	218(%rsi), %ecx
	movzwl	218(%r12), %r8d
	andw	$896, %cx
	andw	$896, %r8w
	addw	$-128, %r8w
	je	L433
	addw	$-128, %cx
	je	L434
	movq	384(%r12), %rcx
	movq	384(%rsi), %rax
	movq	72(%rax), %rax
	cmpq	%rax, 72(%rcx)
	je	L435
L434:
	xorl	%eax, %eax
L432:
	popq	%rbx
LCFI204:
	popq	%rbp
LCFI205:
	popq	%r12
LCFI206:
	ret
	.align 4,0x90
L433:
LCFI207:
	addw	$-128, %cx
	jne	L434
	movq	384(%r12), %rcx
	movq	384(%rsi), %rax
	movq	88(%rax), %rax
	cmpq	%rax, 88(%rcx)
	jne	L434
L435:
	movq	%rdi, %rbp
	movl	$38928, %esi
	movq	%r12, %rdi
	movq	%rdx, %rbx
	call	_get_frame_param
	testq	%rax, %rax
	jne	L434
	testq	%rbx, %rbx
	je	L453
	cmpq	$54912, %rbx
	je	L454
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	je	L455
L439:
	movl	%ebx, %edx
	movq	%rbp, %rax
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L432
	sarq	$2, %rbx
	testq	%rbx, %rbx
	jne	L432
	testb	$28, 217(%r12)
	jne	L432
	jmp	L434
	.align 4,0x90
L453:
	movq	64(%r12), %rbx
	movq	%rbp, %rax
	cmpq	%rbx, 48(%r12)
	je	L434
	popq	%rbx
LCFI208:
	popq	%rbp
LCFI209:
	popq	%r12
LCFI210:
	ret
	.align 4,0x90
L455:
LCFI211:
	movabsq	$4611686019484352512, %rax
	andq	-5(%rbx), %rax
	movabsq	$4611686018494496768, %rdx
	cmpq	%rdx, %rax
	jne	L439
	cmpq	%rbx, 64(%r12)
	movq	%rbp, %rax
	je	L432
	movq	3(%rbx), %rdx
	cmpq	%rdx, %rbp
	je	L432
	cmpq	%rdx, 40(%r12)
	je	L432
	jmp	L434
	.align 4,0x90
L454:
	testb	$12, 217(%r12)
	movq	%rbp, %rax
	jne	L432
	jmp	L434
LFE932:
	.align 4,0x90
	.globl _Fnext_frame
_Fnext_frame:
LFB935:
	testq	%rdi, %rdi
	pushq	%r14
LCFI212:
	movq	%rdi, %r14
	pushq	%r13
LCFI213:
	pushq	%r12
LCFI214:
	pushq	%rbp
LCFI215:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI216:
	je	L474
L457:
	movl	%r14d, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L458
	movabsq	$4611686019484352512, %rax
	andq	-5(%r14), %rax
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rax
	jne	L458
	cmpq	$0, 379(%r14)
	je	L458
	movq	_Vframe_list@GOTPCREL(%rip), %r12
	xorl	%ebx, %ebx
	movq	(%r12), %rax
L464:
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L460
	jmp	L461
	.align 4,0x90
L466:
	xorl	%eax, %eax
	cmpq	%rdi, %r14
	sete	%al
	addl	%eax, %ebx
	movq	8(%r13), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L475
L460:
	leaq	-3(%rax), %r13
	testl	%ebx, %ebx
	movq	-3(%rax), %rdi
	je	L466
	movq	%rbp, %rdx
	movq	%r14, %rsi
	call	_candidate_frame
	testq	%rax, %rax
	jne	L456
	xorl	%edi, %edi
	jmp	L466
	.align 4,0x90
L475:
	cmpl	$1, %ebx
	jg	L467
L461:
	movq	(%r12), %rax
	jmp	L464
L467:
	movq	%r14, %rax
L456:
	popq	%rbx
LCFI217:
	popq	%rbp
LCFI218:
	popq	%r12
LCFI219:
	popq	%r13
LCFI220:
	popq	%r14
LCFI221:
	ret
	.align 4,0x90
L474:
LCFI222:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	jmp	L457
L458:
	movq	%r14, %rsi
	movl	$25536, %edi
	call	_wrong_type_argument
LFE935:
	.align 4,0x90
	.globl _Fprevious_frame
_Fprevious_frame:
LFB936:
	pushq	%r13
LCFI223:
	pushq	%r12
LCFI224:
	movq	%rsi, %r12
	pushq	%rbp
LCFI225:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI226:
	subq	$8, %rsp
LCFI227:
	testq	%rdi, %rdi
	je	L494
L477:
	movl	%ebp, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L478
	movabsq	$4611686019484352512, %rax
	andq	-5(%rbp), %rax
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rax
	jne	L478
	cmpq	$0, 379(%rbp)
	je	L478
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	xorl	%ebx, %ebx
	movq	(%rax), %rax
	movq	-3(%rax), %rdi
	leaq	-3(%rax), %r13
	.align 4,0x90
L484:
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	_candidate_frame
	testq	%rax, %rax
	cmovne	%rax, %rbx
	movq	8(%r13), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L481
	leaq	-3(%rax), %r13
	testq	%rbx, %rbx
	movq	-3(%rax), %rdi
	je	L484
	cmpq	%rbp, %rdi
	jne	L484
	addq	$8, %rsp
LCFI228:
	movq	%rbx, %rax
	popq	%rbx
LCFI229:
	popq	%rbp
LCFI230:
	popq	%r12
LCFI231:
	popq	%r13
LCFI232:
	ret
	.align 4,0x90
L481:
LCFI233:
	testq	%rbx, %rbx
	cmove	%rbp, %rbx
	addq	$8, %rsp
LCFI234:
	movq	%rbx, %rax
	popq	%rbx
LCFI235:
	popq	%rbp
LCFI236:
	popq	%r12
LCFI237:
	popq	%r13
LCFI238:
	ret
	.align 4,0x90
L494:
LCFI239:
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rbp
	jmp	L477
L478:
	movq	%rbp, %rsi
	movl	$25536, %edi
	call	_wrong_type_argument
LFE936:
	.align 4,0x90
_other_frames:
LFB938:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	pushq	%r14
LCFI240:
	movq	%rdi, %r14
	pushq	%r13
LCFI241:
	pushq	%r12
LCFI242:
	movl	%edx, %r12d
	pushq	%rbp
LCFI243:
	movl	%esi, %ebp
	pushq	%rbx
LCFI244:
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L496
	jmp	L497
	.align 4,0x90
L498:
	testb	$4, 219(%rbx)
	jne	L501
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	L500
	cmpq	$5, %rax
	je	L500
	.align 4,0x90
L501:
	movq	8(%r13), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L497
L496:
	movq	-3(%rax), %rbx
	leaq	-3(%rax), %r13
	subq	$5, %rbx
	cmpq	%rbx, %r14
	je	L501
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	jne	L498
	movq	%rbx, %rdi
	call	_x_sync
	jmp	L498
	.align 4,0x90
L500:
	testb	%bpl, %bpl
	je	L523
	testb	$28, 217(%rbx)
	je	L501
L506:
	popq	%rbx
LCFI245:
	movl	$1, %eax
	popq	%rbp
LCFI246:
	popq	%r12
LCFI247:
	popq	%r13
LCFI248:
	popq	%r14
LCFI249:
	ret
	.align 4,0x90
L523:
LCFI250:
	movl	$18768, %esi
	movq	%rbx, %rdi
	call	_get_frame_param
	testq	%rax, %rax
	jne	L501
	testb	$28, 217(%rbx)
	jne	L506
	testb	%r12b, %r12b
	jne	L506
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	jne	L501
	movzwl	218(%r14), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	jne	L506
	movq	8(%r13), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L496
L497:
	popq	%rbx
LCFI251:
	xorl	%eax, %eax
	popq	%rbp
LCFI252:
	popq	%r12
LCFI253:
	popq	%r13
LCFI254:
	popq	%r14
LCFI255:
	ret
LFE938:
	.cstring
	.align 3
lC4:
	.ascii "Attempt to make invisible the sole visible or iconified frame\0"
	.text
	.align 4,0x90
	.globl _Fmake_frame_invisible
_Fmake_frame_invisible:
LFB951:
	pushq	%r12
LCFI256:
	movq	%rsi, %r12
	pushq	%rbp
LCFI257:
	pushq	%rbx
LCFI258:
	movq	%rdi, %rbx
	call	_decode_live_frame
	testq	%r12, %r12
	movq	%rax, %rbp
	je	L528
L525:
	movq	_selected_window@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	_minibuf_window@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, (%rdx)
	sete	%sil
	call	_check_minibuf_window
	movzwl	218(%rbp), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L529
L526:
	movq	_windows_or_buffers_changed@GOTPCREL(%rip), %rax
	movl	$16, (%rax)
	xorl	%eax, %eax
	popq	%rbx
LCFI259:
	popq	%rbp
LCFI260:
	popq	%r12
LCFI261:
	ret
	.align 4,0x90
L528:
LCFI262:
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_other_frames
	testb	%al, %al
	jne	L525
	leaq	lC4(%rip), %rdi
	call	_error
	.align 4,0x90
L529:
	movq	%rbp, %rdi
	call	_x_make_frame_invisible
	jmp	L526
LFE951:
	.align 4,0x90
	.globl _Ficonify_frame
_Ficonify_frame:
LFB952:
	pushq	%rbp
LCFI263:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI264:
	subq	$8, %rsp
LCFI265:
	call	_decode_live_frame
	movq	32(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	L531
	movq	_globals@GOTPCREL(%rip), %rax
	movq	3232(%rax), %rdx
	testq	%rdx, %rdx
	je	L533
	cmpq	$29472, %rdx
	je	L540
	cmpq	$35328, %rdx
	je	L541
L531:
	movq	_minibuf_window@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	_selected_window@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, (%rdx)
	sete	%sil
	call	_check_minibuf_window
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L542
L533:
	addq	$8, %rsp
LCFI266:
	xorl	%eax, %eax
	popq	%rbx
LCFI267:
	popq	%rbp
LCFI268:
	ret
	.align 4,0x90
L541:
LCFI269:
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	_Fmake_frame_invisible
	jmp	L533
	.align 4,0x90
L542:
	movq	%rbx, %rdi
	call	_x_iconify_frame
	addq	$8, %rsp
LCFI270:
	xorl	%eax, %eax
	popq	%rbx
LCFI271:
	popq	%rbp
LCFI272:
	ret
	.align 4,0x90
L540:
LCFI273:
	call	_Ficonify_frame
	jmp	L533
LFE952:
	.align 4,0x90
	.globl _frame_size_history_add
_frame_size_history_add:
LFB906:
	pushq	%r14
LCFI274:
	pushq	%r13
LCFI275:
	pushq	%r12
LCFI276:
	pushq	%rbp
LCFI277:
	pushq	%rbx
LCFI278:
	movq	_globals@GOTPCREL(%rip), %rbx
	movq	3224(%rbx), %rax
	movl	%eax, %r9d
	andl	$7, %r9d
	cmpl	$3, %r9d
	je	L548
L543:
	popq	%rbx
LCFI279:
	popq	%rbp
LCFI280:
	popq	%r12
LCFI281:
	popq	%r13
LCFI282:
	popq	%r14
LCFI283:
	ret
	.align 4,0x90
L548:
LCFI284:
	leaq	-3(%rax), %r10
	movq	-3(%rax), %rax
	movl	%eax, %r9d
	andl	$3, %r9d
	cmpl	$2, %r9d
	jne	L543
	cmpq	$3, %rax
	jle	L543
	movl	%edx, %r9d
	xorl	%edx, %edx
	movq	%r8, %r12
	movq	8(%r10), %rbp
	testl	%r9d, %r9d
	movq	%rsi, %r14
	movq	%rdi, %r13
	jle	L545
	movslq	300(%rdi), %rax
	movslq	%r9d, %rdx
	movslq	%ecx, %rcx
	leaq	2(,%rdx,4), %rdx
	leaq	2(,%rcx,4), %rcx
	leaq	2(,%rax,4), %rsi
	movslq	296(%rdi), %rax
	leaq	2(,%rax,4), %rdi
	call	_list4
	movq	%rax, %rdx
L545:
	leaq	5(%r13), %rdi
	movq	%r12, %rcx
	movq	%r14, %rsi
	call	_list4
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	3224(%rbx), %rdx
	movq	%rax, %rsi
	movq	-3(%rdx), %rdx
	sarq	$2, %rdx
	leaq	-2(,%rdx,4), %rdi
	call	_Fcons
	movq	%rax, 3224(%rbx)
	jmp	L543
LFE906:
	.align 4,0x90
	.globl _frame_inhibit_resize
_frame_inhibit_resize:
LFB907:
	pushq	%r13
LCFI285:
	pushq	%r12
LCFI286:
	movq	%rdx, %r12
	pushq	%rbp
LCFI287:
	movl	%esi, %ebp
	movl	$26256, %esi
	pushq	%rbx
LCFI288:
	movq	%rdi, %rbx
	subq	$24, %rsp
LCFI289:
	call	_get_frame_param
	testb	$32, 221(%rbx)
	movq	%rax, %r8
	je	L550
	movq	_globals@GOTPCREL(%rip), %r13
	movq	3216(%r13), %rsi
	cmpq	$49344, %rsi
	je	L585
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L553
L557:
	testq	%r8, %r8
	setne	%al
	testb	%bpl, %bpl
	je	L590
	cmpq	$26208, %r8
	je	L559
L589:
	testb	%al, %al
	jne	L585
L559:
	movzwl	218(%rbx), %eax
	movl	%eax, %edx
	andw	$896, %dx
	addw	$-128, %dx
	je	L552
L587:
	addq	$24, %rsp
LCFI290:
	xorl	%eax, %eax
	popq	%rbx
LCFI291:
	popq	%rbp
LCFI292:
	popq	%r12
LCFI293:
	popq	%r13
LCFI294:
	ret
	.align 4,0x90
L550:
LCFI295:
	testb	%bpl, %bpl
	movzbl	222(%rbx), %eax
	je	L562
	testb	$1, %al
	je	L587
L563:
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	addw	$-128, %ax
	je	L591
	movq	_globals@GOTPCREL(%rip), %rax
	xorl	%edx, %edx
	movq	3216(%rax), %rcx
	jmp	L564
	.align 4,0x90
L553:
	movq	%r12, %rdi
	movq	%r8, 8(%rsp)
	call	_Fmemq
	movq	8(%rsp), %r8
	testq	%rax, %rax
	je	L557
	.align 4,0x90
L585:
	movzwl	218(%rbx), %eax
L552:
	andw	$896, %ax
	movl	%eax, %edx
	movl	$1, %eax
	addw	$-128, %dx
	je	L549
	movzbl	221(%rbx), %edx
	movq	3216(%r13), %rcx
	salq	$58, %rdx
	sarq	$63, %rdx
	andl	$49344, %edx
L564:
	cmpb	$1, %bpl
	movq	%r12, %rsi
	sbbq	%rdi, %rdi
	notq	%rdi
	andl	$49344, %edi
	call	_list5
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$25488, %esi
	movq	%rax, %r8
	movq	%rbx, %rdi
	call	_frame_size_history_add
	movl	$1, %eax
L549:
	addq	$24, %rsp
LCFI296:
	popq	%rbx
LCFI297:
	popq	%rbp
LCFI298:
	popq	%r12
LCFI299:
	popq	%r13
LCFI300:
	ret
	.align 4,0x90
L562:
LCFI301:
	testb	$2, %al
	jne	L563
	jmp	L587
	.align 4,0x90
L590:
	cmpq	$26304, %r8
	jne	L589
	jmp	L559
	.align 4,0x90
L591:
	movl	$1, %eax
	jmp	L549
LFE907:
	.align 4,0x90
	.globl _adjust_frame_size
_adjust_frame_size:
LFB915:
	pushq	%r15
LCFI302:
	pushq	%r14
LCFI303:
	movl	%ecx, %r14d
	pushq	%r13
LCFI304:
	movl	%edx, %r13d
	pushq	%r12
LCFI305:
	movl	%esi, %r12d
	pushq	%rbp
LCFI306:
	pushq	%rbx
LCFI307:
	movq	%rdi, %rbx
	subq	$120, %rsp
LCFI308:
	movl	372(%rdi), %eax
	movq	48(%rdi), %rdx
	movl	%r8d, 64(%rsp)
	movq	%r9, 8(%rsp)
	movl	%eax, 32(%rsp)
	movl	376(%rdi), %eax
	movl	259(%rdx), %ecx
	movl	%eax, 52(%rsp)
	movl	320(%rdi), %eax
	movl	%ecx, 48(%rsp)
	movl	%eax, 20(%rsp)
	movl	324(%rdi), %eax
	movl	%eax, 16(%rsp)
	movl	280(%rdi), %eax
	movl	%eax, 88(%rsp)
	movl	284(%rdi), %eax
	movl	%eax, 92(%rsp)
	movl	340(%rdi), %eax
	movl	%eax, 76(%rsp)
	movl	368(%rdi), %eax
	movl	%eax, 68(%rsp)
	movl	228(%rdi), %eax
	movl	%eax, 72(%rsp)
	leaq	-5(%rdx), %rax
	movq	%rax, 80(%rsp)
	movl	263(%rdx), %eax
	movl	%eax, 40(%rsp)
	movq	64(%rdi), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$5, %ecx
	je	L761
L593:
	movl	296(%rbx), %eax
	testl	%r12d, %r12d
	movl	$0, %ebp
	movl	300(%rbx), %edi
	cmovs	%eax, %r12d
	testl	%r13d, %r13d
	movl	%eax, 56(%rsp)
	cmovs	%edi, %r13d
	movl	%edi, 60(%rsp)
	movq	8(%rsp), %rdi
	leaq	5(%rbx), %rax
	movq	%rax, 24(%rsp)
	movslq	%r14d, %rax
	leaq	2(,%rax,4), %rsi
	call	_list2
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	$9840, %esi
	movq	%rax, %r8
	movq	%rbx, %rdi
	call	_frame_size_history_add
	cmpl	$5, %r14d
	movl	$49344, %eax
	movq	%rbx, %rdi
	cmove	%rax, %rbp
	movl	$36384, %esi
	call	_get_frame_param
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	je	L597
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$7, %edx
	je	L597
	movl	$49344, %r8d
	movq	%rbp, %rcx
	movl	$49344, %edx
	leaq	5(%rbx), %rsi
	movl	$25680, %edi
	call	_call4
	sarq	$2, %rax
	movl	%eax, 24(%rsp)
L658:
	movl	$36336, %esi
	movq	%rbx, %rdi
	call	_get_frame_param
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	je	L599
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$7, %edx
	je	L599
	movl	$49344, %r8d
	movq	%rbp, %rcx
	xorl	%edx, %edx
	leaq	5(%rbx), %rsi
	movl	$25680, %edi
	call	_call4
	sarq	$2, %rax
	movq	%rax, %r15
L659:
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	addw	$-128, %ax
	jne	L601
	movzbl	217(%rbx), %eax
	shrb	$6, %al
	andl	$1, %eax
	addl	364(%rbx), %eax
	addl	$2, %eax
	cmpl	%eax, %r15d
	cmovl	%eax, %r15d
L601:
	cmpl	$4, %r14d
	leal	-2(%r14), %eax
	setg	%r8b
	cmpl	$2, %eax
	ja	L602
	movl	76(%rsp), %eax
	movl	68(%rsp), %edx
	movl	16(%rsp), %ebp
	addl	72(%rsp), %edx
	movl	20(%rsp), %ecx
	addl	%eax, %eax
	subl	%edx, %ebp
	subl	%eax, %ebp
	subl	%eax, %ecx
	cmpl	24(%rsp), %ecx
	jl	L603
	cmpl	$4, %r14d
	movb	%r8b, 68(%rsp)
	jne	L762
	movzbl	220(%rbx), %edi
	cmpl	%r15d, %ebp
	movl	$1, %r9d
	movl	340(%rbx), %ecx
	setge	%r10b
	setl	%r8b
	movl	20(%rsp), %esi
	movl	352(%rbx), %eax
	movl	%edi, %edx
	addl	356(%rbx), %eax
	andl	$3, %edx
	addl	%ecx, %ecx
	movl	%esi, 8(%rsp)
	jmp	L610
	.align 4,0x90
L599:
	sarq	$2, %rax
	movl	$1, %r15d
	testl	%eax, %eax
	cmovg	%eax, %r15d
	imull	376(%rbx), %r15d
	jmp	L659
	.align 4,0x90
L597:
	sarq	$2, %rax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	imull	372(%rbx), %eax
	movl	%eax, 24(%rsp)
	jmp	L658
	.align 4,0x90
L602:
	cmpl	$5, %r14d
	movzbl	220(%rbx), %edi
	movl	$1, %r8d
	movl	340(%rbx), %ecx
	sete	%r9b
	movl	356(%rbx), %eax
	movl	%r9d, %r10d
	addl	352(%rbx), %eax
	movl	%edi, %edx
	andl	$3, %edx
	addl	%ecx, %ecx
L608:
	testb	%dl, %dl
	jne	L763
L611:
	movl	24(%rsp), %esi
	addl	%eax, %r12d
	addl	%ecx, %r12d
	addl	%ecx, %esi
	cmpl	%esi, %r12d
	cmovge	%r12d, %esi
	movl	%esi, 8(%rsp)
L610:
	movl	8(%rsp), %r11d
	movl	%r11d, %esi
	movl	%r11d, %r12d
	subl	%ecx, %esi
	testb	%dl, %dl
	je	L612
	subl	428(%rbx), %r12d
L612:
	subl	%eax, %r12d
	andl	$4, %edi
	movl	16(%rsp), %ebp
	subl	%ecx, %r12d
	movl	%r12d, %eax
	cltd
	idivl	32(%rsp)
	movl	228(%rbx), %edx
	addl	368(%rbx), %edx
	testb	%r8b, %r8b
	movl	%eax, 24(%rsp)
	movl	%eax, 32(%rsp)
	je	L613
	addl	%edx, %r13d
	testb	%dil, %dil
	jne	L764
L614:
	leal	(%rdx,%r15), %ebp
	addl	%ecx, %r13d
	addl	%ecx, %ebp
	cmpl	%r13d, %ebp
	cmovl	%r13d, %ebp
L613:
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	%eax, %r8d
	subl	%ecx, %r8d
	testb	%dil, %dil
	movl	%r8d, %r13d
	je	L615
	subl	436(%rbx), %eax
	movl	%eax, %r13d
	subl	%ecx, %r13d
L615:
	movl	%r13d, %eax
	cltd
	idivl	52(%rsp)
	movabsq	$17592202821632, %rdx
	movl	%eax, %r15d
	movabsq	$17592244764672, %rax
	andq	216(%rbx), %rax
	cmpq	%rdx, %rax
	je	L765
L616:
	cmpl	%r12d, 56(%rsp)
	jne	L623
	cmpl	%r13d, 60(%rsp)
	jne	L623
	cmpl	%esi, 48(%rsp)
	jne	L623
	cmpl	40(%rsp), %r8d
	jne	L623
	movl	20(%rsp), %esi
	cmpl	%esi, 8(%rsp)
	jne	L624
	cmpl	16(%rsp), %ebp
	jne	L624
	movl	24(%rsp), %edi
	cmpl	%edi, 88(%rsp)
	jne	L624
	cmpl	%r15d, 92(%rsp)
	je	L766
L624:
	movq	_interrupt_input_blocked@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
L625:
	movl	24(%rsp), %edi
	cmpl	%edi, 88(%rsp)
	je	L628
	movl	$49344, %edx
	movl	$55728, %edi
	movl	%r8d, 48(%rsp)
	leaq	5(%rbx), %rsi
	call	_call2
	movl	48(%rsp), %r8d
L628:
	cmpl	40(%rsp), %r8d
	jne	L630
	movq	80(%rsp), %rdi
	movl	228(%rbx), %eax
	addl	368(%rbx), %eax
	cmpl	%eax, 252(%rdi)
	je	L631
L630:
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	%r8d, %esi
	movq	%rbx, %rdi
	call	_resize_frame_windows
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	addw	$-128, %ax
	jne	L634
	cmpb	$0, 64(%rsp)
	je	L767
L634:
	movslq	%ebp, %rax
	leaq	2(,%rax,4), %rcx
	movslq	8(%rsp), %rax
	leaq	2(,%rax,4), %rdx
	movq	%rax, %r14
	movslq	16(%rsp), %rax
	leaq	2(,%rax,4), %rsi
	movslq	20(%rsp), %rax
	leaq	2(,%rax,4), %rdi
	call	_list4
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	$9936, %esi
	movq	%rax, %r8
	movq	%rbx, %rdi
	call	_frame_size_history_add
	movl	24(%rsp), %eax
	movl	%r12d, 296(%rbx)
	movzbl	220(%rbx), %edx
	movl	%r13d, 300(%rbx)
	movl	%r14d, 320(%rbx)
	movl	%ebp, 324(%rbx)
	movl	%eax, 280(%rbx)
	testb	$3, %dl
	je	L636
	addl	432(%rbx), %eax
	movl	%eax, 32(%rsp)
L636:
	movl	32(%rsp), %eax
	movl	%r15d, 284(%rbx)
	addl	360(%rbx), %eax
	movl	%eax, 288(%rbx)
	movl	224(%rbx), %eax
	addl	364(%rbx), %eax
	addl	%eax, %r15d
	andl	$4, %edx
	je	L637
	addl	440(%rbx), %r15d
L637:
	movq	56(%rbx), %rax
	movl	%r15d, 292(%rbx)
	movl	$1, %esi
	leaq	100(%rsp), %rcx
	leaq	96(%rsp), %rdx
	leaq	108(%rsp), %r9
	leaq	-5(%rax), %r12
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	call	_window_box
	movl	104(%rsp), %eax
	addl	96(%rsp), %eax
	cmpl	%eax, 368(%r12)
	jl	L638
	movl	$0, 368(%r12)
	movl	$0, 376(%r12)
L638:
	movl	108(%rsp), %eax
	addl	100(%rsp), %eax
	cmpl	%eax, 372(%r12)
	jl	L639
	movl	$0, 372(%r12)
	movl	$0, 380(%r12)
L639:
	movl	$49344, %edi
	call	_sanitize_window_sizes
	xorl	%edi, %edi
	call	_sanitize_window_sizes
	movq	%rbx, %rdi
	call	_adjust_frame_glyphs
	movq	%rbx, %rdi
	call	_calculate_costs
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	movl	20(%rsp), %ecx
	orb	$32, 217(%rbx)
	cmpl	%ecx, 8(%rsp)
	setne	%al
	cmpl	16(%rsp), %ebp
	setne	%dl
	orl	%edx, %eax
	leal	(%rax,%rax), %edx
	movzbl	216(%rbx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 216(%rbx)
	call	_unblock_input
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L640
	jmp	L592
	.align 4,0x90
L643:
	movq	8(%r15), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L592
L640:
	movq	-3(%rax), %r12
	leaq	-3(%rax), %r15
	subq	$5, %r12
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	L643
	subq	$5, %rax
	cmpq	%rax, %rbx
	jne	L643
	movl	$32352, %esi
	movq	%r12, %rdi
	call	_get_frame_param
	testq	%rax, %rax
	movq	%rax, %r13
	je	L643
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	8(%rsp), %xmm0
	movl	%eax, %r14d
	cvtsi2sd	20(%rsp), %xmm1
	andl	$7, %r14d
	cmpl	$3, %r14d
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	16(%rsp), %xmm1
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)
	je	L768
	movq	lC5(%rip), %rax
	pxor	%xmm1, %xmm1
	movl	$-1, %ecx
	movq	%r12, %rdi
	cvtsi2sd	312(%r12), %xmm1
	mulsd	24(%rsp), %xmm1
	movd	%rax, %xmm0
	movq	%rax, 40(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sd	316(%r12), %xmm1
	mulsd	32(%rsp), %xmm1
	movl	%esi, 312(%r12)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 316(%r12)
	call	_x_set_offset
	movsd	40(%rsp), %xmm0
L665:
	movzbl	220(%r12), %ecx
	pxor	%xmm1, %xmm1
	cvtsi2sd	320(%r12), %xmm1
	mulsd	24(%rsp), %xmm1
	testb	$3, %cl
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	je	L653
	subl	428(%r12), %esi
L653:
	movl	340(%r12), %eax
	subl	356(%r12), %esi
	subl	352(%r12), %esi
	addl	%eax, %eax
	subl	%eax, %esi
	cmpl	$3, %r14d
	je	L670
L654:
	pxor	%xmm1, %xmm1
	cvtsi2sd	324(%r12), %xmm1
	mulsd	32(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	subl	228(%r12), %edx
	subl	368(%r12), %edx
	andl	$4, %ecx
	je	L656
	subl	436(%r12), %edx
L656:
	subl	%eax, %edx
L655:
	xorl	%r8d, %r8d
	movl	$32352, %r9d
	movl	$1, %ecx
	movq	%r12, %rdi
	call	_adjust_frame_size
	movq	8(%r15), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L640
L592:
	addq	$120, %rsp
LCFI309:
	popq	%rbx
LCFI310:
	popq	%rbp
LCFI311:
	popq	%r12
LCFI312:
	popq	%r13
LCFI313:
	popq	%r14
LCFI314:
	popq	%r15
LCFI315:
	ret
	.align 4,0x90
L623:
LCFI316:
	movq	_interrupt_input_blocked@GOTPCREL(%rip), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	cmpl	%esi, 48(%rsp)
	movl	%eax, (%rdx)
	je	L625
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%r8d, 48(%rsp)
	call	_resize_frame_windows
	movzwl	218(%rbx), %eax
	movl	48(%rsp), %r8d
	andw	$896, %ax
	addw	$-128, %ax
	jne	L628
	cmpb	$0, 64(%rsp)
	jne	L628
	movq	384(%rbx), %rax
	movl	24(%rsp), %edi
	movq	88(%rax), %rax
	movq	72(%rax), %rax
	movl	%edi, 136(%rax)
	jmp	L628
	.align 4,0x90
L764:
	addl	436(%rbx), %r13d
	jmp	L614
	.align 4,0x90
L763:
	addl	428(%rbx), %r12d
	jmp	L611
	.align 4,0x90
L603:
	cmpl	%r15d, %ebp
	jl	L671
	cmpl	$4, %r14d
	jne	L609
	movzbl	220(%rbx), %edi
	movl	$1, %r10d
	xorl	%r9d, %r9d
	movl	340(%rbx), %ecx
	movl	352(%rbx), %eax
	addl	356(%rbx), %eax
	movl	%edi, %edx
	andl	$3, %edx
	addl	%ecx, %ecx
	jmp	L608
	.align 4,0x90
L765:
	testb	%r9b, %r9b
	jne	L617
	testl	$-3, %r14d
	je	L618
	movl	20(%rsp), %edi
	cmpl	%edi, 8(%rsp)
	je	L617
L618:
	cmpb	$1, %r10b
	sbbq	%rsi, %rsi
	xorl	%edi, %edi
	notq	%rsi
	andl	$49344, %esi
	testb	%r10b, %r10b
	cmovne	60(%rsp), %r13d
L662:
	call	_list2
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%rax, %r8
	movq	%rbx, %rdi
	movl	$9888, %esi
	call	_frame_size_history_add
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%rbx, %rdi
	movl	$1, %r8d
	xorl	%esi, %esi
	call	_x_set_window_size
	orb	$2, 216(%rbx)
	addq	$120, %rsp
LCFI317:
	popq	%rbx
LCFI318:
	popq	%rbp
LCFI319:
	popq	%r12
LCFI320:
	popq	%r13
LCFI321:
	popq	%r14
LCFI322:
	popq	%r15
LCFI323:
	ret
	.align 4,0x90
L617:
LCFI324:
	testb	%r10b, %r10b
	jne	L616
	cmpl	16(%rsp), %ebp
	jne	L619
	testl	%r14d, %r14d
	je	L619
	cmpl	$2, %r14d
	jne	L616
	xorl	%esi, %esi
	cmpb	$1, %r9b
	sbbq	%rdi, %rdi
	notq	%rdi
	andl	$49344, %edi
	testb	%r9b, %r9b
	cmovne	56(%rsp), %r12d
	jmp	L662
	.align 4,0x90
L761:
	movabsq	$4611686019484352512, %rcx
	andq	-5(%rax), %rcx
	movabsq	$4611686018494496768, %rsi
	cmpq	%rsi, %rcx
	jne	L593
	movq	3(%rax), %rsi
	leaq	-5(%rsi), %rcx
	cmpq	%rcx, %rdi
	jne	L593
	cmpq	%rax, %rdx
	je	L593
	movl	263(%rax), %edi
	addl	%edi, 40(%rsp)
	jmp	L593
	.align 4,0x90
L769:
	cmpl	%r15d, %ebp
	jge	L609
	.align 4,0x90
L671:
	movzbl	220(%rbx), %edi
	movl	$1, %r8d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	movl	340(%rbx), %ecx
	movl	352(%rbx), %eax
	addl	356(%rbx), %eax
	movl	%edi, %edx
	andl	$3, %edx
	addl	%ecx, %ecx
	jmp	L608
	.align 4,0x90
L762:
	movq	8(%rsp), %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_frame_inhibit_resize
	movzbl	68(%rsp), %r8d
	testb	%al, %al
	movl	%eax, %r9d
	je	L769
	cmpl	%r15d, %ebp
	movl	%r8d, %ebp
	jge	L660
	movl	%eax, %r8d
	xorl	%r10d, %r10d
	jmp	L661
	.align 4,0x90
L609:
	movl	$1, %ebp
	xorl	%r9d, %r9d
L660:
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movb	%r8b, 72(%rsp)
	movb	%r9b, 68(%rsp)
	call	_frame_inhibit_resize
	movzbl	72(%rsp), %r8d
	movzbl	68(%rsp), %r9d
	movl	%eax, %r10d
	xorl	$1, %eax
	orl	%eax, %r8d
L661:
	movzbl	220(%rbx), %edi
	movl	340(%rbx), %esi
	movl	356(%rbx), %eax
	addl	352(%rbx), %eax
	movl	%edi, %edx
	leal	(%rsi,%rsi), %ecx
	andl	$3, %edx
	testb	%bpl, %bpl
	jne	L608
	movl	20(%rsp), %esi
	movl	%esi, 8(%rsp)
	jmp	L610
	.align 4,0x90
L631:
	cmpl	%r15d, 92(%rsp)
	je	L634
	leaq	5(%rbx), %rsi
	xorl	%edx, %edx
	movl	$55728, %edi
	call	_call2
	jmp	L634
	.align 4,0x90
L768:
	movq	%rax, %rdi
	call	_Fcdr
	testq	%rax, %rax
	je	L651
	movq	%r13, %rdi
	call	_Fcdr
	cmpq	$51072, %rax
	je	L770
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	cvtsi2sd	312(%r12), %xmm0
	mulsd	24(%rsp), %xmm0
	addsd	lC5(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 40(%rsp)
	call	_Fcar
	testq	%rax, %rax
	je	L666
	movq	%r13, %rdi
	call	_Fcar
	cmpq	$28560, %rax
	je	L666
L649:
	movl	40(%rsp), %eax
	movl	%eax, 312(%r12)
L648:
	movq	%r13, %rdi
	call	_Fcdr
	cmpq	$33600, %rax
	je	L771
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	cvtsi2sd	316(%r12), %xmm0
	mulsd	32(%rsp), %xmm0
	addsd	lC5(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, 48(%rsp)
	call	_Fcar
	movl	48(%rsp), %edx
	testq	%rax, %rax
	je	L668
	movq	%r13, %rdi
	movl	%edx, 48(%rsp)
	call	_Fcar
	movl	48(%rsp), %edx
	cmpq	$55632, %rax
	je	L668
L652:
	movl	40(%rsp), %esi
	movl	%edx, 316(%r12)
	movl	$-1, %ecx
	movq	%r12, %rdi
	call	_x_set_offset
L651:
	movq	%r13, %rdi
	call	_Fcar
	testq	%rax, %rax
	je	L643
	movq	%r13, %rdi
	call	_Fcar
	cmpq	$28560, %rax
	je	L683
	movsd	lC5(%rip), %xmm0
	jmp	L665
	.align 4,0x90
L668:
	movl	324(%rbx), %eax
	subl	324(%r12), %eax
	cmpl	%edx, %eax
	jge	L652
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	L652
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	32(%rsp), %xmm0
	mulsd	lC5(%rip), %xmm0
	addsd	lC5(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	jmp	L652
	.align 4,0x90
L666:
	movl	320(%rbx), %eax
	subl	320(%r12), %eax
	cmpl	40(%rsp), %eax
	jge	L649
	testl	%eax, %eax
	movl	$0, 40(%rsp)
	jle	L649
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	24(%rsp), %xmm0
	mulsd	lC5(%rip), %xmm0
	addsd	lC5(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 40(%rsp)
	jmp	L649
	.align 4,0x90
L767:
	movq	384(%rbx), %rax
	movq	88(%rax), %rax
	movq	72(%rax), %rdx
	movl	224(%rbx), %eax
	addl	364(%rbx), %eax
	addl	%r15d, %eax
	movl	%eax, 140(%rdx)
	jmp	L634
L683:
	movl	$-1, %esi
L670:
	movq	%r13, %rdi
	movl	%esi, 24(%rsp)
	call	_Fcar
	movl	$-1, %edx
	movl	24(%rsp), %esi
	cmpq	$55632, %rax
	je	L655
	movl	340(%r12), %eax
	movq	lC5(%rip), %rdi
	movzbl	220(%r12), %ecx
	addl	%eax, %eax
	movd	%rdi, %xmm0
	jmp	L654
	.align 4,0x90
L619:
	testb	%r9b, %r9b
	cmovne	56(%rsp), %r12d
	xorl	%esi, %esi
	cmpb	$1, %r9b
	sbbq	%rdi, %rdi
	notq	%rdi
	andl	$49344, %edi
	jmp	L662
L766:
	movl	$49344, %edi
	call	_sanitize_window_sizes
	xorl	%edi, %edi
	call	_sanitize_window_sizes
	jmp	L592
L770:
	movl	312(%r12), %eax
	movl	%eax, 40(%rsp)
	jmp	L648
L771:
	movl	316(%r12), %edx
	movl	$-1, %ecx
	movq	%r12, %rdi
	movl	40(%rsp), %esi
	call	_x_set_offset
	jmp	L651
LFE915:
	.align 4,0x90
	.globl _Fset_frame_height
_Fset_frame_height:
LFB987:
	pushq	%r12
LCFI325:
	movq	%rcx, %r12
	pushq	%rbp
LCFI326:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI327:
	movq	%rsi, %rbx
	call	_decode_live_frame
	movl	%ebx, %edx
	movq	%rbx, %rsi
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L778
	sarq	$2, %rsi
	movl	$2147483648, %r8d
	movl	$4294967295, %edx
	addq	%rsi, %r8
	cmpq	%rdx, %r8
	ja	L779
	testq	%r12, %r12
	movl	%esi, %edx
	jne	L776
	imull	376(%rax), %edx
L776:
	testq	%rbp, %rbp
	movq	%rax, %rdi
	movl	$28512, %r9d
	setne	%r8b
	movl	$1, %ecx
	movl	$-1, %esi
	movzbl	%r8b, %r8d
	call	_adjust_frame_size
	popq	%rbx
LCFI328:
	xorl	%eax, %eax
	popq	%rbp
LCFI329:
	popq	%r12
LCFI330:
	ret
L779:
LCFI331:
	movabsq	$8589934590, %rdx
	movq	%rbx, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L778:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE987:
	.align 4,0x90
	.globl _Fset_frame_width
_Fset_frame_width:
LFB988:
	pushq	%r12
LCFI332:
	movq	%rcx, %r12
	pushq	%rbp
LCFI333:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI334:
	movq	%rsi, %rbx
	call	_decode_live_frame
	movl	%ebx, %edx
	movq	%rbx, %rsi
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L786
	sarq	$2, %rsi
	movl	$2147483648, %r8d
	movl	$4294967295, %edx
	addq	%rsi, %r8
	cmpq	%rdx, %r8
	ja	L787
	testq	%r12, %r12
	jne	L784
	imull	372(%rax), %esi
L784:
	testq	%rbp, %rbp
	movq	%rax, %rdi
	movl	$55584, %r9d
	setne	%r8b
	movl	$1, %ecx
	movl	$-1, %edx
	movzbl	%r8b, %r8d
	call	_adjust_frame_size
	popq	%rbx
LCFI335:
	xorl	%eax, %eax
	popq	%rbp
LCFI336:
	popq	%r12
LCFI337:
	ret
L787:
LCFI338:
	movabsq	$8589934590, %rdx
	movq	%rbx, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L786:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE988:
	.align 4,0x90
	.globl _Fset_frame_size
_Fset_frame_size:
LFB989:
	pushq	%r12
LCFI339:
	movq	%rcx, %r12
	pushq	%rbp
LCFI340:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI341:
	movq	%rsi, %rbx
	call	_decode_live_frame
	movl	%ebx, %edx
	movq	%rbx, %rsi
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L796
	sarq	$2, %rsi
	movl	$2147483648, %r8d
	movl	$4294967295, %ecx
	leaq	(%rsi,%r8), %rdx
	cmpq	%rcx, %rdx
	ja	L797
	movl	%ebp, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L798
	movq	%rbp, %rdx
	sarq	$2, %rdx
	addq	%rdx, %r8
	cmpq	%rcx, %r8
	ja	L799
	testq	%r12, %r12
	je	L800
L794:
	movq	%rax, %rdi
	movl	$47328, %r9d
	xorl	%r8d, %r8d
	movl	$1, %ecx
	call	_adjust_frame_size
	popq	%rbx
LCFI342:
	xorl	%eax, %eax
	popq	%rbp
LCFI343:
	popq	%r12
LCFI344:
	ret
	.align 4,0x90
L800:
LCFI345:
	imull	372(%rax), %esi
	imull	376(%rax), %edx
	jmp	L794
L799:
	movabsq	$8589934590, %rdx
	movq	%rbp, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L797:
	movabsq	$8589934590, %rdx
	movq	%rbx, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L798:
	movq	%rbp, %rsi
L796:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE989:
	.align 4,0x90
	.globl _do_switch_frame
_do_switch_frame:
LFB924:
	pushq	%r15
LCFI346:
	pushq	%r14
LCFI347:
	pushq	%r13
LCFI348:
	pushq	%r12
LCFI349:
	pushq	%rbp
LCFI350:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI351:
	subq	$24, %rsp
LCFI352:
	movq	_selected_frame@GOTPCREL(%rip), %r13
	movq	0(%r13), %rdi
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L802
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdi), %rax
	leaq	-5(%rdi), %r12
	movabsq	$4611686018477719552, %rdi
	cmpq	%rdi, %rax
	jne	L802
	cmpq	$0, 384(%r12)
	je	L802
	movl	%ebp, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L851
L804:
	cmpl	$5, %eax
	jne	L805
	movq	-5(%rbp), %r15
	leaq	-5(%rbp), %rbx
	movabsq	$4611686019484352512, %r14
	movabsq	$4611686018477719552, %rax
	andq	%r14, %r15
	cmpq	%rax, %r15
	jne	L805
	cmpq	$0, 384(%rbx)
	je	L827
	cmpq	%rbx, %r12
	je	L834
	testl	%esi, %esi
	je	L809
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L852
L809:
	testl	%edx, %edx
	jne	L813
	movq	64(%r12), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	je	L853
L813:
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	addw	$-128, %ax
	je	L854
	movq	64(%rbx), %rax
	movq	%rbp, 0(%r13)
	cmpq	%rax, 48(%rbx)
	je	L823
L857:
	movq	%rbx, _last_nonminibuf_frame(%rip)
L823:
	movq	56(%rbx), %rdi
	movq	%rcx, %rsi
	call	_Fselect_window
	movq	32(%r12), %rax
	testq	%rax, %rax
	jne	L850
L824:
	movq	_internal_last_event_frame@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
L834:
	addq	$24, %rsp
LCFI353:
	movq	%rbp, %rax
	popq	%rbx
LCFI354:
	popq	%rbp
LCFI355:
	popq	%r12
LCFI356:
	popq	%r13
LCFI357:
	popq	%r14
LCFI358:
	popq	%r15
LCFI359:
	ret
	.align 4,0x90
L855:
LCFI360:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L824
L850:
	subq	$5, %rax
	je	L824
	cmpq	%rbx, %rax
	jne	L855
	jmp	L834
	.align 4,0x90
L854:
	movq	384(%rbx), %rax
	movq	88(%rax), %r14
	movq	80(%r14), %rax
	cmpq	%rbp, %rax
	je	L816
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	je	L856
L817:
	movzbl	217(%rbx), %eax
	movl	%eax, %edx
	andl	$12, %edx
	cmpb	$4, %dl
	je	L819
	movq	%rcx, (%rsp)
	call	_redisplay_other_windows
	movzbl	217(%rbx), %eax
	movq	(%rsp), %rcx
L819:
	testb	$32, %al
	je	L820
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
L820:
	movzbl	217(%rbx), %eax
	movl	280(%rbx), %edx
	andl	$-13, %eax
	orl	$4, %eax
	movb	%al, 217(%rbx)
	movq	72(%r14), %rax
	cmpl	136(%rax), %edx
	je	L821
	movl	%edx, 136(%rax)
L821:
	movl	292(%rbx), %edx
	cmpl	140(%rax), %edx
	je	L816
	movl	%edx, 140(%rax)
L816:
	movq	64(%rbx), %rax
	movq	%rbp, 80(%r14)
	cmpq	%rax, 48(%rbx)
	movq	%rbp, 0(%r13)
	jne	L857
	jmp	L823
	.align 4,0x90
L851:
	cmpq	$49008, -3(%rbp)
	je	L858
L805:
	movq	%rbp, %rsi
	movl	$25728, %edi
	call	_wrong_type_argument
	.align 4,0x90
L853:
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rax), %rdx
	leaq	-5(%rax), %rdi
	movq	%rdx, %rax
	movabsq	$4611686018494496768, %rdx
	cmpq	%rdx, %rax
	jne	L813
	movq	8(%rdi), %rax
	subq	$5, %rax
	cmpq	%rax, %r12
	jne	L813
	movl	$1, %esi
	movq	%rcx, (%rsp)
	call	_resize_mini_window
	movq	(%rsp), %rcx
	jmp	L813
	.align 4,0x90
L852:
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	movl	%edx, (%rsp)
	call	_x_get_focus_frame
	movl	(%rsp), %edx
	movl	%eax, %esi
	movq	8(%rsp), %rcx
	andl	$7, %esi
	cmpl	$5, %esi
	jne	L809
	movq	-5(%rax), %rsi
	andq	%r14, %rsi
	cmpq	%r15, %rsi
	jne	L809
	movq	35(%rax), %rdi
	movl	%edi, %r8d
	andl	$7, %r8d
	cmpl	$5, %r8d
	je	L859
L811:
	testq	%rdi, %rdi
	jne	L809
	movq	56(%r12), %rsi
	cmpq	%rsi, 64(%rbx)
	jne	L809
L812:
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rcx, 8(%rsp)
	movl	%edx, (%rsp)
	call	_Fredirect_frame_focus
	movq	8(%rsp), %rcx
	movl	(%rsp), %edx
	jmp	L809
	.align 4,0x90
L858:
	movq	5(%rbp), %rax
	movl	%eax, %edi
	andl	$7, %edi
	cmpl	$3, %edi
	jne	L805
	movq	-3(%rax), %rbp
	movl	%ebp, %eax
	andl	$7, %eax
	jmp	L804
	.align 4,0x90
L856:
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rax), %rdx
	leaq	-5(%rax), %rsi
	movq	%rdx, %rax
	movabsq	$4611686018477719552, %rdx
	cmpq	%rdx, %rax
	jne	L817
	testb	$32, 217(%rsi)
	je	L818
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
L818:
	movzbl	217(%rsi), %eax
	andl	$-13, %eax
	orl	$8, %eax
	movb	%al, 217(%rsi)
	jmp	L817
L827:
	xorl	%ebp, %ebp
	jmp	L834
L859:
	andq	-5(%rdi), %r14
	leaq	-5(%rdi), %r9
	cmpq	%rsi, %r14
	jne	L811
	movq	0(%r13), %r8
	movl	%r8d, %esi
	andl	$7, %esi
	cmpl	$5, %esi
	jne	L802
	movabsq	$4611686019484352512, %rsi
	andq	-5(%r8), %rsi
	leaq	-5(%r8), %r10
	movabsq	$4611686018477719552, %r8
	cmpq	%r8, %rsi
	jne	L802
	cmpq	$0, 384(%r10)
	je	L802
	cmpq	%r10, %r9
	jne	L811
	jmp	L812
L802:
	call	_emacs_abort
LFE924:
	.align 4,0x90
	.globl _Fselect_frame
_Fselect_frame:
LFB925:
	movq	%rsi, %rcx
	xorl	%edx, %edx
	movl	$1, %esi
	jmp	_do_switch_frame
LFE925:
	.align 4,0x90
	.globl _Fraise_frame
_Fraise_frame:
LFB955:
	pushq	%rbx
LCFI361:
	call	_decode_live_frame
	leaq	5(%rax), %rdi
	movq	%rax, %rbx
	movzwl	218(%rax), %eax
	andw	$896, %ax
	addw	$-128, %ax
	je	L869
	call	_Fmake_frame_visible
L863:
	movq	384(%rbx), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	L864
	movl	$1, %esi
	movq	%rbx, %rdi
	call	*%rax
L864:
	xorl	%eax, %eax
	popq	%rbx
LCFI362:
	ret
	.align 4,0x90
L869:
LCFI363:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$1, %esi
	call	_do_switch_frame
	jmp	L863
LFE955:
	.cstring
lC6:
	.ascii "handle-focus-in\0"
	.text
	.align 4,0x90
	.globl _Fhandle_switch_frame
_Fhandle_switch_frame:
LFB926:
	pushq	%rbp
LCFI364:
	pushq	%rbx
LCFI365:
	movq	%rdi, %rbx
	movl	$37968, %edi
	subq	$8, %rsp
LCFI366:
	movq	_globals@GOTPCREL(%rip), %rax
	movq	408(%rax), %rdx
	movq	_current_kboard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, 48(%rax)
	call	_run_hook
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	_do_switch_frame
	movl	$15, %esi
	leaq	lC6(%rip), %rdi
	movq	%rax, %rbp
	call	_intern_1
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_call1
	addq	$8, %rsp
LCFI367:
	movq	%rbp, %rax
	popq	%rbx
LCFI368:
	popq	%rbp
LCFI369:
	ret
LFE926:
	.align 4,0x90
	.globl _frame_ancestor_p
_frame_ancestor_p:
LFB930:
	movq	32(%rsi), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	L872
	subq	$5, %rdx
	je	L872
	cmpq	%rdx, %rdi
	je	L879
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	je	L883
	.align 4,0x90
L874:
	subq	$5, %rdx
	je	L880
	cmpq	%rdx, %rdi
	je	L879
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	jne	L874
L880:
	xorl	%eax, %eax
L872:
	ret
	.align 4,0x90
L879:
	movl	$1, %eax
	ret
	.align 4,0x90
L883:
	ret
LFE930:
	.cstring
	.align 3
lC7:
	.ascii "Attempt to delete the sole visible or iconified frame\0"
	.align 3
lC8:
	.ascii "Attempt to delete the only frame\0"
	.align 3
lC9:
	.ascii "Attempt to delete a surrogate minibuffer frame\0"
	.text
	.align 4,0x90
	.globl _delete_frame
_delete_frame:
LFB940:
	pushq	%r15
LCFI370:
	pushq	%r14
LCFI371:
	pushq	%r13
LCFI372:
	pushq	%r12
LCFI373:
	movl	$1, %r12d
	pushq	%rbp
LCFI374:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI375:
	subq	$8, %rsp
LCFI376:
	call	_decode_any_frame
	movq	%rax, %r13
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	L885
	xorl	%r12d, %r12d
	cmpq	$5, %rax
	sete	%r12b
L885:
	cmpq	$0, 384(%r13)
	je	L978
	cmpq	$39120, %rbp
	je	L888
	xorl	%edx, %edx
	testq	%rbp, %rbp
	movq	%r13, %rdi
	setne	%dl
	xorl	%esi, %esi
	call	_other_frames
	testb	%al, %al
	jne	L888
L907:
	testq	%rbp, %rbp
	je	L1011
	leaq	lC8(%rip), %rdi
	xorl	%eax, %eax
	call	_error
	.align 4,0x90
L888:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	leaq	5(%r13), %rbx
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L891
L890:
	movq	-3(%rax), %r14
	leaq	-3(%rax), %r15
	leaq	-5(%r14), %rdi
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	L892
	subq	$5, %rax
	cmpq	%rax, %r13
	je	L895
L892:
	testl	%r12d, %r12d
	jne	L1012
L893:
	movq	8(%r15), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L890
L891:
	movq	64(%r13), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	je	L1013
L898:
	movzbl	219(%r13), %r12d
	movq	_Vrun_hooks@GOTPCREL(%rip), %rax
	shrb	$2, %r12b
	andl	$1, %r12d
	cmpq	$0, (%rax)
	je	L903
	testb	%r12b, %r12b
	jne	L903
	cmpq	$39120, %rbp
	je	L1014
	movq	%rbx, %rdi
	call	_x_clipboard_manager_save_frame
	movq	%rbx, %rdx
	movl	$19008, %esi
	movl	$45120, %edi
	call	_safe_call2
	cmpq	$0, 384(%r13)
	je	L978
L908:
	xorl	%edx, %edx
	testq	%rbp, %rbp
	movq	%r13, %rdi
	setne	%dl
	xorl	%esi, %esi
	call	_other_frames
	testb	%al, %al
	je	L907
L906:
	movq	_minibuf_window@GOTPCREL(%rip), %rdx
	xorl	%r15d, %r15d
	movq	_selected_window@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, (%rdx)
	movq	_selected_frame@GOTPCREL(%rip), %rax
	sete	%r15b
	movq	(%rax), %rcx
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L949
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rcx), %rdx
	leaq	-5(%rcx), %r14
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L949
	movq	384(%r14), %rsi
	testq	%rsi, %rsi
	je	L949
	cmpq	%r14, %r13
	je	L1015
L911:
	movl	%r15d, %esi
	movq	%rbx, %rdi
	call	_check_minibuf_window
	movq	_echo_area_window@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rax
	cmpq	%rax, 64(%r13)
	je	L1016
L922:
	movzwl	218(%r13), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1017
L923:
	movq	%r13, %rdi
	call	_free_glyphs
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	_font_update_drivers
	movq	48(%r13), %rdi
	call	_delete_all_child_windows
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movq	$0, 48(%r13)
	movq	(%rax), %rsi
	call	_Fdelq
	movq	_Vframe_list@GOTPCREL(%rip), %rsi
	movq	%r13, %rdi
	movq	$0, 112(%r13)
	movq	$0, 128(%r13)
	movq	$0, 136(%r13)
	movq	%rax, (%rsi)
	andb	$-13, 217(%r13)
	call	_free_font_driver_list
	movq	240(%r13), %rdi
	call	_xfree
	movq	248(%r13), %rdi
	call	_xfree
	movq	272(%r13), %rdi
	call	_xfree
	movq	264(%r13), %rdi
	call	_xfree
	movq	256(%r13), %rdi
	call	_xfree
	movq	_interrupt_input_blocked@GOTPCREL(%rip), %rdx
	movq	384(%r13), %r14
	movl	(%rdx), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
	movq	360(%r14), %rax
	testq	%rax, %rax
	je	L924
	movq	%r13, %rdi
	call	*%rax
	movq	384(%r13), %r14
L924:
	movq	$0, 392(%r13)
	movq	$0, 384(%r13)
	call	_unblock_input
	subl	$1, 52(%r14)
	jne	L925
	cmpl	$2, 56(%r14)
	je	L1018
	leaq	5(%r14), %rdi
	testq	%rbp, %rbp
	movl	$49344, %eax
	cmove	%rax, %rbp
	movq	%rbp, %rsi
	call	_Fdelete_terminal
	cmpq	_last_nonminibuf_frame(%rip), %r13
	je	L1019
L928:
	testb	%r12b, %r12b
	jne	L978
	movq	_update_mode_lines@GOTPCREL(%rip), %rax
	movl	$15, (%rax)
L978:
	addq	$8, %rsp
LCFI377:
	xorl	%eax, %eax
	popq	%rbx
LCFI378:
	popq	%rbp
LCFI379:
	popq	%r12
LCFI380:
	popq	%r13
LCFI381:
	popq	%r14
LCFI382:
	popq	%r15
LCFI383:
	ret
	.align 4,0x90
L903:
LCFI384:
	cmpq	$0, 384(%r13)
	je	L978
	cmpq	$39120, %rbp
	je	L906
	jmp	L908
	.align 4,0x90
L1012:
	movl	$18768, %esi
	call	_get_frame_param
	cmpq	%rax, %rbx
	jne	L893
L895:
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	_delete_frame
	jmp	L893
	.align 4,0x90
L1013:
	movq	-5(%rax), %rdx
	leaq	-5(%rax), %rsi
	movabsq	$4611686019484352512, %rcx
	movabsq	$4611686018494496768, %rax
	andq	%rcx, %rdx
	cmpq	%rax, %rdx
	jne	L898
	movq	8(%rsi), %rax
	subq	$5, %rax
	cmpq	%rax, %r13
	jne	L898
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, %esi
	andl	$7, %esi
	cmpl	$3, %esi
	jne	L898
	movq	%rcx, %r14
	movq	%rdx, %r12
	jmp	L899
	.align 4,0x90
L900:
	movq	8(%r15), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L898
L899:
	movq	-3(%rax), %rdi
	leaq	-3(%rax), %r15
	cmpq	%rbx, %rdi
	je	L900
	movq	59(%rdi), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	jne	L900
	movq	-5(%rax), %rsi
	leaq	-5(%rax), %rdx
	andq	%r14, %rsi
	cmpq	%r12, %rsi
	jne	L900
	cmpq	%rbx, 8(%rdx)
	jne	L900
	cmpq	$39120, %rbp
	jne	L901
	movl	$39120, %esi
	call	_delete_frame
	jmp	L900
	.align 4,0x90
L1018:
	movl	$1, 52(%r14)
L925:
	cmpq	%r13, _last_nonminibuf_frame(%rip)
	movq	72(%r14), %rbp
	je	L1020
	testq	%rbp, %rbp
	je	L928
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L941
	leaq	-3(%rax), %rsi
	movq	-3(%rax), %rax
	leaq	-5(%rax), %rcx
L954:
	xorl	%edx, %edx
	jmp	L938
	.align 4,0x90
L1007:
	leaq	-3(%rax), %rsi
	movq	-3(%rax), %rax
	leaq	-5(%rax), %rcx
L938:
	movq	384(%rcx), %rcx
	cmpq	%rbp, 72(%rcx)
	cmove	%rax, %rdx
	movq	8(%rsi), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L1007
	testq	%rdx, %rdx
	je	L941
	cmpq	%rbx, 160(%rbp)
	jne	L928
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
L943:
	movabsq	$4611686019484352512, %r11
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movabsq	$4611686018494496768, %r10
	jmp	L947
	.align 4,0x90
L945:
	movq	8(%rsi), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L946
L947:
	movq	-3(%rax), %rdx
	leaq	-3(%rax), %rsi
	leaq	-5(%rdx), %rax
	movq	384(%rax), %rcx
	cmpq	%rbp, 72(%rcx)
	jne	L945
	movq	64(%rax), %rcx
	movl	%ecx, %edi
	andl	$7, %edi
	cmpl	$5, %edi
	je	L1021
L962:
	movq	%rdx, %r8
	jmp	L945
	.align 4,0x90
L1015:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rax
	jmp	L912
	.align 4,0x90
L913:
	movq	8(%rdx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L915
L912:
	movq	-3(%rax), %rdi
	leaq	-3(%rax), %rdx
	leaq	-5(%rdi), %rax
	cmpq	%rbx, %rdi
	je	L913
	testb	$4, 219(%rax)
	jne	L913
	cmpq	384(%rax), %rsi
	jne	L913
	testb	$12, 217(%rax)
	je	L913
	testq	%rdi, %rdi
	jne	L918
	jmp	L920
	.align 4,0x90
L1016:
	movq	64(%r14), %rax
	movq	%rax, (%rdx)
	jmp	L922
	.align 4,0x90
L915:
	testq	%rdi, %rdi
	je	L920
	cmpq	%rbx, %rdi
	je	L920
L918:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	$1, %edx
	call	_do_switch_frame
	movq	_selected_frame@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L949
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rcx), %rdx
	leaq	-5(%rcx), %r14
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L949
	cmpq	$0, 384(%r14)
	jne	L911
L949:
	call	_emacs_abort
	.align 4,0x90
L919:
	movq	8(%rdx), %rcx
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	L918
L920:
	movq	-3(%rcx), %rdi
	leaq	-3(%rcx), %rdx
	leaq	-5(%rdi), %rax
	cmpq	%rbx, %rdi
	je	L919
	movq	384(%rax), %rcx
	testq	%rcx, %rcx
	je	L919
	testb	$4, 219(%rax)
	jne	L919
	movzwl	218(%rax), %eax
	andw	$896, %ax
	addw	$-128, %ax
	jne	L918
	movq	88(%rcx), %rax
	movq	80(%rax), %rax
	cmpq	%rbx, %rax
	cmovne	%rax, %rdi
	jmp	L918
	.align 4,0x90
L1011:
	leaq	lC7(%rip), %rdi
	xorl	%eax, %eax
	call	_error
	.align 4,0x90
L1021:
	movq	-5(%rcx), %rdi
	andq	%r11, %rdi
	cmpq	%r10, %rdi
	jne	L962
	movq	3(%rcx), %rdi
	subq	$5, %rdi
	cmpq	%rdi, %rax
	jne	L962
	cmpq	%rcx, 48(%rax)
	movq	%rdx, %r9
	je	L946
	movq	%rdx, %r8
	jmp	L945
	.align 4,0x90
L946:
	testq	%r8, %r8
	je	L944
	testq	%r9, %r9
	je	L949
	movq	%r9, 160(%rbp)
	jmp	L928
	.align 4,0x90
L1017:
	movq	%r13, %rdi
	call	_x_clear_frame_selections
	jmp	L923
	.align 4,0x90
L1014:
	movq	_pending_funcalls@GOTPCREL(%rip), %r14
	movq	%rbx, %rdx
	movl	$19008, %esi
	movl	$45120, %edi
	movq	(%r14), %r15
	call	_list3
	movq	%rax, %rdi
	movq	%r15, %rsi
	call	_Fcons
	cmpq	$0, 384(%r13)
	movq	%rax, (%r14)
	jne	L906
	jmp	L978
L931:
	testq	%rbp, %rbp
	je	L928
	.align 4,0x90
L941:
	movq	%rbp, %rdi
	call	_not_single_kboard_state
	cmpq	%rbx, 160(%rbp)
	jne	L928
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L943
L944:
	movq	$0, 160(%rbp)
	jmp	L928
	.align 4,0x90
L1020:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	$0, _last_nonminibuf_frame(%rip)
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L931
L929:
	leaq	-3(%rax), %rsi
	movq	-3(%rax), %rax
	movq	%rsi, %rdi
	leaq	-5(%rax), %rcx
	movq	64(%rcx), %rdx
	cmpq	%rdx, 48(%rcx)
	je	L932
	jmp	L1022
	.align 4,0x90
L1023:
	leaq	-3(%rdx), %rdi
	movq	-3(%rdx), %rdx
	subq	$5, %rdx
	movq	64(%rdx), %r10
	cmpq	%r10, 48(%rdx)
	jne	L934
L932:
	movq	8(%rdi), %rdx
	movl	%edx, %edi
	andl	$7, %edi
	cmpl	$3, %edi
	je	L1023
L933:
	testq	%rbp, %rbp
	jne	L954
	jmp	L928
	.align 4,0x90
L1019:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	xorl	%ebp, %ebp
	movq	$0, _last_nonminibuf_frame(%rip)
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L929
	jmp	L928
L1022:
	movq	%rcx, %rdx
	.align 4,0x90
L934:
	movq	%rdx, _last_nonminibuf_frame(%rip)
	jmp	L933
L901:
	leaq	lC9(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE940:
	.align 4,0x90
	.globl _Fdelete_frame
_Fdelete_frame:
LFB941:
	cmpq	$1, %rsi
	sbbq	%rsi, %rsi
	notq	%rsi
	andl	$49344, %esi
	jmp	_delete_frame
LFE941:
	.align 4,0x90
	.globl _frame_internal_border_part
_frame_internal_border_part:
LFB942:
	movl	340(%rdi), %ecx
	movl	376(%rdi), %eax
	movl	320(%rdi), %r11d
	movl	324(%rdi), %r8d
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%eax, %esi
	jle	L1028
	movl	%r11d, %edi
	subl	%eax, %edi
	cmpl	%esi, %edi
	jle	L1028
	testl	%edx, %edx
	js	L1052
	cmpl	%ecx, %edx
	movl	$3, %eax
	jle	L1121
L1052:
	movl	%r8d, %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	jg	L1040
	cmpl	%edx, %r8d
	jge	L1125
L1040:
	xorl	%eax, %eax
	ret
	.align 4,0x90
L1028:
	movl	%esi, %r9d
	pushq	%rbx
LCFI385:
	notl	%r9d
	shrl	$31, %r9d
	cmpl	%ecx, %esi
	setle	%dil
	andl	%r9d, %edi
	cmpl	%eax, %edx
	movl	%edi, %r10d
	jle	L1031
	movl	%r8d, %ebx
	subl	%eax, %ebx
	cmpl	%edx, %ebx
	jle	L1031
	testb	%dil, %dil
	movl	$1, %eax
	jne	L1027
	movl	%r11d, %eax
	subl	%ecx, %eax
	cmpl	%esi, %eax
	jg	L1051
	cmpl	%esi, %r11d
	movl	$5, %eax
	jge	L1027
	.align 4,0x90
L1051:
	xorl	%eax, %eax
L1027:
	popq	%rbx
LCFI386:
	ret
	.align 4,0x90
L1031:
LCFI387:
	movl	%r8d, %edi
	movl	%edx, %eax
	shrl	$31, %edi
	notl	%eax
	addl	%r8d, %edi
	shrl	$31, %eax
	sarl	%edi
	testb	%r10b, %r10b
	movl	%eax, %ebx
	je	L1032
	cmpl	%edi, %edx
	jg	L1053
	testb	%bl, %bl
	movl	$2, %eax
	jne	L1027
L1053:
	cmpl	%edi, %edx
	jle	L1051
	cmpl	%edx, %r8d
	movl	$8, %eax
	jge	L1027
	xorl	%eax, %eax
	jmp	L1027
	.align 4,0x90
L1032:
	cmpl	%esi, %r11d
	movl	%r11d, %eax
	setge	%r10b
	subl	%ecx, %eax
	cmpl	%esi, %eax
	jg	L1034
	testb	%r10b, %r10b
	je	L1034
	cmpl	%edi, %edx
	jg	L1054
	testb	%bl, %bl
	movl	$4, %eax
	jne	L1027
L1054:
	cmpl	%edi, %edx
	jle	L1051
	cmpl	%edx, %r8d
	jl	L1051
L1123:
	movl	$6, %eax
	popq	%rbx
LCFI388:
	ret
	.align 4,0x90
L1034:
LCFI389:
	movl	%r11d, %eax
	shrl	$31, %eax
	addl	%eax, %r11d
	sarl	%r11d
	cmpl	%ecx, %edx
	jg	L1036
	testb	%bl, %bl
	je	L1036
	cmpl	%r11d, %esi
	jg	L1055
	testb	%r9b, %r9b
	movl	$2, %eax
	jne	L1027
L1055:
	cmpl	%r11d, %esi
	jle	L1051
	testb	%r10b, %r10b
	movl	$4, %eax
	jne	L1027
	xorl	%eax, %eax
	jmp	L1027
	.align 4,0x90
L1036:
	movl	%r8d, %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	jg	L1051
	cmpl	%edx, %r8d
	jl	L1051
	cmpl	%r11d, %esi
	jg	L1056
	testb	%r9b, %r9b
	movl	$8, %eax
	jne	L1027
L1056:
	cmpl	%r11d, %esi
	jle	L1051
	testb	%r10b, %r10b
	jne	L1123
	xorl	%eax, %eax
	jmp	L1027
	.align 4,0x90
L1121:
LCFI390:
	ret
	.align 4,0x90
L1125:
	movl	$7, %eax
	ret
LFE942:
	.align 4,0x90
	.globl _frames_discard_buffer
_frames_discard_buffer:
LFB961:
	movq	_Vframe_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1132
	pushq	%r12
LCFI391:
	pushq	%rbp
LCFI392:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI393:
	.align 4,0x90
L1128:
	movq	-3(%rax), %rbx
	leaq	-3(%rax), %r12
	movq	%rbp, %rdi
	movq	123(%rbx), %rsi
	call	_Fdelq
	movq	131(%rbx), %rsi
	movq	%rbp, %rdi
	movq	%rax, 123(%rbx)
	call	_Fdelq
	movq	%rax, 131(%rbx)
	movq	8(%r12), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L1128
	popq	%rbx
LCFI394:
	popq	%rbp
LCFI395:
	popq	%r12
LCFI396:
	ret
	.align 4,0x90
L1132:
LCFI397:
	ret
LFE961:
	.align 4,0x90
	.globl _store_in_alist
_store_in_alist:
LFB962:
	pushq	%r13
LCFI398:
	pushq	%r12
LCFI399:
	movq	%rdx, %r12
	pushq	%rbp
LCFI400:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI401:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI402:
	movq	(%rdi), %rsi
	movq	%rbp, %rdi
	call	_Fassq
	testq	%rax, %rax
	je	L1140
	addq	$8, %rsp
LCFI403:
	movq	%r12, %rsi
	movq	%rax, %rdi
	popq	%rbx
LCFI404:
	popq	%rbp
LCFI405:
	popq	%r12
LCFI406:
	popq	%r13
LCFI407:
	jmp	_Fsetcdr
	.align 4,0x90
L1140:
LCFI408:
	movq	(%rbx), %r13
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_Fcons
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_Fcons
	movq	%rax, (%rbx)
	addq	$8, %rsp
LCFI409:
	popq	%rbx
LCFI410:
	popq	%rbp
LCFI411:
	popq	%r12
LCFI412:
	popq	%r13
LCFI413:
	ret
LFE962:
	.cstring
lC10:
	.ascii "tty\0"
lC11:
	.ascii "%lu\0"
	.text
	.align 4,0x90
	.globl _Fframe_parameters
_Fframe_parameters:
LFB967:
	pushq	%r12
LCFI414:
	pushq	%rbp
LCFI415:
	pushq	%rbx
LCFI416:
	subq	$48, %rsp
LCFI417:
	call	_decode_any_frame
	cmpq	$0, 384(%rax)
	je	L1167
	movq	72(%rax), %rdi
	leaq	8(%rsp), %rbp
	movq	%rax, %rbx
	call	_Fcopy_alist
	movzwl	218(%rbx), %edx
	movq	%rax, 8(%rsp)
	andw	$896, %dx
	cmpw	$256, %dx
	jne	L1202
L1143:
	movq	8(%rbx), %rdx
	movl	$38496, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movl	308(%rbx), %eax
	testl	%eax, %eax
	jne	L1203
	movl	284(%rbx), %eax
L1149:
	cltq
	movl	$28512, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movl	304(%rbx), %eax
	testl	%eax, %eax
	je	L1150
	testb	$8, 221(%rbx)
	je	L1151
	cltd
	idivl	372(%rbx)
L1151:
	cltq
	movl	$55584, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movzbl	217(%rbx), %edx
	movl	$37248, %esi
	movq	%rbp, %rdi
	salq	$57, %rdx
	sarq	$63, %rdx
	andl	$49344, %edx
	call	_store_in_alist
	movzbl	218(%rbx), %edx
	movl	$53424, %esi
	movq	%rbp, %rdi
	salq	$62, %rdx
	sarq	$63, %rdx
	andl	$49344, %edx
	call	_store_in_alist
	movq	128(%rbx), %rdx
	movl	$12912, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movq	136(%rbx), %rdx
	movl	$13344, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movzwl	218(%rbx), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1204
	movslq	364(%rbx), %rax
	movl	$36000, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
L1166:
	movq	8(%rsp), %rax
L1141:
	addq	$48, %rsp
LCFI418:
	popq	%rbx
LCFI419:
	popq	%rbp
LCFI420:
	popq	%r12
LCFI421:
	ret
	.align 4,0x90
L1203:
LCFI422:
	testb	$8, 221(%rbx)
	je	L1149
	cltd
	idivl	376(%rbx)
	jmp	L1149
	.align 4,0x90
L1202:
	movq	%rax, %rsi
	movl	$25104, %edi
	call	_Fassq
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1144
	movq	5(%rax), %rsi
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1205
L1144:
	movl	488(%rbx), %esi
	leaq	8(%rsp), %rbp
	movq	%rbx, %rdi
	call	_tty_color_name
L1198:
	movq	%rax, %rdx
	movl	$25104, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
L1145:
	movq	8(%rsp), %rsi
	movl	$11328, %edi
	call	_Fassq
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1146
	movq	5(%rax), %rsi
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1206
L1146:
	movl	480(%rbx), %esi
	movq	%rbx, %rdi
	call	_tty_color_name
L1199:
	movq	%rax, %rdx
	movl	$11328, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
L1147:
	leaq	lC10(%rip), %rdi
	movl	$3, %esi
	call	_make_string
	movl	$24528, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_store_in_alist
	jmp	L1143
	.align 4,0x90
L1150:
	movl	280(%rbx), %eax
	jmp	L1151
	.align 4,0x90
L1204:
	movslq	312(%rbx), %rdx
	movq	%rdx, %rax
	leaq	2(,%rdx,4), %rdx
	testl	%eax, %eax
	jns	L1200
	movq	%rdx, %rsi
	movl	$41616, %edi
	call	_list2
	movq	%rax, %rdx
L1200:
	movl	$33408, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movslq	316(%rbx), %rdx
	movq	%rdx, %rax
	leaq	2(,%rdx,4), %rdx
	testl	%eax, %eax
	jns	L1201
	movq	%rdx, %rsi
	movl	$41616, %edi
	call	_list2
	movq	%rax, %rdx
L1201:
	movl	$50784, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movslq	336(%rbx), %rax
	movl	$12192, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movslq	340(%rbx), %rax
	movl	$31104, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movslq	344(%rbx), %rax
	movl	$44688, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movslq	348(%rbx), %rax
	movl	$12432, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movslq	352(%rbx), %rax
	movl	$33504, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	movslq	356(%rbx), %rax
	movl	$44784, %esi
	movq	%rbp, %rdi
	leaq	2(,%rax,4), %rdx
	call	_store_in_alist
	testb	$3, 220(%rbx)
	movl	$2, %edx
	je	L1159
	movslq	428(%rbx), %rax
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	L1159
	leaq	2(,%rax,4), %rdx
L1159:
	movl	$45792, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	testb	$4, 220(%rbx)
	movl	$2, %edx
	je	L1160
	movslq	436(%rbx), %rax
	xorl	%edx, %edx
	testl	%eax, %eax
	jle	L1160
	leaq	2(,%rax,4), %rdx
L1160:
	leaq	16(%rsp), %r12
	movl	$45696, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movq	392(%rbx), %rax
	leaq	lC11(%rip), %rsi
	movq	%r12, %rdi
	movq	56(%rax), %rdx
	xorl	%eax, %eax
	call	_make_formatted_string
	movq	%rbp, %rdi
	movl	$56256, %esi
	movq	%rax, %rdx
	call	_store_in_alist
	movq	392(%rbx), %rax
	movq	96(%rax), %rdi
	testq	%rdi, %rdi
	je	L1161
	call	_gtk_widget_get_window
	xorl	%edx, %edx
	testq	%rax, %rax
	je	L1162
	movq	392(%rbx), %rax
	movq	96(%rax), %rdi
	call	_gtk_widget_get_window
	movq	%rax, %rdi
	call	_gdk_x11_window_get_xid
	movq	%rax, %rdx
L1162:
	leaq	lC11(%rip), %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	_make_formatted_string
	movl	$40320, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_store_in_alist
	movq	16(%rbx), %rdx
	movl	$29280, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	movzbl	217(%rbx), %eax
	movl	$49344, %edx
	testb	$12, %al
	jne	L1163
	movq	%rax, %rdx
	salq	$59, %rdx
	sarq	$63, %rdx
	andl	$29184, %edx
L1163:
	movl	$54864, %esi
	movq	%rbp, %rdi
	xorl	%r12d, %r12d
	call	_store_in_alist
	movq	392(%rbx), %rax
	movl	$19488, %esi
	movq	%rbp, %rdi
	movq	504(%rax), %rax
	movq	32(%rax), %rax
	movq	-3(%rax), %rdx
	call	_store_in_alist
	movq	392(%rbx), %rax
	movq	88(%rax), %rdx
	movq	504(%rax), %rax
	cmpq	104(%rax), %rdx
	je	L1164
	leaq	2(,%rdx,4), %r12
L1164:
	movzbl	218(%rbx), %edx
	movq	%rbp, %rdi
	movl	$22032, %esi
	salq	$61, %rdx
	sarq	$63, %rdx
	andl	$49344, %edx
	call	_store_in_alist
	movq	%r12, %rdx
	movq	%rbp, %rdi
	movl	$41088, %esi
	call	_store_in_alist
	movq	152(%rbx), %rdx
	movl	$50592, %esi
	movq	%rbp, %rdi
	call	_store_in_alist
	jmp	L1166
	.align 4,0x90
L1161:
	movq	56(%rax), %rdx
	jmp	L1162
	.align 4,0x90
L1167:
	xorl	%eax, %eax
	jmp	L1141
	.align 4,0x90
L1206:
	movq	%rbx, %rdi
	call	_frame_unspecified_color
	testq	%rax, %rax
	jne	L1199
	jmp	L1147
	.align 4,0x90
L1205:
	movq	%rbx, %rdi
	call	_frame_unspecified_color
	testq	%rax, %rax
	jne	L1198
	jmp	L1145
LFE967:
	.align 4,0x90
	.globl _Fframe_parameter
_Fframe_parameter:
LFB968:
	pushq	%r12
LCFI423:
	pushq	%rbp
LCFI424:
	pushq	%rbx
LCFI425:
	movq	%rsi, %rbx
	call	_decode_any_frame
	testb	$7, %bl
	jne	L1240
	cmpq	$0, 384(%rax)
	movq	%rax, %rbp
	je	L1222
	cmpq	$38496, %rbx
	je	L1241
	cmpq	$54816, %rbx
	je	L1242
	cmpq	$29040, %rbx
	je	L1243
	leaq	5(%rax), %r12
	cmpq	$34368, %rbx
	je	L1244
	cmpq	$24528, %rbx
	je	L1245
	cmpq	$19488, %rbx
	jne	L1216
	movzwl	218(%rax), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1246
L1214:
	movq	%r12, %rdi
	call	_Fframe_parameters
	movq	%rax, %rsi
L1239:
	movq	%rbx, %rdi
	call	_Fassq
	popq	%rbx
LCFI426:
	popq	%rbp
LCFI427:
	movq	%rax, %rdi
	popq	%r12
LCFI428:
	jmp	_Fcdr
	.align 4,0x90
L1242:
LCFI429:
	movzbl	220(%rax), %eax
	andl	$3, %eax
	je	L1222
	cmpb	$1, %al
	movl	$33408, %ebx
	movl	$44592, %eax
	cmovne	%rax, %rbx
	movq	%rbx, %rax
	popq	%rbx
LCFI430:
	popq	%rbp
LCFI431:
	popq	%r12
LCFI432:
	ret
	.align 4,0x90
L1241:
LCFI433:
	movq	8(%rax), %rbx
L1207:
	movq	%rbx, %rax
	popq	%rbx
LCFI434:
	popq	%rbp
LCFI435:
	popq	%r12
LCFI436:
	ret
	.align 4,0x90
L1245:
LCFI437:
	movzwl	218(%rax), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	jne	L1214
	movq	392(%rbp), %rax
	movq	248(%rax), %rax
	movq	120(%rax), %rbx
	jmp	L1207
	.align 4,0x90
L1222:
	xorl	%ebx, %ebx
	jmp	L1207
	.align 4,0x90
L1243:
	movzbl	220(%rax), %ebx
	salq	$61, %rbx
	sarq	$63, %rbx
	andl	$49344, %ebx
	movq	%rbx, %rax
	popq	%rbx
LCFI438:
	popq	%rbp
LCFI439:
	popq	%r12
LCFI440:
	ret
	.align 4,0x90
L1244:
LCFI441:
	movl	472(%rax), %eax
	testl	%eax, %eax
	jne	L1214
	movl	$2, %ebx
	jmp	L1207
	.align 4,0x90
L1216:
	cmpq	$11328, %rbx
	jne	L1247
L1217:
	movq	72(%rbp), %rsi
	movq	%rbx, %rdi
	call	_Fassq
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1214
	movq	5(%rax), %rbx
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	jne	L1207
	movzwl	218(%rbp), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1207
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_frame_unspecified_color
	testq	%rax, %rax
	cmovne	%rax, %rbx
	jmp	L1207
	.align 4,0x90
L1247:
	cmpq	$25104, %rbx
	je	L1217
	cmpq	$19872, %rbx
	je	L1226
	cmpq	$11376, %rbx
	jne	L1214
L1226:
	movq	72(%rbp), %rsi
	jmp	L1239
	.align 4,0x90
L1246:
	movq	392(%rbp), %rax
	movq	504(%rax), %rax
	movq	32(%rax), %rax
	movq	-3(%rax), %rbx
	jmp	L1207
L1240:
	movq	%rbx, %rsi
	movl	$49104, %edi
	call	_wrong_type_argument
LFE968:
	.cstring
	.align 3
lC12:
	.ascii "The `minibuffer' parameter does not specify a valid minibuffer window\0"
	.align 3
lC13:
	.ascii "Can't change the minibuffer window of a minibuffer-only frame\0"
	.align 3
lC14:
	.ascii "Can't change the minibuffer window of a frame with its own minibuffer\0"
	.align 3
lC15:
	.ascii "Can't change the `minibuffer' parameter of this frame\0"
lC16:
	.ascii "Invalid `%s' frame parameter\0"
	.align 3
lC17:
	.ascii "Circular specification of `%s' frame parameter\0"
lC18:
	.ascii "F%ld\0"
	.align 3
lC19:
	.ascii "Frame names of the form F<num> are usurped by Emacs\0"
	.text
	.align 4,0x90
	.globl _store_frame_param
_store_frame_param:
LFB965:
	pushq	%r15
LCFI442:
	pushq	%r14
LCFI443:
	pushq	%r13
LCFI444:
	pushq	%r12
LCFI445:
	movq	%rdi, %r12
	pushq	%rbp
LCFI446:
	movq	%rsi, %rbp
	pushq	%rbx
LCFI447:
	movq	%rdx, %rbx
	subq	$40, %rsp
LCFI448:
	cmpq	$36480, %rsi
	je	L1326
	cmpq	$41040, %rsi
	je	L1296
	cmpq	$18768, %rsi
	je	L1296
	cmpq	$12912, %rsi
	je	L1327
	cmpq	$13344, %rsi
	je	L1328
L1260:
	movzwl	218(%r12), %eax
	andw	$896, %ax
	addw	$-128, %ax
	jne	L1274
	cmpq	$51696, %rbp
	je	L1329
L1274:
	movq	72(%r12), %rsi
	movq	%rbp, %rdi
	call	_Fassq
	testq	%rax, %rax
	je	L1330
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_Fsetcdr
L1276:
	cmpq	$13152, %rbp
	je	L1331
	movzwl	218(%r12), %eax
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1248
	cmpq	$36000, %rbp
	je	L1332
	cmpq	$38496, %rbp
	je	L1333
L1248:
	addq	$40, %rsp
LCFI449:
	popq	%rbx
LCFI450:
	popq	%rbp
LCFI451:
	popq	%r12
LCFI452:
	popq	%r13
LCFI453:
	popq	%r14
LCFI454:
	popq	%r15
LCFI455:
	ret
	.align 4,0x90
L1296:
LCFI456:
	movq	72(%r12), %rsi
	movq	%rbp, %rdi
	call	_Fassq
	movq	%rax, %rdi
	call	_Fcdr
	cmpq	%rbx, %rax
	je	L1260
	testq	%rbx, %rbx
	je	L1260
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L1261
	movq	-5(%rbx), %r13
	leaq	-5(%rbx), %rdi
	movabsq	$4611686019484352512, %r14
	movabsq	$4611686018477719552, %rax
	andq	%r14, %r13
	cmpq	%rax, %r13
	jne	L1261
	cmpq	$0, 384(%rdi)
	je	L1261
	leaq	5(%r12), %r15
	cmpq	%rbx, %r15
	jne	L1264
	jmp	L1263
	.align 4,0x90
L1334:
	movq	-5(%rax), %rdx
	leaq	-5(%rax), %rdi
	andq	%r14, %rdx
	cmpq	%r13, %rdx
	jne	L1260
	cmpq	$0, 384(%rdi)
	je	L1260
	cmpq	%rax, %r15
	je	L1263
L1264:
	movq	%rbp, %rsi
	call	_get_frame_param
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	je	L1334
	jmp	L1260
	.align 4,0x90
L1326:
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L1250
	leaq	-5(%rdx), %rsi
	movq	-5(%rdx), %rdx
	movabsq	$4611686019484352512, %rax
	movabsq	$4611686018494496768, %rcx
	andq	%rax, %rdx
	cmpq	%rcx, %rdx
	jne	L1250
	testb	$1, 484(%rsi)
	je	L1335
	movq	64(%rdi), %rcx
	cmpq	%rcx, 48(%rdi)
	je	L1336
	movl	%ecx, %esi
	andl	$7, %esi
	cmpl	$5, %esi
	je	L1337
L1254:
	movq	%rbx, 64(%r12)
	jmp	L1274
	.align 4,0x90
L1250:
	movq	72(%r12), %rsi
	movl	$36480, %edi
	call	_Fassq
	movq	%rax, %rdi
	call	_Fcdr
	testq	%rax, %rax
	je	L1274
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	je	L1338
L1255:
	cmpq	%rbx, %rax
	je	L1274
	leaq	lC15(%rip), %rdi
	xorl	%eax, %eax
	call	_error
	.align 4,0x90
L1331:
	movq	%rbx, 120(%r12)
	addq	$40, %rsp
LCFI457:
	popq	%rbx
LCFI458:
	popq	%rbp
LCFI459:
	popq	%r12
LCFI460:
	popq	%r13
LCFI461:
	popq	%r14
LCFI462:
	popq	%r15
LCFI463:
	ret
	.align 4,0x90
L1330:
LCFI464:
	movq	72(%r12), %r13
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_Fcons
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	_Fcons
	movq	%rax, 72(%r12)
	jmp	L1276
	.align 4,0x90
L1328:
	movl	%edx, %eax
	xorl	%r13d, %r13d
	andl	$7, %eax
	cmpl	$3, %eax
	jne	L1271
	.align 4,0x90
L1273:
	movq	-3(%rbx), %rdi
	leaq	-3(%rbx), %rbp
	call	_Fbuffer_live_p
	testq	%rax, %rax
	je	L1272
	movq	-3(%rbx), %rdi
	movq	%r13, %rsi
	call	_Fcons
	movq	%rax, %r13
L1272:
	movq	8(%rbp), %rbx
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1273
L1271:
	movq	%r13, %rdi
	call	_Fnreverse
	movq	%rax, 136(%r12)
	jmp	L1248
	.align 4,0x90
L1327:
	movl	%edx, %eax
	xorl	%r13d, %r13d
	andl	$7, %eax
	cmpl	$3, %eax
	jne	L1267
	.align 4,0x90
L1269:
	movq	-3(%rbx), %rdi
	leaq	-3(%rbx), %rbp
	call	_Fbuffer_live_p
	testq	%rax, %rax
	je	L1268
	movq	-3(%rbx), %rdi
	movq	%r13, %rsi
	call	_Fcons
	movq	%rax, %r13
L1268:
	movq	8(%rbp), %rbx
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1269
L1267:
	movq	%r13, %rdi
	call	_Fnreverse
	movq	%rax, 128(%r12)
	addq	$40, %rsp
LCFI465:
	popq	%rbx
LCFI466:
	popq	%rbp
LCFI467:
	popq	%r12
LCFI468:
	popq	%r13
LCFI469:
	popq	%r14
LCFI470:
	popq	%r15
LCFI471:
	ret
	.align 4,0x90
L1333:
LCFI472:
	testq	%rbx, %rbx
	setne	%al
	leal	0(,%rax,4), %edx
	movzbl	218(%r12), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	testq	%rbx, %rbx
	movb	%al, 218(%r12)
	je	L1339
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	jne	L1340
	movq	8(%r12), %rsi
	movq	%rbx, %rdi
	call	_Fstring_equal
	testq	%rax, %rax
	jne	L1248
	movq	4(%rbx), %rax
	testq	%rax, %rax
	cmovs	-4(%rbx), %rax
	cmpq	$1, %rax
	jle	L1286
	movq	20(%rbx), %rdx
	cmpb	$70, (%rdx)
	je	L1341
	.align 4,0x90
L1286:
	movq	_update_mode_lines@GOTPCREL(%rip), %rax
	movq	%rbx, 8(%r12)
	movl	$16, (%rax)
	jmp	L1248
	.align 4,0x90
L1332:
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_set_menu_bar_lines.isra.32
	jmp	L1248
	.align 4,0x90
L1329:
	movq	384(%r12), %rax
	movq	88(%rax), %rax
	cmpq	%r12, 88(%rax)
	jne	L1274
	movq	$0, 88(%rax)
	jmp	L1274
	.align 4,0x90
L1338:
	movabsq	$4611686019484352512, %rdx
	andq	-5(%rax), %rdx
	movabsq	$4611686018494496768, %rcx
	cmpq	%rcx, %rdx
	jne	L1255
	testq	%rbx, %rbx
	jne	L1255
	movq	%rax, %rbx
	jmp	L1274
	.align 4,0x90
L1337:
	andq	-5(%rcx), %rax
	leaq	-5(%rcx), %rsi
	cmpq	%rdx, %rax
	jne	L1254
	movq	8(%rsi), %rax
	subq	$5, %rax
	cmpq	%rax, %rdi
	jne	L1254
	cmpq	%rbx, %rcx
	jne	L1342
	movl	$49344, %ebx
	jmp	L1274
	.align 4,0x90
L1339:
	movq	8(%r12), %rdx
	movq	4(%rdx), %rax
	testq	%rax, %rax
	cmovs	-4(%rdx), %rax
	cmpq	$1, %rax
	jle	L1283
	movq	20(%rdx), %rdx
	cmpb	$70, (%rdx)
	je	L1343
L1283:
	movq	_tty_frame_count(%rip), %rax
	movq	%rsp, %rdi
	leaq	lC18(%rip), %rsi
	leaq	1(%rax), %rdx
	xorl	%eax, %eax
	movq	%rdx, _tty_frame_count(%rip)
	call	_make_formatted_string
	movq	%rax, %rbx
	jmp	L1286
	.align 4,0x90
L1336:
	cmpq	%rbx, %rcx
	jne	L1344
	movl	$39792, %ebx
	jmp	L1274
L1343:
	movzbl	1(%rdx), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	L1283
	movzbl	2(%rdx), %ecx
	leaq	2(%rdx), %rsi
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	L1284
L1285:
	addq	$1, %rsi
	movzbl	(%rsi), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	jbe	L1285
L1284:
	addq	%rdx, %rax
	cmpq	%rax, %rsi
	jne	L1283
	jmp	L1248
L1341:
	movzbl	1(%rdx), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	L1286
	movzbl	2(%rdx), %ecx
	leaq	2(%rdx), %rsi
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	L1289
L1290:
	addq	$1, %rsi
	movzbl	(%rsi), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	jbe	L1290
L1289:
	addq	%rdx, %rax
	cmpq	%rax, %rsi
	jne	L1286
	leaq	lC19(%rip), %rdi
	xorl	%eax, %eax
	call	_error
L1263:
	movq	_lispsym@GOTPCREL(%rip), %rax
	leaq	lC17(%rip), %rdi
	movq	8(%rbp,%rax), %rax
	movq	20(%rax), %rsi
	xorl	%eax, %eax
	call	_error
L1261:
	movq	_lispsym@GOTPCREL(%rip), %rax
	leaq	lC16(%rip), %rdi
	movq	8(%rbp,%rax), %rax
	movq	20(%rax), %rsi
	xorl	%eax, %eax
	call	_error
L1342:
	leaq	lC14(%rip), %rdi
	xorl	%eax, %eax
	call	_error
L1340:
	movq	%rbx, %rsi
	movl	$48528, %edi
	call	_wrong_type_argument
L1344:
	leaq	lC13(%rip), %rdi
	xorl	%eax, %eax
	call	_error
L1335:
	leaq	lC12(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE965:
	.align 4,0x90
	.globl _make_frame
_make_frame:
LFB917:
	pushq	%r15
LCFI473:
	movl	$3, %ecx
	movl	%edi, %r15d
	movl	$61, %edx
	pushq	%r14
LCFI474:
	movl	$20, %esi
	movl	$61, %edi
	pushq	%r13
LCFI475:
	pushq	%r12
LCFI476:
	pushq	%rbp
LCFI477:
	pushq	%rbx
LCFI478:
	subq	$24, %rsp
LCFI479:
	call	_allocate_pseudovector
	movq	%rax, %rbx
	addq	$5, %rax
	movq	%rax, 8(%rsp)
	movabsq	$4294967297, %rax
	orb	$97, 217(%rbx)
	movq	%rax, 372(%rbx)
	movzbl	221(%rbx), %eax
	movb	$0, 220(%rbx)
	andb	$-4, 222(%rbx)
	movq	$50784, 152(%rbx)
	andl	$8, %eax
	movb	%al, 221(%rbx)
	movzbl	219(%rbx), %eax
	andl	$-125, %eax
	movb	%al, 219(%rbx)
	call	_make_window
	testb	%r15b, %r15b
	leaq	-5(%rax), %rbp
	movq	%rax, %r12
	jne	L1379
	movq	$0, 16(%rbp)
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movq	$0, 64(%rbx)
L1347:
	leaq	5(%rbx), %rax
	movq	%rax, 8(%rbp)
	movzbl	220(%rbx), %esi
	movl	$10, %eax
	movl	$10, 280(%rbx)
	movl	%esi, %ecx
	andl	$3, %ecx
	je	L1348
	movl	432(%rbx), %eax
	addl	$10, %eax
L1348:
	movl	$10, 284(%rbx)
	addl	360(%rbx), %eax
	movl	%eax, 288(%rbx)
	movl	224(%rbx), %eax
	addl	364(%rbx), %eax
	addl	$10, %eax
	andl	$4, %esi
	je	L1349
	addl	440(%rbx), %eax
L1349:
	movl	%eax, 292(%rbx)
	movl	372(%rbx), %eax
	leal	(%rax,%rax,4), %edx
	addl	%edx, %edx
	testb	%cl, %cl
	movl	%edx, 296(%rbx)
	movl	%edx, %edi
	je	L1350
	addl	428(%rbx), %edi
L1350:
	movl	340(%rbx), %eax
	movl	376(%rbx), %r9d
	leal	(%rax,%rax), %ecx
	movl	356(%rbx), %eax
	addl	352(%rbx), %eax
	addl	%edi, %eax
	leal	(%r9,%r9,4), %edi
	addl	%ecx, %eax
	movl	%eax, 320(%rbx)
	movl	228(%rbx), %eax
	addl	%edi, %edi
	addl	368(%rbx), %eax
	movl	%edi, 300(%rbx)
	addl	%edi, %eax
	testb	%sil, %sil
	je	L1351
	addl	436(%rbx), %eax
L1351:
	addl	%eax, %ecx
	testb	%r15b, %r15b
	movl	%ecx, 324(%rbx)
	movl	$10, 280(%rbp)
	movl	%edx, 264(%rbp)
	je	L1380
	movl	$9, 284(%rbp)
	leal	(%r9,%r9,8), %eax
	movl	%eax, 268(%rbp)
	movl	%eax, 252(%r14)
	movabsq	$4294967306, %rax
	movl	$9, 260(%r14)
	movl	%edx, 264(%r14)
	movq	%rax, 280(%r14)
	movl	%r9d, 268(%r14)
	call	_Fcurrent_buffer
	movq	%rax, %r15
	movq	3(%rax), %rax
	movq	20(%rax), %rax
	cmpb	$32, (%rax)
	je	L1381
L1377:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	_set_window_buffer
	movq	%r15, %rdi
	call	_list1
	movq	%rax, 128(%rbx)
	movq	_Vminibuffer_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L1382
	call	_Fcar
L1355:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	_set_window_buffer
	movq	$0, 136(%r14)
	jmp	L1360
	.align 4,0x90
L1380:
	movl	$10, 284(%rbp)
	movl	%edi, 268(%rbp)
	call	_Fcurrent_buffer
	movq	%rax, %r13
	movq	3(%rax), %rax
	movq	20(%rax), %rax
	cmpb	$32, (%rax)
	je	L1383
L1378:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_set_window_buffer
	movq	%r13, %rdi
	call	_list1
	movq	%rax, 128(%rbx)
L1360:
	movq	_window_select_count@GOTPCREL(%rip), %rdx
	movq	%r12, 48(%rbx)
	movq	%r12, 56(%rbx)
	movq	(%rdx), %rax
	addq	$1, %rax
	movq	%rax, (%rdx)
	movq	%rax, 232(%rbp)
	addq	$24, %rsp
LCFI480:
	movq	%rbx, %rax
	popq	%rbx
LCFI481:
	popq	%rbp
LCFI482:
	popq	%r12
LCFI483:
	popq	%r13
LCFI484:
	popq	%r14
LCFI485:
	popq	%r15
LCFI486:
	ret
	.align 4,0x90
L1383:
LCFI487:
	movq	%r13, %rdi
	call	_other_buffer_safely
	movq	%rax, %r13
	jmp	L1378
	.align 4,0x90
L1379:
	call	_make_window
	movl	$49344, %edx
	movl	$36480, %esi
	movq	%rbx, %rdi
	leaq	-5(%rax), %r14
	movq	%rax, 16(%rbp)
	movq	%rax, %r13
	orb	$1, 484(%r14)
	leaq	5(%rbx), %rax
	movq	%r12, 24(%r14)
	movq	%rax, 8(%r14)
	movq	%r13, 64(%rbx)
	call	_store_frame_param
	jmp	L1347
	.align 4,0x90
L1382:
	call	_get_minibuffer
	jmp	L1355
L1381:
	movq	%r15, %rdi
	call	_other_buffer_safely
	movq	%rax, %r15
	jmp	L1377
LFE917:
	.cstring
lC20:
	.ascii "F1\0"
	.text
	.align 4,0x90
	.globl _make_initial_frame
_make_initial_frame:
LFB920:
	pushq	%r12
LCFI488:
	movq	_Vframe_list@GOTPCREL(%rip), %r12
	pushq	%rbp
LCFI489:
	pushq	%rbx
LCFI490:
	movq	(%r12), %rax
	testq	%rax, %rax
	je	L1385
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1385
	movq	$0, (%r12)
L1385:
	call	_init_initial_terminal
	movl	$1, %edi
	movq	%rax, %rbp
	call	_make_frame
	movq	(%r12), %rsi
	leaq	5(%rax), %rdi
	movq	%rax, %rbx
	call	_Fcons
	movl	$2, %esi
	movq	$1, _tty_frame_count(%rip)
	leaq	lC20(%rip), %rdi
	movq	%rax, (%r12)
	call	_make_pure_c_string
	movq	%rax, 8(%rbx)
	movzbl	217(%rbx), %eax
	movl	%eax, %edx
	andl	$12, %edx
	cmpb	$4, %dl
	je	L1386
	call	_redisplay_other_windows
	movzbl	217(%rbx), %eax
L1386:
	testb	$32, %al
	je	L1387
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
L1387:
	movzbl	217(%rbx), %eax
	movl	$6, %esi
	movq	%rbx, %rdi
	andl	$-13, %eax
	orl	$4, %eax
	movb	%al, 217(%rbx)
	movzwl	56(%rbp), %eax
	movq	%rbp, 384(%rbx)
	andl	$7, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	218(%rbx), %eax
	andw	$-897, %ax
	orl	%edx, %eax
	movw	%ax, 218(%rbx)
	addl	$1, 52(%rbp)
	movq	$0, 392(%rbx)
	andb	$-8, 220(%rbx)
	movq	$-2, 488(%rbx)
	movq	$-3, 480(%rbx)
	call	_set_menu_bar_lines.isra.32
	movq	%rbx, %rdi
	call	_adjust_frame_glyphs
	movq	_noninteractive@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L1388
	movq	%rbx, %rdi
	call	_init_frame_faces
L1388:
	movq	%rbx, _last_nonminibuf_frame(%rip)
	movq	%rbx, %rax
	orb	$48, 221(%rbx)
	popq	%rbx
LCFI491:
	popq	%rbp
LCFI492:
	popq	%r12
LCFI493:
	ret
LFE920:
	.cstring
	.align 3
lC21:
	.ascii "Frame and minibuffer must be on the same terminal\0"
lC22:
	.ascii "make-initial-minibuffer-frame\0"
	.text
	.align 4,0x90
	.globl _make_frame_without_minibuffer
_make_frame_without_minibuffer:
LFB918:
	pushq	%r13
LCFI494:
	movq	%rsi, %r13
	pushq	%r12
LCFI495:
	pushq	%rbp
LCFI496:
	pushq	%rbx
LCFI497:
	subq	$8, %rsp
LCFI498:
	testq	%rdi, %rdi
	je	L1403
	movl	%edi, %eax
	movq	%rdi, %rbx
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L1404
	movq	-5(%rdi), %rcx
	leaq	-5(%rdi), %r12
	movabsq	$4611686019484352512, %rax
	movabsq	$4611686018494496768, %rdx
	andq	%rax, %rcx
	cmpq	%rdx, %rcx
	jne	L1404
	movq	80(%r12), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$5, %ecx
	jne	L1404
	andq	-5(%rdx), %rax
	movabsq	$4611686018528051200, %rdx
	cmpq	%rdx, %rax
	jne	L1404
	movq	8(%r12), %rax
	movq	379(%rax), %rax
	cmpq	%rsi, 72(%rax)
	jne	L1416
	xorl	%edi, %edi
	call	_make_frame
	movq	%rax, %rbp
L1412:
	movq	%rbx, %rdx
	movl	$36480, %esi
	movq	%rbp, %rdi
	movq	%rbx, 64(%rbp)
	call	_store_frame_param
	movq	_Vminibuffer_list@GOTPCREL(%rip), %r13
	movq	80(%r12), %rdi
	movq	0(%r13), %rsi
	call	_Fmemq
	testq	%rax, %rax
	je	L1417
	addq	$8, %rsp
LCFI499:
	movq	%rbp, %rax
	popq	%rbx
LCFI500:
	popq	%rbp
LCFI501:
	popq	%r12
LCFI502:
	popq	%r13
LCFI503:
	ret
	.align 4,0x90
L1417:
LCFI504:
	movq	0(%r13), %rdi
	testq	%rdi, %rdi
	je	L1418
	call	_Fcar
L1411:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_set_window_buffer
	addq	$8, %rsp
LCFI505:
	movq	%rbp, %rax
	popq	%rbx
LCFI506:
	popq	%rbp
LCFI507:
	popq	%r12
LCFI508:
	popq	%r13
LCFI509:
	ret
	.align 4,0x90
L1403:
LCFI510:
	xorl	%edi, %edi
	movq	%rdx, %r12
	call	_make_frame
	movq	160(%r13), %rdx
	movq	%rax, %rbp
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L1407
	movabsq	$4611686019484352512, %rcx
	andq	-5(%rdx), %rcx
	leaq	-5(%rdx), %rax
	movq	%rcx, %rdx
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L1407
	cmpq	$0, 384(%rax)
	jne	L1408
	.align 4,0x90
L1407:
	leaq	lC22(%rip), %rdi
	movl	$29, %esi
	call	_intern_1
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_call1
	movq	%rax, 160(%r13)
	subq	$5, %rax
L1408:
	movq	64(%rax), %rbx
	leaq	-5(%rbx), %r12
	jmp	L1412
	.align 4,0x90
L1418:
	call	_get_minibuffer
	jmp	L1411
L1404:
	movq	%rbx, %rsi
	movl	$56304, %edi
	call	_wrong_type_argument
L1416:
	leaq	lC21(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE918:
	.align 4,0x90
	.globl _make_minibuffer_frame
_make_minibuffer_frame:
LFB919:
	pushq	%rbp
LCFI511:
	xorl	%edi, %edi
	pushq	%rbx
LCFI512:
	subq	$8, %rsp
LCFI513:
	call	_make_frame
	movl	$39792, %edx
	movl	$36480, %esi
	movq	%rax, %rbx
	movzbl	218(%rax), %eax
	movq	48(%rbx), %rbp
	movq	%rbx, %rdi
	andl	$-2, %eax
	orl	$2, %eax
	movq	%rbp, 64(%rbx)
	movb	%al, 218(%rbx)
	movzbl	217(%rbx), %eax
	andl	$63, %eax
	movb	%al, 217(%rbx)
	call	_store_frame_param
	leaq	-5(%rbp), %rax
	leaq	5(%rbx), %rdx
	movq	$0, 16(%rax)
	orb	$1, 484(%rax)
	movq	$0, 24(%rax)
	movq	%rdx, 8(%rax)
	movq	_Vminibuffer_list@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	L1423
	call	_Fcar
	movq	%rax, %rsi
L1421:
	movq	%rbp, %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_set_window_buffer
	addq	$8, %rsp
LCFI514:
	movq	%rbx, %rax
	popq	%rbx
LCFI515:
	popq	%rbp
LCFI516:
	ret
	.align 4,0x90
L1423:
LCFI517:
	call	_get_minibuffer
	movq	%rax, %rsi
	jmp	L1421
LFE919:
	.align 4,0x90
	.globl _x_set_fullscreen
_x_set_fullscreen:
LFB995:
	testq	%rsi, %rsi
	je	L1433
	cmpq	$26256, %rsi
	je	L1432
	cmpq	$26160, %rsi
	je	L1432
	cmpq	$26304, %rsi
	je	L1434
	cmpq	$26208, %rsi
	je	L1435
	cmpq	$35760, %rsi
	jne	L1426
	movzbl	219(%rdi), %eax
	andl	$-121, %eax
	orl	$32, %eax
	movb	%al, 219(%rdi)
	jmp	L1426
	.align 4,0x90
L1432:
	movzbl	219(%rdi), %eax
	andl	$-121, %eax
	orl	$24, %eax
	movb	%al, 219(%rdi)
L1426:
	movq	384(%rdi), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	je	L1424
	jmp	*%rax
	.align 4,0x90
L1433:
	andb	$-121, 219(%rdi)
	jmp	L1426
	.align 4,0x90
L1435:
	movzbl	219(%rdi), %eax
	andl	$-121, %eax
	orl	$16, %eax
	movb	%al, 219(%rdi)
	jmp	L1426
	.align 4,0x90
L1434:
	movzbl	219(%rdi), %eax
	andl	$-121, %eax
	orl	$8, %eax
	movb	%al, 219(%rdi)
	jmp	L1426
	.align 4,0x90
L1424:
	ret
LFE995:
	.align 4,0x90
	.globl _x_set_frame_parameters
_x_set_frame_parameters:
LFB993:
	pushq	%rbp
LCFI518:
	movq	%rsi, %rax
	movq	%rsp, %rbp
LCFI519:
	pushq	%r15
	pushq	%r14
LCFI520:
	movq	%rsi, %r14
	pushq	%r13
LCFI521:
	movq	%rdi, %r13
	pushq	%r12
LCFI522:
	movl	%esi, %r12d
	pushq	%rbx
	andl	$7, %r12d
LCFI523:
	xorl	%ebx, %ebx
	subq	$136, %rsp
	cmpl	$3, %r12d
	movl	$-1, -56(%rbp)
	movl	$-1, -52(%rbp)
	jne	L1437
	.align 4,0x90
L1438:
	movq	5(%rax), %rax
	addq	$1, %rbx
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L1438
L1437:
	testq	%rax, %rax
	jne	L1588
	movq	_current_thread@GOTPCREL(%rip), %rax
	leaq	(%rbx,%rbx), %r15
	movl	$8, %edi
	xorl	%ecx, %ecx
	movq	(%rax), %rax
	movq	120(%rax), %rsi
	movq	112(%rax), %rax
	movq	%rsi, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rdi, %rax
	mulq	%r15
	movq	%rax, %rdi
	jo	L1589
L1440:
	testq	%rdi, %rdi
	js	L1443
	testq	%rcx, %rcx
	jne	L1443
	cmpq	$16384, %rdi
	jg	L1590
	addq	$16, %rdi
	movb	$0, -122(%rbp)
	subq	%rdi, %rsp
	leaq	15(%rsp), %r10
	andq	$-16, %r10
L1446:
	leaq	(%r10,%rbx,8), %r11
	subq	$1, %rbx
	cmpl	$3, %r12d
	jne	L1447
	movq	%r14, %rax
	movq	$0, -80(%rbp)
	movq	%r11, %r14
	movq	%r10, -72(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r13, -96(%rbp)
	jmp	L1451
	.align 4,0x90
L1448:
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%r15, (%rdi,%rsi,8)
	movq	%rax, (%r14,%rsi,8)
	movq	8(%r13), %rax
	addq	$1, %rsi
	movq	%rsi, -80(%rbp)
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1591
L1451:
	movq	-3(%rax), %r12
	leaq	-3(%rax), %r13
	movq	%r12, %rdi
	call	_Fcar
	movq	%r12, %rdi
	movq	%rax, %r15
	call	_Fcdr
	cmpq	$11328, %r15
	sete	%dil
	cmpq	$25104, %r15
	sete	%cl
	orb	%cl, %dil
	jne	L1529
	cmpq	$24528, %r15
	jne	L1448
L1529:
	movq	-72(%rbp), %rsi
	movq	%r15, (%rsi,%rbx,8)
	movq	%rax, (%r14,%rbx,8)
	movq	8(%r13), %rax
	subq	$1, %rbx
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L1451
L1591:
	movq	-72(%rbp), %r10
	movq	%r14, %r11
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r13
L1447:
	cmpq	$-1, %rbx
	je	L1503
	leaq	-52(%rbp), %rax
	movl	$-1, %r14d
	movq	%r10, %r15
	movb	$0, -121(%rbp)
	movq	%rax, -144(%rbp)
	leaq	-56(%rbp), %rax
	movl	%r14d, %r10d
	movl	%r14d, -88(%rbp)
	movq	%r13, %r14
	movq	%r11, %r13
	movq	$52416, -96(%rbp)
	movq	$52416, -104(%rbp)
	movq	$52416, -72(%rbp)
	movq	$52416, -80(%rbp)
	movq	%rax, -152(%rbp)
	jmp	L1458
	.align 4,0x90
L1453:
	cmpq	$28512, %rcx
	je	L1592
	cmpq	$50784, %rcx
	je	L1504
	cmpq	$33408, %rcx
	je	L1505
	cmpq	$29328, %rcx
	je	L1506
	cmpq	$29232, %rcx
	je	L1507
	cmpq	$26256, %rcx
	je	L1508
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movl	%r10d, -120(%rbp)
	movq	%rcx, -112(%rbp)
	call	_get_frame_param
	movq	-112(%rbp), %rcx
	movq	%r12, %rdx
	movq	%r14, %rdi
	movq	%rax, -136(%rbp)
	movq	%rcx, %rsi
	call	_store_frame_param
	movq	-112(%rbp), %rcx
	movl	$57120, %esi
	movq	%rcx, %rdi
	call	_Fget
	movl	-120(%rbp), %r10d
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	je	L1593
	.align 4,0x90
L1455:
	subq	$1, %rbx
	cmpq	$-1, %rbx
	je	L1594
L1458:
	movq	(%r15,%rbx,8), %rcx
	movq	0(%r13,%rbx,8), %r12
	cmpq	$55584, %rcx
	jne	L1453
	movl	%r12d, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1595
L1454:
	movl	%r12d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1596
	cmpl	$7, %eax
	jne	L1455
	movq	-144(%rbp), %r8
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	movq	-152(%rbp), %rcx
	movl	$-1, %r9d
	subq	$1, %rbx
	call	_frame_float
	cmpq	$-1, %rbx
	movl	%eax, %r10d
	jne	L1458
	.align 4,0x90
L1594:
	movq	-104(%rbp), %rax
	xorl	%ebx, %ebx
	movq	%r14, %r13
	movl	%r10d, %r14d
	movl	%eax, %ecx
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	andl	$3, %ecx
	movl	%eax, %r15d
	movq	%rax, -120(%rbp)
	andl	$3, %r15d
	cmpq	$52416, -80(%rbp)
	je	L1452
L1459:
	xorl	%r12d, %r12d
	cmpq	$52416, -72(%rbp)
	je	L1597
L1460:
	cmpl	$2, %ecx
	jne	L1461
	sarq	$2, %rdx
	movl	$2147483648, %eax
	addq	%rdx, %rax
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jbe	L1598
L1461:
	movq	72(%r13), %rsi
	movl	$29232, %edi
	call	_Fassq
	movq	%rax, %rdi
	call	_Fcdr
	movl	$1, %edx
	movb	$1, -112(%rbp)
	testq	%rax, %rax
	movq	%rax, -104(%rbp)
	je	L1513
L1462:
	cmpl	$2, %r15d
	jne	L1463
	movq	-120(%rbp), %rax
	movl	$2147483648, %ecx
	sarq	$2, %rax
	addq	%rcx, %rax
	addq	$2147483647, %rcx
	cmpq	%rcx, %rax
	jbe	L1599
L1463:
	movq	72(%r13), %rsi
	movl	$29328, %edi
	movl	$1, %r15d
	call	_Fassq
	movq	%rax, %rdi
	call	_Fcdr
	movb	$1, -120(%rbp)
	testq	%rax, %rax
	movq	%rax, -96(%rbp)
	je	L1514
L1464:
	cmpl	$-1, %r14d
	je	L1465
	cmpl	%r14d, 296(%r13)
	je	L1465
L1466:
	movl	-88(%rbp), %edx
	movl	$57456, %r9d
	xorl	%r8d, %r8d
	movl	%r14d, %esi
	movl	$1, %ecx
	movq	%r13, %rdi
	call	_adjust_frame_size
L1467:
	cmpq	$0, -80(%rbp)
	jne	L1530
	cmpq	$0, -72(%rbp)
	je	L1468
L1530:
	testb	%bl, %bl
	je	L1531
	testb	%r12b, %r12b
	je	L1531
L1468:
	cmpb	$0, -121(%rbp)
	jne	L1600
L1489:
	testb	%r15b, %r15b
	je	L1491
	cmpb	$0, -112(%rbp)
	je	L1532
	cmpb	$0, -120(%rbp)
	je	L1532
L1491:
	cmpb	$0, -122(%rbp)
	je	L1436
	movq	-176(%rbp), %rdi
	xorl	%esi, %esi
	movabsq	$-3689348814741910323, %rax
	subq	-168(%rbp), %rdi
	sarq	$3, %rdi
	imulq	%rax, %rdi
	call	_unbind_to
L1436:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI524:
	ret
	.align 4,0x90
L1592:
LCFI525:
	movl	%r12d, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1601
L1457:
	movl	%r12d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1602
	cmpl	$7, %eax
	jne	L1455
	movl	$-1, %r9d
	movq	%r12, %rsi
	movq	%r14, %rdi
	movl	%r10d, -112(%rbp)
	movq	-144(%rbp), %r8
	movl	$1, %edx
	movq	-152(%rbp), %rcx
	call	_frame_float
	movl	-112(%rbp), %r10d
	movl	%eax, -88(%rbp)
	jmp	L1455
	.align 4,0x90
L1504:
	movq	%r12, -72(%rbp)
	jmp	L1455
	.align 4,0x90
L1505:
	movq	%r12, -80(%rbp)
	jmp	L1455
	.align 4,0x90
L1595:
	movq	%r12, %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	ja	L1454
	movl	372(%r14), %r10d
	imull	%eax, %r10d
	jmp	L1455
	.align 4,0x90
L1506:
	movq	%r12, -96(%rbp)
	jmp	L1455
	.align 4,0x90
L1601:
	movq	%r12, %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	ja	L1457
	imull	376(%r14), %eax
	movl	%eax, -88(%rbp)
	jmp	L1455
	.align 4,0x90
L1508:
	movq	%r12, -160(%rbp)
	movb	$1, -121(%rbp)
	jmp	L1455
	.align 4,0x90
L1596:
	cmpq	$49872, -3(%r12)
	jne	L1455
	movq	5(%r12), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L1455
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	cmovbe	%eax, %r10d
	jmp	L1455
	.align 4,0x90
L1507:
	movq	%r12, -104(%rbp)
	jmp	L1455
	.align 4,0x90
L1602:
	cmpq	$49872, -3(%r12)
	jne	L1455
	movq	5(%r12), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L1455
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	cmova	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	L1455
	.align 4,0x90
L1593:
	sarq	$2, %rax
	cmpq	$45, %rax
	ja	L1455
	movq	384(%r14), %rdx
	movq	112(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	testq	%rax, %rax
	je	L1455
	movl	%r10d, -112(%rbp)
	movq	-136(%rbp), %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	*%rax
	movl	-112(%rbp), %r10d
	jmp	L1455
	.align 4,0x90
L1465:
	movl	-88(%rbp), %eax
	cmpl	$-1, %eax
	je	L1467
	cmpl	%eax, 300(%r13)
	jne	L1466
	jmp	L1467
	.align 4,0x90
L1531:
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$3, %edx
	cmpl	$2, %edx
	je	L1471
	movl	%eax, %esi
	andl	$7, %esi
	cmpl	$7, %esi
	je	L1471
	movl	332(%r13), %eax
	andl	$-49, %eax
	cmpq	$36864, -80(%rbp)
	movl	%eax, 332(%r13)
	je	L1500
	xorl	%ebx, %ebx
	cmpl	$3, %esi
	jne	L1475
L1501:
	movq	-80(%rbp), %rsi
	movq	-3(%rsi), %rdx
	leaq	-3(%rsi), %rcx
	cmpq	$36864, %rdx
	je	L1603
	xorl	%ebx, %ebx
	cmpq	$41616, %rdx
	jne	L1475
	movq	8(%rcx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1475
	movq	-3(%rax), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L1475
	sarq	$2, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	cmovbe	%eax, %ebx
	jmp	L1475
	.align 4,0x90
L1590:
	call	_xmalloc
	movq	%r15, %rsi
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)
	call	_make_save_memory
	movq	_free_save_value@GOTPCREL(%rip), %rdi
	movq	%rax, %rsi
	call	_record_unwind_protect
	movb	$1, -122(%rbp)
	movq	-72(%rbp), %r10
	jmp	L1446
L1600:
	movl	$26256, %esi
	movq	%r13, %rdi
	call	_get_frame_param
	movq	-160(%rbp), %r14
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%r14, %rsi
	call	_list2
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$57504, %esi
	movq	%rax, %r8
	movq	%r13, %rdi
	call	_frame_size_history_add
	movq	%r14, %rdx
	movl	$26256, %esi
	movq	%r13, %rdi
	call	_store_frame_param
	cmpq	%rbx, %r14
	je	L1489
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_x_set_fullscreen
	jmp	L1489
L1532:
	movq	-96(%rbp), %rdx
	movq	%r13, %rdi
	movq	-104(%rbp), %rsi
	sarq	$2, %rdx
	sarq	$2, %rsi
	call	_x_wm_set_icon_position
	jmp	L1491
L1503:
	xorl	%r15d, %r15d
	movq	$52416, -120(%rbp)
	xorl	%ecx, %ecx
	movl	%ebx, %r14d
	movl	$52416, %edx
	movq	$52416, -96(%rbp)
	movb	$0, -121(%rbp)
	movq	$52416, -104(%rbp)
	movl	%ebx, -88(%rbp)
	movq	$52416, -72(%rbp)
L1452:
	movslq	312(%r13), %rsi
	movl	$1, %ebx
	movq	%rsi, %rax
	leaq	2(,%rsi,4), %rsi
	testl	%eax, %eax
	movq	%rsi, -80(%rbp)
	jns	L1459
	movl	$41616, %edi
	movl	%ecx, -136(%rbp)
	movq	%rdx, -112(%rbp)
	call	_list2
	movl	-136(%rbp), %ecx
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rdx
	jmp	L1459
L1597:
	movslq	316(%r13), %rsi
	movl	$1, %r12d
	movq	%rsi, %rax
	leaq	2(,%rsi,4), %rsi
	testl	%eax, %eax
	movq	%rsi, -72(%rbp)
	jns	L1460
	movl	$41616, %edi
	movl	%ecx, -136(%rbp)
	movq	%rdx, -112(%rbp)
	call	_list2
	movl	-136(%rbp), %ecx
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rdx
	jmp	L1460
L1513:
	movq	$2, -104(%rbp)
	jmp	L1462
L1471:
	movq	-80(%rbp), %rsi
	movslq	312(%r13), %rax
	sarq	$2, %rsi
	cmpq	%rsi, %rax
	je	L1604
L1498:
	movl	332(%r13), %eax
	andl	$-49, %eax
	cmpq	$36864, -80(%rbp)
	movl	%eax, 332(%r13)
	je	L1500
	cmpl	$2, %edx
	jne	L1476
	movl	$2147483648, %edx
	movl	$4294967295, %edi
	addq	%rsi, %rdx
	cmpq	%rdi, %rdx
	jbe	L1477
L1476:
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L1501
	xorl	%ebx, %ebx
	cmpl	$7, %ecx
	jne	L1475
	movq	-80(%rbp), %rsi
	leaq	-56(%rbp), %rcx
	xorl	%r9d, %r9d
	movl	$2, %edx
	leaq	-52(%rbp), %r8
	movq	%r13, %rdi
	call	_frame_float
	movl	%eax, %ebx
L1475:
	cmpq	$36864, -72(%rbp)
	je	L1605
L1482:
	movl	-72(%rbp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1606
L1484:
	movl	-72(%rbp), %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1607
	xorl	%edx, %edx
	cmpl	$7, %eax
	je	L1608
L1483:
	movl	%edx, 316(%r13)
	movl	$-1, %ecx
	movl	%ebx, %esi
	movq	%r13, %rdi
	movl	%ebx, 312(%r13)
	movl	$1, 328(%r13)
	call	_x_set_offset
	jmp	L1468
L1514:
	movq	$2, -96(%rbp)
	jmp	L1464
L1599:
	cmpq	$0, -96(%rbp)
	movb	$0, -120(%rbp)
	setne	%al
	orl	%edx, %eax
	movl	%eax, %r15d
	jmp	L1464
L1598:
	cmpq	$0, -104(%rbp)
	movb	$0, -112(%rbp)
	setne	%dl
	jmp	L1462
L1604:
	movq	-72(%rbp), %rdi
	movl	%edi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1473
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	L1498
L1473:
	movq	-72(%rbp), %rax
	movslq	316(%r13), %rdi
	sarq	$2, %rax
	cmpq	%rax, %rdi
	jne	L1498
	jmp	L1468
	.align 4,0x90
L1500:
	orl	$16, %eax
	xorl	%ebx, %ebx
	cmpq	$36864, -72(%rbp)
	movl	%eax, 332(%r13)
	jne	L1482
L1605:
	orl	$32, 332(%r13)
	xorl	%edx, %edx
	jmp	L1483
L1606:
	movq	-72(%rbp), %rcx
	movl	$2147483648, %eax
	movl	$4294967295, %edx
	sarq	$2, %rcx
	addq	%rcx, %rax
	cmpq	%rdx, %rax
	ja	L1484
	testq	%rcx, %rcx
	movl	%ecx, %edx
	jns	L1483
L1587:
	orl	$32, 332(%r13)
	jmp	L1483
L1607:
	movq	-72(%rbp), %rax
	leaq	-3(%rax), %rcx
	movq	-3(%rax), %rax
	cmpq	$36864, %rax
	je	L1609
	xorl	%edx, %edx
	cmpq	$41616, %rax
	jne	L1483
	movq	8(%rcx), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L1483
	movq	-3(%rax), %rax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	L1483
	sarq	$2, %rax
	movl	$2147483648, %ecx
	movl	$4294967295, %esi
	addq	%rax, %rcx
	cmpq	%rsi, %rcx
	cmovbe	%eax, %edx
	jmp	L1483
	.align 4,0x90
L1608:
	movq	-72(%rbp), %rsi
	movl	$3, %edx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	leaq	-56(%rbp), %rcx
	leaq	-52(%rbp), %r8
	call	_frame_float
	movl	%eax, %edx
	jmp	L1483
L1609:
	movq	8(%rcx), %rax
	xorl	%edx, %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L1483
	movq	-3(%rax), %rax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	L1483
	sarq	$2, %rax
	movl	$4294967294, %ecx
	leaq	2147483647(%rax), %rsi
	cmpq	%rcx, %rsi
	ja	L1483
	movl	%eax, %edx
	negl	%edx
	jmp	L1587
L1603:
	movq	8(%rcx), %rdx
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L1475
	movq	-3(%rdx), %rdx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	L1475
	sarq	$2, %rdx
	movl	$4294967294, %ecx
	leaq	2147483647(%rdx), %rsi
	cmpq	%rcx, %rsi
	ja	L1475
	movl	%edx, %ebx
	negl	%ebx
L1586:
	orl	$16, %eax
	movl	%eax, 332(%r13)
	jmp	L1475
L1477:
	testq	%rsi, %rsi
	movl	%esi, %ebx
	jns	L1475
	jmp	L1586
L1443:
	orq	$-1, %rdi
	call	_memory_full
L1589:
	movl	$1, %ecx
	jmp	L1440
L1588:
	movq	%r14, %rsi
	movl	$34512, %edi
	call	_wrong_type_argument
LFE993:
	.align 4,0x90
	.globl _Fmodify_frame_parameters
_Fmodify_frame_parameters:
LFB969:
	pushq	%rbp
LCFI526:
	movq	%rsp, %rbp
LCFI527:
	pushq	%r15
LCFI528:
	movq	%rsi, %r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
LCFI529:
	call	_decode_live_frame
	movq	%rax, -56(%rbp)
	movzwl	218(%rax), %eax
	movw	%ax, -58(%rbp)
	andw	$896, %ax
	cmpw	$256, %ax
	je	L1640
	movq	%r15, %rdi
	call	_Flength
	movl	$8, %edi
	sarq	$2, %rax
	movq	%rax, %r12
	movq	_current_thread@GOTPCREL(%rip), %rax
	leaq	(%r12,%r12), %r13
	movq	(%rax), %rax
	movq	120(%rax), %rcx
	movq	112(%rax), %rax
	movq	%rcx, -72(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -80(%rbp)
	movq	%rdi, %rax
	mulq	%r13
	movq	%rax, %rdi
	jo	L1641
L1613:
	testq	%rdi, %rdi
	js	L1616
	testq	%rcx, %rcx
	jne	L1616
	cmpq	$16384, %rdi
	jg	L1642
	addq	$16, %rdi
	movl	%r15d, %eax
	movb	$0, -58(%rbp)
	subq	%rdi, %rsp
	andl	$7, %eax
	leaq	15(%rsp), %rbx
	andq	$-16, %rbx
	cmpl	$3, %eax
	leaq	(%rbx,%r12,8), %r12
	jne	L1612
L1619:
	xorl	%r14d, %r14d
	.align 4,0x90
L1621:
	leaq	-3(%r15), %r13
	movq	-3(%r15), %r15
	movq	%r15, %rdi
	call	_Fcar
	movq	%r15, %rdi
	movq	%rax, (%rbx,%r14,8)
	call	_Fcdr
	movq	%rax, (%r12,%r14,8)
	movq	8(%r13), %r15
	addq	$1, %r14
	movl	%r15d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1621
L1622:
	subq	$1, %r14
	cmpq	$-1, %r14
	je	L1643
L1625:
	movq	(%rbx,%r14,8), %r15
	movq	(%r12,%r14,8), %r13
	movq	-56(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	call	_store_frame_param
	cmpq	$25104, %r15
	je	L1629
	cmpq	$11328, %r15
	jne	L1622
L1629:
	movq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movq	%r15, %rsi
	subq	$1, %r14
	call	_update_face_from_frame_parameter
	cmpq	$-1, %r14
	jne	L1625
L1643:
	cmpb	$0, -58(%rbp)
	je	L1612
L1620:
	movabsq	$-3689348814741910323, %r14
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	subq	-80(%rbp), %rdi
	sarq	$3, %rdi
	imulq	%r14, %rdi
	call	_unbind_to
L1612:
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI530:
	ret
	.align 4,0x90
L1642:
LCFI531:
	call	_xmalloc
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_make_save_memory
	movq	_free_save_value@GOTPCREL(%rip), %rdi
	leaq	(%rbx,%r12,8), %r12
	movq	%rax, %rsi
	call	_record_unwind_protect
	movl	%r15d, %eax
	movb	$1, -58(%rbp)
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1619
	jmp	L1620
	.align 4,0x90
L1640:
	movq	-56(%rbp), %rdi
	movq	%r15, %rsi
	call	_x_set_frame_parameters
	jmp	L1612
L1616:
	orq	$-1, %rdi
	call	_memory_full
L1641:
	movl	$1, %ecx
	jmp	L1613
LFE969:
	.cstring
	.align 3
lC23:
	.ascii "Terminal is not live, can't create new frames on it\0"
	.text
	.align 4,0x90
	.globl _Fmake_terminal_frame
_Fmake_terminal_frame:
LFB923:
	pushq	%rbp
LCFI532:
	movq	%rsp, %rbp
LCFI533:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
LCFI534:
	movq	_selected_frame@GOTPCREL(%rip), %rbx
	movq	%rdi, -104(%rbp)
	movq	(%rbx), %rdx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	jne	L1645
	movabsq	$4611686019484352512, %rax
	andq	-5(%rdx), %rax
	leaq	-5(%rdx), %r13
	movabsq	$4611686018477719552, %rdx
	cmpq	%rdx, %rax
	jne	L1645
	cmpq	$0, 384(%r13)
	je	L1645
	movq	%rdi, %rsi
	movl	$49584, %edi
	call	_Fassq
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L1646
L1649:
	movq	_current_thread@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rcx
	movq	112(%rax), %rax
	movq	%rcx, -120(%rbp)
	movq	%rax, -112(%rbp)
	movq	(%rbx), %rax
	subq	$5, %rax
	movzwl	218(%rax), %edx
	andw	$896, %dx
	addw	$-128, %dx
	je	L1647
	xorl	%edx, %edx
L1648:
	movq	-104(%rbp), %rsi
	movl	$51504, %edi
	call	_get_future_frame_param
	testq	%rax, %rax
	movq	%rax, %r14
	je	L1672
	leaq	-4(%rax), %rsi
	movq	8(%rsi), %rcx
	movq	-4(%rax), %rdx
	testq	%rcx, %rcx
	movq	%rcx, %rax
	cmovs	%rdx, %rax
	leaq	1(%rax), %rdi
	cmpq	$16383, %rax
	jg	L1653
	addq	$31, %rax
	movl	$16384, %r14d
	xorl	%r15d, %r15d
	andq	$-16, %rax
	subq	%rdi, %r14
	subq	%rax, %rsp
	leaq	15(%rsp), %r12
	andq	$-16, %r12
L1654:
	testq	%rcx, %rcx
	movq	24(%rsi), %rsi
	movq	%r12, %rdi
	cmovns	%rcx, %rdx
	addq	$1, %rdx
	call	_memcpy
L1651:
	movq	(%rbx), %rax
	xorl	%edx, %edx
	movzwl	213(%rax), %ecx
	subq	$5, %rax
	andw	$896, %cx
	addw	$-128, %cx
	jne	L1656
	movq	384(%rax), %rax
	movq	88(%rax), %rax
	movq	16(%rax), %rdx
L1656:
	movq	-104(%rbp), %rsi
	movl	$52320, %edi
	call	_get_future_frame_param
	testq	%rax, %rax
	movq	%rax, %rsi
	je	L1675
	leaq	-4(%rax), %rbx
	movq	8(%rbx), %rcx
	movq	-4(%rax), %rdx
	testq	%rcx, %rcx
	movq	%rcx, %rax
	cmovs	%rdx, %rax
	leaq	1(%rax), %rdi
	cmpq	%rax, %r14
	jle	L1659
	addq	$31, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	leaq	15(%rsp), %r8
	andq	$-16, %r8
L1660:
	testq	%rcx, %rcx
	movq	24(%rbx), %rsi
	movq	%r8, %rdi
	cmovns	%rcx, %rdx
	addq	$1, %rdx
	call	_memcpy
	movq	%rax, %r8
L1657:
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r8, %rsi
	call	_init_tty
	testb	%r15b, %r15b
	movq	%rax, %r12
	jne	L1698
L1650:
	cmpq	$0, 64(%r12)
	je	L1699
	movl	$1, %edi
	call	_make_frame
	movq	_Vframe_list@GOTPCREL(%rip), %r15
	leaq	5(%rax), %r14
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	(%r15), %rsi
	call	_Fcons
	leaq	lC18(%rip), %rsi
	movq	%rax, (%r15)
	movq	_tty_frame_count(%rip), %rax
	leaq	-80(%rbp), %r15
	movq	%r15, %rdi
	leaq	1(%rax), %rdx
	xorl	%eax, %eax
	movq	%rdx, _tty_frame_count(%rip)
	call	_make_formatted_string
	movq	%rax, 8(%rbx)
	movzbl	217(%rbx), %eax
	movl	%eax, %edx
	andl	$12, %edx
	cmpb	$4, %dl
	je	L1663
	call	_redisplay_other_windows
	movzbl	217(%rbx), %eax
L1663:
	testb	$32, %al
	je	L1664
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
L1664:
	movzbl	217(%rbx), %eax
	movq	%r12, 384(%rbx)
	movq	%rbx, %rdi
	andl	$-13, %eax
	orl	$4, %eax
	movb	%al, 217(%rbx)
	addl	$1, 52(%r12)
	movzwl	218(%rbx), %eax
	andw	$-897, %ax
	orb	$-128, %al
	movw	%ax, 218(%rbx)
	call	_create_tty_output
	movq	_globals@GOTPCREL(%rip), %rax
	movq	$-2, 488(%rbx)
	andb	$-8, 220(%rbx)
	movq	$-3, 480(%rbx)
	cmpq	$0, 1552(%rax)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, 284(%rbx)
	movl	%eax, 364(%rbx)
	imull	376(%rbx), %eax
	subl	%eax, 300(%rbx)
	movl	%eax, 368(%rbx)
	movzwl	218(%rbx), %eax
	andw	$640, %ax
	addw	$-128, %ax
	jne	L1645
	movq	384(%rbx), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rdx
	movl	%edx, %ecx
	andl	$7, %ecx
	cmpl	$5, %ecx
	je	L1700
L1665:
	movq	%r14, 80(%rax)
	movq	_noninteractive@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	L1701
L1671:
	movq	384(%rbx), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rdi
	call	_fileno
	leaq	-84(%rbp), %rsi
	movq	%r15, %rdx
	movl	%eax, %edi
	call	_get_tty_size
	movl	-84(%rbp), %esi
	xorl	%r8d, %r8d
	movl	$5, %ecx
	movl	-80(%rbp), %edx
	movl	$49632, %r9d
	movq	%rbx, %rdi
	subl	364(%rbx), %edx
	call	_adjust_frame_size
	movq	%rbx, %rdi
	call	_adjust_frame_glyphs
	movq	%rbx, %rdi
	call	_calculate_costs
	movq	88(%r12), %rax
	movq	16(%rax), %r15
	movq	%r15, %rdi
	call	_strlen
	movq	%r15, %rdi
	leaq	-104(%rbp), %r15
	movq	%rax, %rsi
	call	_make_string
	movl	$52320, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	_store_in_alist
	movq	88(%r12), %rax
	movq	8(%rax), %r12
	testq	%r12, %r12
	je	L1668
	movq	%r12, %rdi
	call	_strlen
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	_make_string
	movq	%rax, %r12
L1668:
	movq	%r12, %rdx
	movl	$51504, %esi
	movq	%r15, %rdi
	call	_store_in_alist
	movl	$49344, %edx
	movl	$36480, %esi
	movq	%r15, %rdi
	call	_store_in_alist
	movq	-104(%rbp), %rsi
	movq	%r14, %rdi
	call	_Fmodify_frame_parameters
	movq	104(%r13), %rdi
	call	_Fcopy_alist
	movq	%rax, %r12
	movq	%rax, 104(%rbx)
	andl	$7, %eax
	cmpl	$3, %eax
	jne	L1669
	.align 4,0x90
L1670:
	movq	-3(%r12), %rax
	movq	5(%rax), %rdi
	call	_Fcopy_sequence
	movq	-3(%r12), %rdx
	movq	%rax, 5(%rdx)
	movq	5(%r12), %r12
	movl	%r12d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1670
L1669:
	orb	$48, 221(%rbx)
	leaq	-40(%rbp), %rsp
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI535:
	ret
	.align 4,0x90
L1701:
LCFI536:
	movq	%rbx, %rdi
	call	_init_frame_faces
	movzwl	218(%rbx), %eax
	andw	$640, %ax
	addw	$-128, %ax
	je	L1671
L1645:
	call	_emacs_abort
	.align 4,0x90
L1700:
	movabsq	$4611686019484352512, %rcx
	andq	-5(%rdx), %rcx
	leaq	-5(%rdx), %rsi
	movq	%rcx, %rdx
	movabsq	$4611686018477719552, %rcx
	cmpq	%rcx, %rdx
	jne	L1665
	cmpq	$0, 384(%rsi)
	je	L1665
	testb	$32, 217(%rsi)
	je	L1666
	movq	_frame_garbaged@GOTPCREL(%rip), %rdx
	movb	$1, (%rdx)
L1666:
	movzbl	217(%rsi), %edx
	andl	$-13, %edx
	orl	$8, %edx
	movb	%dl, 217(%rsi)
	jmp	L1665
	.align 4,0x90
L1647:
	movq	384(%rax), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdx
	jmp	L1648
	.align 4,0x90
L1698:
	movabsq	$-3689348814741910323, %rax
	movq	-120(%rbp), %rdi
	xorl	%esi, %esi
	subq	-112(%rbp), %rdi
	sarq	$3, %rdi
	imulq	%rax, %rdi
	call	_unbind_to
	jmp	L1650
	.align 4,0x90
L1672:
	xorl	%r15d, %r15d
	movl	$16384, %r14d
	xorl	%r12d, %r12d
	jmp	L1651
	.align 4,0x90
L1659:
	movq	%rsi, -128(%rbp)
	movl	$1, %r15d
	call	_record_xmalloc
	movq	-128(%rbp), %rsi
	movq	%rax, %r8
	movq	8(%rbx), %rcx
	movq	-4(%rsi), %rdx
	jmp	L1660
	.align 4,0x90
L1646:
	movq	5(%rax), %rdi
	call	_decode_live_terminal
	testq	%rax, %rax
	movq	%rax, %r12
	jne	L1650
	jmp	L1649
	.align 4,0x90
L1653:
	movq	%rsi, -128(%rbp)
	movl	$1, %r15d
	call	_record_xmalloc
	movq	-128(%rbp), %rsi
	movq	-4(%r14), %rdx
	movq	%rax, %r12
	movl	$16384, %r14d
	movq	8(%rsi), %rcx
	jmp	L1654
	.align 4,0x90
L1675:
	xorl	%r8d, %r8d
	jmp	L1657
L1699:
	leaq	lC23(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE923:
	.cstring
lC24:
	.ascii "Invalid line-spacing\0"
	.text
	.align 4,0x90
	.globl _x_set_line_spacing
_x_set_line_spacing:
LFB996:
	testq	%rsi, %rsi
	je	L1712
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1713
L1705:
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$7, %eax
	jne	L1706
	pxor	%xmm0, %xmm0
	cvtsi2sd	376(%rdi), %xmm0
	mulsd	-7(%rsi), %xmm0
	addsd	lC5(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	testl	%eax, %eax
	js	L1706
L1711:
	movl	%eax, 472(%rdi)
L1704:
	testb	$12, 217(%rdi)
	jne	L1714
	ret
	.align 4,0x90
L1713:
	movq	%rsi, %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	ja	L1705
	jmp	L1711
	.align 4,0x90
L1714:
	jmp	_redraw_frame
	.align 4,0x90
L1712:
	movl	$0, 472(%rdi)
	jmp	L1704
L1706:
	leaq	lC24(%rip), %rdi
	subq	$8, %rsp
LCFI537:
	call	_signal_error
LFE996:
	.cstring
lC26:
	.ascii "Invalid screen-gamma\0"
	.text
	.align 4,0x90
	.globl _x_set_screen_gamma
_x_set_screen_gamma:
LFB997:
	pushq	%rbp
LCFI538:
	pushq	%rbx
LCFI539:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI540:
	testq	%rsi, %rsi
	je	L1736
	movl	%esi, %edx
	movl	%esi, %eax
	andl	$3, %edx
	andl	$7, %eax
	cmpl	$2, %edx
	je	L1718
	cmpl	$7, %eax
	je	L1725
L1719:
	leaq	lC26(%rip), %rdi
	call	_signal_error
	.align 4,0x90
L1718:
	cmpl	$7, %eax
	je	L1725
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
L1720:
	ucomisd	lC0(%rip), %xmm0
	jbe	L1719
	mulsd	lC25(%rip), %xmm0
	movsd	lC1(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 464(%rbx)
L1717:
	movq	72(%rbx), %rsi
	movl	$11328, %edi
	call	_Fassq
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L1723
	movq	5(%rax), %rbp
	movl	%ebp, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1737
L1723:
	movl	$1, %edi
	call	_clear_face_cache
	addq	$8, %rsp
LCFI541:
	movq	%rbx, %rdi
	popq	%rbx
LCFI542:
	popq	%rbp
LCFI543:
	jmp	_fset_redisplay
	.align 4,0x90
L1725:
LCFI544:
	movsd	-7(%rsi), %xmm0
	jmp	L1720
	.align 4,0x90
L1736:
	movq	$0x000000000, 464(%rdi)
	jmp	L1717
	.align 4,0x90
L1737:
	movl	$57120, %esi
	movl	$11328, %edi
	call	_Fget
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L1723
	sarq	$2, %rax
	cmpq	$45, %rax
	ja	L1723
	movq	384(%rbx), %rdx
	movq	112(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	testq	%rax, %rax
	je	L1723
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	*%rax
	jmp	L1723
LFE997:
	.cstring
lC27:
	.ascii "Font `%s' is not defined\0"
	.align 3
lC28:
	.ascii "The default fontset can't be used for a frame font\0"
lC29:
	.ascii "Unknown fontset: %s\0"
lC30:
	.ascii "Invalid font\0"
	.text
	.align 4,0x90
	.globl _x_set_font
_x_set_font:
LFB998:
	pushq	%r15
LCFI545:
	pushq	%r14
LCFI546:
	pushq	%r13
LCFI547:
	movq	%rdx, %r13
	pushq	%r12
LCFI548:
	pushq	%rbp
LCFI549:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI550:
	movq	%rsi, %rbx
	movl	$24528, %esi
	subq	$8, %rsp
LCFI551:
	call	_store_frame_param
	movl	%ebx, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1755
	cmpl	$3, %eax
	je	L1756
	cmpl	$5, %eax
	jne	L1746
	movabsq	$4611686019484352512, %rax
	movq	-5(%rbx), %rdx
	movabsq	$4611686018796486656, %rcx
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jne	L1746
	andl	$4095, %edx
	cmpq	$17, %rdx
	je	L1757
L1746:
	leaq	lC30(%rip), %rdi
	movq	%rbx, %rsi
	call	_signal_error
	.align 4,0x90
L1756:
	movq	-3(%rbx), %rdi
	leaq	-3(%rbx), %r14
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	jne	L1746
	movq	8(%r14), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$5, %edx
	jne	L1746
	movabsq	$4611686018796486656, %rcx
	movq	-5(%rax), %rdx
	movabsq	$4611686019484352512, %rax
	andq	%rdx, %rax
	cmpq	%rcx, %rax
	jne	L1746
	andl	$4095, %edx
	cmpq	$17, %rdx
	jne	L1746
	xorl	%esi, %esi
	call	_fs_query_fontset
	testl	%eax, %eax
	movl	%eax, %r12d
	js	L1758
	movq	8(%r14), %rbx
	movl	$5088, %esi
	movq	%rbx, %rdi
	movq	115(%rbx), %r15
	call	_Ffont_get
	movq	%rax, %r14
	jmp	L1742
	.align 4,0x90
L1755:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_fs_query_fontset
	testl	%eax, %eax
	movl	%eax, %r12d
	js	L1759
	je	L1743
	movl	%eax, %edi
	call	_fontset_ascii
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	_font_open_by_name
	testq	%rax, %rax
	je	L1754
L1744:
	movq	115(%rax), %r15
	movq	%rbx, %r14
	movq	%rax, %rbx
L1742:
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_Fequal
	testq	%rax, %rax
	je	L1760
L1738:
	addq	$8, %rsp
LCFI552:
	popq	%rbx
LCFI553:
	popq	%rbp
LCFI554:
	popq	%r12
LCFI555:
	popq	%r13
LCFI556:
	popq	%r14
LCFI557:
	popq	%r15
LCFI558:
	ret
	.align 4,0x90
L1757:
LCFI559:
	movl	$5088, %esi
	movq	%rbx, %rdi
	call	_Ffont_get
	movq	115(%rbx), %r15
	movq	%rax, %r14
	movq	392(%rbp), %rax
	movl	260(%rax), %r12d
	testl	%r12d, %r12d
	js	L1742
	movl	%r12d, %edi
	call	_fontset_ascii
	movq	%rax, %rdi
	call	_font_spec_from_name
	testq	%rax, %rax
	je	L1751
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_font_match_p
	movq	%r13, %rsi
	movq	%rbx, %rdi
	testb	%al, %al
	movl	$-1, %eax
	cmove	%eax, %r12d
	call	_Fequal
	testq	%rax, %rax
	jne	L1738
L1760:
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_x_new_font
	movq	%r15, %rdx
	movq	%rbp, %rdi
	movl	$24528, %esi
	call	_store_frame_param
	movq	%r14, %rdx
	movl	$24768, %esi
	movq	%rbp, %rdi
	call	_store_frame_param
	movq	%rbp, %rdi
	movl	$0, 232(%rbp)
	call	_clear_current_matrices
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbp, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	movq	%rbp, %rdi
	orb	$32, 217(%rbp)
	orb	$64, 216(%rbp)
	call	_recompute_basic_faces
	addq	$8, %rsp
LCFI560:
	xorl	%edi, %edi
	popq	%rbx
LCFI561:
	popq	%rbp
LCFI562:
	popq	%r12
LCFI563:
	popq	%r13
LCFI564:
	popq	%r14
LCFI565:
	popq	%r15
LCFI566:
	jmp	_do_pending_window_change
	.align 4,0x90
L1751:
LCFI567:
	movl	$-1, %r12d
	jmp	L1742
	.align 4,0x90
L1759:
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_font_open_by_name
	testq	%rax, %rax
	jne	L1744
L1754:
	movq	20(%rbx), %rsi
	leaq	lC27(%rip), %rdi
	call	_error
L1743:
	leaq	lC28(%rip), %rdi
	xorl	%eax, %eax
	call	_error
L1758:
	movq	(%r14), %rax
	leaq	lC29(%rip), %rdi
	movq	20(%rax), %rsi
	xorl	%eax, %eax
	call	_error
LFE998:
	.cstring
lC31:
	.ascii "No font backend available\0"
	.align 3
lC32:
	.ascii "None of specified font backends are available\0"
	.text
	.align 4,0x90
	.globl _x_set_font_backend
_x_set_font_backend:
LFB999:
	pushq	%r15
LCFI568:
	pushq	%r14
LCFI569:
	pushq	%r13
LCFI570:
	pushq	%r12
LCFI571:
	movq	%rdx, %r12
	pushq	%rbp
LCFI572:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI573:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI574:
	testq	%rsi, %rsi
	je	L1762
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L1762
	cmpl	$4, %eax
	jne	L1800
	movq	20(%rsi), %rdi
	xorl	%r15d, %r15d
	movl	$1, %r14d
	movabsq	$4294983168, %r13
	movzbl	(%rdi), %ecx
L1764:
	testb	%cl, %cl
	je	L1770
	movq	%rdi, %rbx
	jmp	L1773
	.align 4,0x90
L1768:
	addq	$1, %rbx
	movzbl	(%rbx), %ecx
	testb	%cl, %cl
	je	L1801
L1773:
	movsbl	%cl, %eax
	cmpl	$32, %eax
	ja	L1766
	movq	%r14, %rax
	salq	%cl, %rax
	testq	%r13, %rax
	jne	L1767
L1766:
	cmpb	$44, %cl
	jne	L1768
L1767:
	cmpq	%rbx, %rdi
	jb	L1783
L1769:
	cmpb	$0, (%rbx)
	jne	L1772
L1770:
	movq	%r15, %rdi
	call	_Fnreverse
	movq	%rax, %rbx
L1762:
	testq	%r12, %r12
	je	L1777
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_Fequal
	testq	%rax, %rax
	je	L1777
L1761:
	addq	$8, %rsp
LCFI575:
	popq	%rbx
LCFI576:
	popq	%rbp
LCFI577:
	popq	%r12
LCFI578:
	popq	%r13
LCFI579:
	popq	%r14
LCFI580:
	popq	%r15
LCFI581:
	ret
	.align 4,0x90
L1777:
LCFI582:
	movq	392(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	L1776
	xorl	%edi, %edi
	call	_free_all_realized_faces
L1776:
	testq	%rbx, %rbx
	movl	$49344, %eax
	movq	%rbp, %rdi
	cmove	%rax, %rbx
	movq	%rbx, %rsi
	call	_font_update_drivers
	testq	%rax, %rax
	je	L1802
	movq	%rax, %rdx
	movl	$24576, %esi
	movq	%rbp, %rdi
	call	_store_frame_param
	movq	392(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	L1761
	leaq	5(%rbp), %rdi
	movl	$24528, %esi
	call	_Fframe_parameter
	movq	%rbp, %rdi
	xorl	%edx, %edx
	movq	%rax, %rsi
	call	_x_set_font
	movq	_face_change@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	_windows_or_buffers_changed@GOTPCREL(%rip), %rax
	movl	$18, (%rax)
	addq	$8, %rsp
LCFI583:
	popq	%rbx
LCFI584:
	popq	%rbp
LCFI585:
	popq	%r12
LCFI586:
	popq	%r13
LCFI587:
	popq	%r14
LCFI588:
	popq	%r15
LCFI589:
	ret
	.align 4,0x90
L1803:
LCFI590:
	movq	%r14, %rax
	salq	%cl, %rax
	testq	%r13, %rax
	je	L1771
L1772:
	addq	$1, %rbx
	movzbl	(%rbx), %ecx
	testb	%cl, %cl
	je	L1770
	movsbl	%cl, %eax
	cmpl	$32, %eax
	jbe	L1803
L1771:
	movq	%rbx, %rdi
	jmp	L1764
	.align 4,0x90
L1802:
	testq	%r12, %r12
	je	L1804
	movq	%rbp, %rdi
	movq	%r12, %rsi
	call	_font_update_drivers
	leaq	lC32(%rip), %rdi
	xorl	%eax, %eax
	call	_error
	.align 4,0x90
L1801:
	cmpq	%rbx, %rdi
	jnb	L1770
L1783:
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	call	_make_string
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_Fintern
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%rax, %r15
	jmp	L1769
L1804:
	leaq	lC31(%rip), %rdi
	call	_error
L1800:
	movl	$48528, %edi
	call	_wrong_type_argument
LFE999:
	.align 4,0x90
	.globl _x_set_left_fringe
_x_set_left_fringe:
LFB1000:
	movl	%esi, %ecx
	movl	352(%rdi), %edx
	movl	$8, %eax
	andl	$3, %ecx
	cmpl	$2, %ecx
	je	L1817
L1806:
	cmpl	%edx, %eax
	je	L1814
L1819:
	pushq	%rbx
LCFI591:
	movl	372(%rdi), %ecx
	movq	%rdi, %rbx
	movl	%eax, 352(%rdi)
	addl	356(%rdi), %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	movl	%eax, 360(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1818
L1809:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	popq	%rbx
LCFI592:
	ret
	.align 4,0x90
L1818:
LCFI593:
	movl	$-1, %edx
	movl	$33504, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	jmp	L1809
	.align 4,0x90
L1817:
LCFI594:
	sarq	$2, %rsi
	movl	$4294967294, %ecx
	leaq	2147483647(%rsi), %r8
	cmpq	%rcx, %r8
	ja	L1806
	movl	%esi, %eax
	negl	%eax
	testq	%rsi, %rsi
	cmovns	%esi, %eax
	cmpl	%edx, %eax
	jne	L1819
L1814:
	ret
LFE1000:
	.align 4,0x90
	.globl _x_set_right_fringe
_x_set_right_fringe:
LFB1001:
	movl	%esi, %ecx
	movl	356(%rdi), %edx
	movl	$8, %eax
	andl	$3, %ecx
	cmpl	$2, %ecx
	je	L1832
L1821:
	cmpl	%edx, %eax
	je	L1829
L1834:
	pushq	%rbx
LCFI595:
	movl	372(%rdi), %ecx
	movq	%rdi, %rbx
	movl	%eax, 356(%rdi)
	addl	352(%rdi), %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	movl	%eax, 360(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1833
L1824:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	popq	%rbx
LCFI596:
	ret
	.align 4,0x90
L1833:
LCFI597:
	movl	$-1, %edx
	movl	$44784, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	jmp	L1824
	.align 4,0x90
L1832:
LCFI598:
	sarq	$2, %rsi
	movl	$4294967294, %ecx
	leaq	2147483647(%rsi), %r8
	cmpq	%rcx, %r8
	ja	L1821
	movl	%esi, %eax
	negl	%eax
	testq	%rsi, %rsi
	cmovns	%esi, %eax
	cmpl	%edx, %eax
	jne	L1834
L1829:
	ret
LFE1001:
	.cstring
	.align 3
lC33:
	.ascii "Cannot change the border width of a frame\0"
	.text
	.align 4,0x90
	.globl _x_set_border_width
_x_set_border_width:
LFB1002:
	movl	%esi, %eax
	subq	$8, %rsp
LCFI599:
	movq	%rsi, %rcx
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L1841
	movq	%rsi, %rdx
	movl	$2147483648, %eax
	movl	$4294967295, %esi
	sarq	$2, %rdx
	addq	%rdx, %rax
	cmpq	%rsi, %rax
	ja	L1842
	movslq	336(%rdi), %rax
	cmpq	%rdx, %rax
	je	L1835
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1843
	movl	%edx, 336(%rdi)
L1835:
	addq	$8, %rsp
LCFI600:
	ret
L1842:
LCFI601:
	movabsq	$8589934590, %rdx
	movq	%rcx, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L1841:
	movl	$30816, %edi
	call	_wrong_type_argument
L1843:
	leaq	lC33(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE1002:
	.align 4,0x90
	.globl _x_set_right_divider_width
_x_set_right_divider_width:
LFB1003:
	movl	%esi, %eax
	pushq	%rbx
LCFI602:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	andl	$3, %eax
	movl	344(%rbx), %ecx
	cmpl	$2, %eax
	jne	L1849
	movq	%rsi, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %esi
	sarq	$2, %rax
	addq	%rax, %rdx
	cmpq	%rsi, %rdx
	ja	L1850
	testq	%rax, %rax
	movl	$0, %edx
	cmovs	%rdx, %rax
	cmpl	%ecx, %eax
	je	L1844
	movl	$-1, %edx
	movl	%eax, 344(%rbx)
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	$44688, %r9d
	movl	$4, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	movq	%rbx, %rdi
	call	_adjust_frame_glyphs
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
L1844:
	popq	%rbx
LCFI603:
	ret
L1850:
LCFI604:
	movabsq	$8589934590, %rdx
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L1849:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE1003:
	.align 4,0x90
	.globl _x_set_bottom_divider_width
_x_set_bottom_divider_width:
LFB1004:
	movl	%esi, %eax
	pushq	%rbx
LCFI605:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	andl	$3, %eax
	movl	348(%rbx), %ecx
	cmpl	$2, %eax
	jne	L1856
	movq	%rsi, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %esi
	sarq	$2, %rax
	addq	%rax, %rdx
	cmpq	%rsi, %rdx
	ja	L1857
	testq	%rax, %rax
	movl	$0, %edx
	cmovs	%rdx, %rax
	cmpl	%ecx, %eax
	je	L1851
	movl	$-1, %edx
	movl	%eax, 348(%rbx)
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	$12432, %r9d
	movl	$4, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	movq	%rbx, %rdi
	call	_adjust_frame_glyphs
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
L1851:
	popq	%rbx
LCFI606:
	ret
L1857:
LCFI607:
	movabsq	$8589934590, %rdx
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L1856:
	movl	$30816, %edi
	call	_wrong_type_argument
LFE1004:
	.align 4,0x90
	.globl _x_set_visibility
_x_set_visibility:
LFB1005:
	addq	$5, %rdi
	testq	%rsi, %rsi
	je	L1861
	cmpq	$29184, %rsi
	je	L1862
	jmp	_Fmake_frame_visible
	.align 4,0x90
L1862:
	jmp	_Ficonify_frame
	.align 4,0x90
L1861:
	movl	$49344, %esi
	jmp	_Fmake_frame_invisible
LFE1005:
	.align 4,0x90
	.globl _x_set_autoraise
_x_set_autoraise:
LFB1006:
	testq	%rsi, %rsi
	setne	%al
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	217(%rdi), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 217(%rdi)
	ret
LFE1006:
	.align 4,0x90
	.globl _x_set_autolower
_x_set_autolower:
LFB1007:
	movzbl	218(%rdi), %eax
	testq	%rsi, %rsi
	setne	%dl
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, 218(%rdi)
	ret
LFE1007:
	.align 4,0x90
	.globl _x_set_unsplittable
_x_set_unsplittable:
LFB1008:
	testq	%rsi, %rsi
	setne	%al
	leal	(%rax,%rax), %edx
	movzbl	218(%rdi), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 218(%rdi)
	ret
LFE1008:
	.align 4,0x90
	.globl _x_set_vertical_scroll_bars
_x_set_vertical_scroll_bars:
LFB1009:
	movzbl	220(%rdi), %eax
	andl	$3, %eax
	cmpq	$33408, %rsi
	je	L1886
	cmpq	$44592, %rsi
	je	L1870
	testq	%rsi, %rsi
	jne	L1871
	testb	%al, %al
	je	L1887
	xorl	%edx, %edx
	jmp	L1868
	.align 4,0x90
L1886:
	cmpb	$2, %al
	je	L1880
	testb	%al, %al
	je	L1880
	ret
	.align 4,0x90
L1870:
	cmpb	$1, %al
	ja	L1884
	movl	$2, %edx
	.align 4,0x90
L1868:
	pushq	%rbx
LCFI608:
	movzbl	220(%rdi), %eax
	movq	%rdi, %rbx
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, 220(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1888
L1873:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	popq	%rbx
LCFI609:
	ret
	.align 4,0x90
L1887:
LCFI610:
	ret
	.align 4,0x90
L1880:
	movl	$1, %edx
	jmp	L1868
	.align 4,0x90
L1884:
	ret
	.align 4,0x90
L1888:
LCFI611:
	movl	$-1, %edx
	movl	$54816, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	jmp	L1873
	.align 4,0x90
L1871:
LCFI612:
	testb	%al, %al
	jne	L1889
	movq	_globals@GOTPCREL(%rip), %rax
	movl	$1, %edx
	movq	568(%rax), %rax
	cmpq	$33408, %rax
	je	L1868
	cmpq	$44592, %rax
	sete	%al
	leal	(%rax,%rax), %edx
	jmp	L1868
	.align 4,0x90
L1889:
	ret
LFE1009:
	.align 4,0x90
	.globl _x_set_horizontal_scroll_bars
_x_set_horizontal_scroll_bars:
LFB1010:
	testq	%rsi, %rsi
	je	L1898
	testb	$4, 220(%rdi)
	jne	L1896
L1892:
	testq	%rsi, %rsi
	pushq	%rbx
LCFI613:
	movq	%rdi, %rbx
	setne	%al
	leal	0(,%rax,4), %edx
	movzbl	220(%rdi), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 220(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1899
L1894:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	popq	%rbx
LCFI614:
	ret
	.align 4,0x90
L1896:
LCFI615:
	ret
	.align 4,0x90
L1898:
	testb	$4, 220(%rdi)
	jne	L1892
	ret
	.align 4,0x90
L1899:
LCFI616:
	movl	$-1, %edx
	movl	$29040, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	call	_adjust_frame_size
	jmp	L1894
LFE1010:
	.align 4,0x90
	.globl _x_set_scroll_bar_width
_x_set_scroll_bar_width:
LFB1011:
	testq	%rsi, %rsi
	pushq	%rbx
LCFI617:
	movq	%rdi, %rbx
	je	L1907
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1908
L1904:
	movq	56(%rbx), %rax
	movl	$0, 371(%rax)
	movl	$0, 363(%rax)
	popq	%rbx
LCFI618:
	ret
	.align 4,0x90
L1908:
LCFI619:
	sarq	$2, %rsi
	leaq	-1(%rsi), %rax
	cmpq	$2147483646, %rax
	ja	L1904
	movslq	428(%rdi), %rax
	cmpq	%rsi, %rax
	je	L1904
	movslq	372(%rdi), %rcx
	movl	%esi, 428(%rdi)
	leaq	-1(%rcx,%rsi), %rax
	cqto
	idivq	%rcx
	movl	%eax, 432(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1902
L1903:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	jmp	L1904
	.align 4,0x90
L1907:
	call	_x_set_scroll_bar_default_width
	movq	392(%rbx), %rax
	cmpq	$0, 56(%rax)
	je	L1903
L1902:
	movl	$-1, %edx
	movl	$45792, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	movq	%rbx, %rdi
	call	_adjust_frame_size
	jmp	L1903
LFE1011:
	.align 4,0x90
	.globl _x_set_scroll_bar_height
_x_set_scroll_bar_height:
LFB1012:
	testq	%rsi, %rsi
	pushq	%rbx
LCFI620:
	movq	%rdi, %rbx
	je	L1916
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L1917
L1913:
	movq	56(%rbx), %rax
	movl	$0, 375(%rax)
	movl	$0, 367(%rax)
	popq	%rbx
LCFI621:
	ret
	.align 4,0x90
L1917:
LCFI622:
	sarq	$2, %rsi
	leaq	-1(%rsi), %rax
	cmpq	$2147483646, %rax
	ja	L1913
	movslq	436(%rdi), %rax
	cmpq	%rsi, %rax
	je	L1913
	movslq	376(%rdi), %rcx
	movl	%esi, 436(%rdi)
	leaq	-1(%rcx,%rsi), %rax
	cqto
	idivq	%rcx
	movl	%eax, 440(%rdi)
	movq	392(%rdi), %rax
	cmpq	$0, 56(%rax)
	jne	L1911
L1912:
	movq	_frame_garbaged@GOTPCREL(%rip), %rax
	movq	%rbx, %rdi
	movb	$1, (%rax)
	call	_fset_redisplay
	orb	$32, 217(%rbx)
	jmp	L1913
	.align 4,0x90
L1916:
	call	_x_set_scroll_bar_default_height
	movq	392(%rbx), %rax
	cmpq	$0, 56(%rax)
	je	L1912
L1911:
	movl	$-1, %edx
	movl	$45696, %r9d
	xorl	%r8d, %r8d
	movl	$3, %ecx
	movl	%edx, %esi
	movq	%rbx, %rdi
	call	_adjust_frame_size
	jmp	L1912
LFE1012:
	.align 4,0x90
	.globl _x_set_alpha
_x_set_alpha:
LFB1013:
	pushq	%rbx
LCFI623:
	xorl	%edx, %edx
	subq	$16, %rsp
LCFI624:
	movsd	lC1(%rip), %xmm0
	movsd	lC35(%rip), %xmm2
	movq	%rsp, %rcx
L1926:
	movl	%esi, %r8d
	movsd	%xmm0, (%rcx,%rdx,8)
	movq	%rsi, %rax
	andl	$7, %r8d
	cmpl	$3, %r8d
	jne	L1919
	movq	-3(%rsi), %rax
	movq	5(%rsi), %rsi
L1919:
	testq	%rax, %rax
	je	L1928
	movl	%eax, %r8d
	andl	$7, %r8d
	cmpl	$7, %r8d
	je	L1932
	movl	%eax, %r8d
	andl	$3, %r8d
	cmpl	$2, %r8d
	jne	L1924
	sarq	$2, %rax
	cmpq	$100, %rax
	ja	L1933
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm2, %xmm1
L1920:
	cmpq	$1, %rdx
	movsd	%xmm1, (%rcx,%rdx,8)
	jne	L1929
	movq	_interrupt_input_blocked@GOTPCREL(%rip), %rdx
	movsd	(%rsp), %xmm0
	movsd	%xmm0, 448(%rdi)
	movsd	8(%rsp), %xmm0
	movl	(%rdx), %eax
	movsd	%xmm0, 456(%rdi)
	addl	$1, %eax
	movl	%eax, (%rdx)
	call	_x_set_frame_alpha
	addq	$16, %rsp
LCFI625:
	popq	%rbx
LCFI626:
	jmp	_unblock_input
	.align 4,0x90
L1929:
LCFI627:
	movl	$1, %edx
	jmp	L1926
	.align 4,0x90
L1928:
	movq	lC34(%rip), %rax
	movd	%rax, %xmm1
	jmp	L1920
	.align 4,0x90
L1932:
	movsd	-7(%rax), %xmm1
	pxor	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm1
	jb	L1922
	ucomisd	%xmm1, %xmm0
	jnb	L1920
L1922:
	call	_make_float
	pxor	%xmm0, %xmm0
	movq	%rax, %rbx
	call	_make_float
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_args_out_of_range
L1933:
	movl	$402, %esi
	movl	$2, %edi
	call	_args_out_of_range
L1924:
	movq	%rax, %rsi
	movl	$39600, %edi
	call	_wrong_type_argument
LFE1013:
	.align 4,0x90
	.globl _x_set_no_special_glyphs
_x_set_no_special_glyphs:
LFB1014:
	cmpq	%rsi, %rdx
	je	L1934
	testq	%rsi, %rsi
	setne	%al
	leal	0(,%rax,4), %edx
	movzbl	221(%rdi), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 221(%rdi)
L1934:
	ret
LFE1014:
	.align 4,0x90
	.globl _x_mouse_grabbed
_x_mouse_grabbed:
LFB1015:
	movl	92(%rdi), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L1936
	movq	632(%rdi), %rdx
	testq	%rdx, %rdx
	je	L1936
	cmpq	$0, 384(%rdx)
	setne	%al
L1936:
	ret
LFE1015:
	.align 4,0x90
	.globl _x_redo_mouse_highlight
_x_redo_mouse_highlight:
LFB1016:
	movq	648(%rdi), %rax
	testq	%rax, %rax
	je	L1941
	cmpq	$0, 384(%rax)
	je	L1941
	movl	676(%rdi), %edx
	movl	672(%rdi), %esi
	movq	%rax, %rdi
	jmp	_note_mouse_highlight
	.align 4,0x90
L1941:
	ret
LFE1016:
	.cstring
lC36:
	.ascii "Emacs\0"
lC37:
	.ascii "emacs\0"
	.text
	.align 4,0x90
	.globl _validate_x_resource_name
_validate_x_resource_name:
LFB1017:
	pushq	%rbp
LCFI628:
	pushq	%rbx
LCFI629:
	subq	$8, %rsp
LCFI630:
	movq	_globals@GOTPCREL(%rip), %rbx
	movl	2992(%rbx), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1947
	leaq	lC36(%rip), %rdi
	movl	$5, %esi
	call	_make_string
	movq	%rax, 2992(%rbx)
L1947:
	movq	3000(%rbx), %rdi
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L1980
L1948:
	leaq	lC37(%rip), %rdi
	movl	$5, %esi
	call	_make_string
	movq	%rax, 3000(%rbx)
L1946:
	addq	$8, %rsp
LCFI631:
	popq	%rbx
LCFI632:
	popq	%rbp
LCFI633:
	ret
	.align 4,0x90
L1980:
LCFI634:
	movq	4(%rdi), %rbp
	movq	20(%rdi), %rax
	testq	%rbp, %rbp
	cmovs	-4(%rdi), %rbp
	testq	%rbp, %rbp
	je	L1946
	leaq	(%rax,%rbp), %r8
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	movabsq	$1125899906850809, %r10
	jmp	L1954
	.align 4,0x90
L1983:
	subl	$45, %ecx
	cmpb	$50, %cl
	jbe	L1981
L1952:
	addq	$1, %rax
	addq	$1, %r9
	cmpq	%rax, %r8
	je	L1982
	.align 4,0x90
L1954:
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$-33, %edx
	subl	$65, %edx
	cmpb	$25, %dl
	ja	L1983
	addq	$1, %rsi
L1984:
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	L1954
L1982:
	testq	%r9, %r9
	je	L1946
	subq	$1, %rsi
	jle	L1948
	cmpq	$16369, %rbp
	ja	L1948
	call	_Fcopy_sequence
	xorl	%edx, %edx
	movabsq	$1125899906850809, %r8
	movq	%rax, 3000(%rbx)
	subq	$4, %rax
	jmp	L1963
	.align 4,0x90
L1962:
	movb	$95, (%rdi)
	.align 4,0x90
L1961:
	addq	$1, %rdx
	cmpq	%rbp, %rdx
	je	L1946
L1963:
	movq	24(%rax), %rdi
	addq	%rdx, %rdi
	movzbl	(%rdi), %esi
	movl	%esi, %ecx
	andl	$-33, %ecx
	subl	$65, %ecx
	cmpb	$25, %cl
	jbe	L1961
	subl	$45, %esi
	cmpb	$50, %sil
	ja	L1962
	btq	%rsi, %r8
	jc	L1961
	jmp	L1962
	.align 4,0x90
L1981:
	btq	%rcx, %r10
	jnc	L1952
	addq	$1, %rsi
	jmp	L1984
LFE1017:
	.cstring
	.align 3
lC38:
	.ascii "x-get-resource: must specify both COMPONENT and SUBCLASS or neither\0"
	.text
	.align 4,0x90
_xrdb_get_resource:
LFB1018:
	pushq	%rbp
LCFI635:
	movl	%esi, %eax
	movq	%rsp, %rbp
LCFI636:
	andl	$7, %eax
	pushq	%r15
LCFI637:
	movq	%rsi, %r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
LCFI638:
	cmpl	$4, %eax
	movq	%rdi, -56(%rbp)
	jne	L2033
	movl	%edx, %eax
	movq	%rdx, %r9
	andl	$7, %eax
	cmpl	$4, %eax
	jne	L2034
	testq	%rcx, %rcx
	movq	%rcx, %r12
	sete	%al
	je	L1988
	movl	%ecx, %edx
	andl	$7, %edx
	cmpl	$4, %edx
	jne	L2035
	testq	%r8, %r8
	sete	%dl
	je	L1990
	movl	%r8d, %ecx
	andl	$7, %ecx
	cmpl	$4, %ecx
	jne	L2012
L1990:
	cmpb	%al, %dl
	jne	L2013
	movq	%r8, -72(%rbp)
	movq	%r9, -64(%rbp)
	call	_validate_x_resource_name
	movq	_globals@GOTPCREL(%rip), %rcx
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r8
	movq	3000(%rcx), %rax
	leaq	-4(%rax), %rsi
	movq	-4(%rax), %rbx
	movq	8(%rsi), %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	js	L2014
L1992:
	movl	%r12d, %edi
	andl	$7, %edi
	cmpl	$4, %edi
	jne	L1993
	movq	4(%r12), %rdi
	leaq	(%rax,%rdi), %r10
	addq	-4(%r12), %rax
	testq	%rdi, %rdi
	cmovns	%r10, %rax
L1993:
	movq	4(%r15), %rdi
	leaq	-4(%r15), %r11
	leaq	-4(%r9), %r10
	testq	%rdi, %rdi
	cmovs	-4(%r15), %rdi
	leaq	3(%rdi,%rax), %r13
	movq	2992(%rcx), %rdi
	movq	4(%rdi), %rax
	testq	%rax, %rax
	cmovs	-4(%rdi), %rax
	movq	%rax, %rdi
	movq	8(%r10), %rax
	testq	%rax, %rax
	cmovs	-4(%r9), %rax
	addq	%rdi, %rax
	movl	%r8d, %edi
	andl	$7, %edi
	cmpl	$4, %edi
	jne	L1998
	movq	4(%r8), %rdi
	leaq	(%rax,%rdi), %r14
	addq	-4(%r8), %rax
	testq	%rdi, %rdi
	cmovns	%r14, %rax
L1998:
	movq	_current_thread@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	120(%rdi), %r14
	movq	112(%rdi), %rdi
	movq	%r14, -112(%rbp)
	movq	%rdi, -120(%rbp)
	leaq	3(%rax,%r13), %rdi
	cmpq	$16384, %rdi
	jg	L2000
	addq	$30, %rdi
	movb	$0, -96(%rbp)
	andq	$-16, %rdi
	subq	%rdi, %rsp
	leaq	15(%rsp), %r14
	andq	$-16, %r14
L2001:
	addq	%r14, %r13
	movq	24(%rsi), %rsi
	testq	%rdx, %rdx
	movq	%r14, %rdi
	cmovns	%rdx, %rbx
	movq	%r11, -80(%rbp)
	movq	%r8, -104(%rbp)
	leaq	1(%rbx), %rdx
	movq	%r9, -88(%rbp)
	addq	%r14, %rbx
	movq	%r10, -72(%rbp)
	movq	%rcx, -64(%rbp)
	call	_memcpy
	movq	-64(%rbp), %rcx
	movq	%r13, %rdi
	movq	2992(%rcx), %rdx
	movq	4(%rdx), %rcx
	leaq	-4(%rdx), %rax
	movq	24(%rax), %rsi
	testq	%rcx, %rcx
	cmovs	-4(%rdx), %rcx
	movq	%rcx, -64(%rbp)
	leaq	1(%rcx), %rdx
	call	_memcpy
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r10
	movq	-88(%rbp), %r9
	leaq	0(%r13,%rcx), %rax
	leaq	1(%rax), %rcx
	movb	$46, (%rax)
	movq	8(%r10), %rax
	movq	24(%r10), %rsi
	movq	%rcx, %rdi
	testq	%rax, %rax
	cmovs	-4(%r9), %rax
	movq	%rax, -64(%rbp)
	leaq	1(%rax), %rdx
	call	_memcpy
	testq	%r12, %r12
	movq	-80(%rbp), %r11
	movq	%rax, %rcx
	je	L2005
	movq	-64(%rbp), %r9
	movq	%r11, -72(%rbp)
	movq	-104(%rbp), %r8
	addq	%r9, %rcx
	movb	$46, (%rcx)
	movq	4(%r8), %rdx
	leaq	1(%rcx), %rdi
	movq	20(%r8), %rsi
	testq	%rdx, %rdx
	cmovs	-4(%r8), %rdx
	addq	$1, %rdx
	call	_memcpy
	movb	$46, (%rbx)
	leaq	1(%rbx), %rcx
	movq	4(%r12), %rbx
	movq	20(%r12), %rsi
	movq	%rcx, %rdi
	testq	%rbx, %rbx
	cmovs	-4(%r12), %rbx
	leaq	1(%rbx), %rdx
	call	_memcpy
	movq	-72(%rbp), %r11
	addq	%rax, %rbx
L2005:
	movb	$46, (%rbx)
	movq	8(%r11), %rdx
	leaq	1(%rbx), %rdi
	movq	24(%r11), %rsi
	testq	%rdx, %rdx
	cmovs	-4(%r15), %rdx
	addq	$1, %rdx
	call	_memcpy
	movq	-56(%rbp), %rdi
	movq	%r13, %rdx
	movq	%r14, %rsi
	call	_x_get_string_resource
	cmpb	$0, -96(%rbp)
	movq	%rax, %rbx
	jne	L2036
L2009:
	testq	%rbx, %rbx
	je	L1985
	cmpb	$0, (%rbx)
	je	L2016
	movq	%rbx, %rdi
	call	_strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_make_string
	movq	%rax, %rbx
L1985:
	leaq	-40(%rbp), %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI639:
	ret
	.align 4,0x90
L2011:
LCFI640:
	movq	%r8, -72(%rbp)
	movq	%rdx, -64(%rbp)
	call	_validate_x_resource_name
	movq	_globals@GOTPCREL(%rip), %rcx
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r8
	movq	3000(%rcx), %rax
	leaq	-4(%rax), %rsi
	movq	-4(%rax), %rbx
	movq	8(%rsi), %rax
	testq	%rax, %rax
	movq	%rax, %rdx
	jns	L1993
	.align 4,0x90
L2014:
	movq	%rax, %rdx
	movq	%rbx, %rax
	jmp	L1992
	.align 4,0x90
L2000:
	movq	%rcx, -96(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -64(%rbp)
	call	_record_xmalloc
	movq	-96(%rbp), %rcx
	movb	$1, -96(%rbp)
	movq	%rax, %r14
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %r9
	movq	-72(%rbp), %r11
	movq	3000(%rcx), %rax
	movq	-64(%rbp), %r10
	leaq	-4(%rax), %rsi
	movq	-4(%rax), %rbx
	movq	4(%rax), %rdx
	jmp	L2001
	.align 4,0x90
L2036:
	movabsq	$-3689348814741910323, %rax
	movq	-112(%rbp), %rdi
	xorl	%esi, %esi
	subq	-120(%rbp), %rdi
	sarq	$3, %rdi
	imulq	%rax, %rdi
	call	_unbind_to
	jmp	L2009
	.align 4,0x90
L1988:
	testq	%r8, %r8
	je	L2011
	movl	%r8d, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	L2013
L2012:
	movq	%r8, %rsi
	movl	$48528, %edi
	call	_wrong_type_argument
	.align 4,0x90
L2016:
	xorl	%ebx, %ebx
	jmp	L1985
L2033:
	movl	$48528, %edi
	call	_wrong_type_argument
L2013:
	leaq	lC38(%rip), %rdi
	xorl	%eax, %eax
	call	_error
L2034:
	movq	%rdx, %rsi
	movl	$48528, %edi
	call	_wrong_type_argument
L2035:
	movq	%rcx, %rsi
	movl	$48528, %edi
	call	_wrong_type_argument
LFE1018:
	.align 4,0x90
	.globl _Fx_get_resource
_Fx_get_resource:
LFB1019:
	pushq	%r13
LCFI641:
	pushq	%r12
LCFI642:
	pushq	%rbp
LCFI643:
	pushq	%rbx
LCFI644:
	subq	$8, %rsp
LCFI645:
	movq	_x_display_list@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	L2040
	movq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rsi, %rbp
	movq	%rdx, %r12
	movq	%rcx, %r13
	call	_check_x_display_info
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbp, %rdx
	movq	160(%rax), %rdi
	addq	$8, %rsp
LCFI646:
	movq	%rbx, %rsi
	popq	%rbx
LCFI647:
	popq	%rbp
LCFI648:
	popq	%r12
LCFI649:
	popq	%r13
LCFI650:
	jmp	_xrdb_get_resource
L2040:
LCFI651:
	leaq	lC2(%rip), %rdi
	xorl	%eax, %eax
	call	_error
LFE1019:
	.align 4,0x90
	.globl _display_x_get_resource
_display_x_get_resource:
LFB1020:
	movq	160(%rdi), %rdi
	jmp	_xrdb_get_resource
LFE1020:
	.cstring
lC39:
	.ascii "true\0"
lC40:
	.ascii "false\0"
	.text
	.align 4,0x90
	.globl _x_get_arg
_x_get_arg:
LFB1021:
	pushq	%r15
LCFI652:
	movq	%r8, %r15
	pushq	%r14
LCFI653:
	movq	%rdi, %r14
	movq	%rdx, %rdi
	pushq	%r13
LCFI654:
	movl	%r9d, %r13d
	pushq	%r12
LCFI655:
	movq	%rcx, %r12
	pushq	%rbp
LCFI656:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI657:
	movq	%rsi, %rbx
	subq	$72, %rsp
LCFI658:
	call	_Fassq
	testq	%rax, %rax
	je	L2043
	movl	%ebx, %edx
	movq	$0, -3(%rax)
	andl	$7, %edx
	cmpl	$3, %edx
	je	L2046
	jmp	L2044
	.align 4,0x90
L2045:
	movq	8(%rsi), %rbx
	movl	%ebx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	jne	L2044
L2046:
	movq	-3(%rbx), %rcx
	leaq	-3(%rbx), %rsi
	movl	%ecx, %r8d
	andl	$7, %r8d
	cmpl	$3, %r8d
	jne	L2045
	cmpq	%rbp, -3(%rcx)
	jne	L2045
	movq	$0, -3(%rcx)
	movq	8(%rsi), %rbx
	movl	%ebx, %ecx
	andl	$7, %ecx
	cmpl	$3, %ecx
	je	L2046
	.align 4,0x90
L2044:
	movq	%rax, %rdi
	call	_Fcdr
	movq	%rax, %rbx
L2042:
	addq	$72, %rsp
LCFI659:
	movq	%rbx, %rax
	popq	%rbx
LCFI660:
	popq	%rbp
LCFI661:
	popq	%r12
LCFI662:
	popq	%r13
LCFI663:
	popq	%r14
LCFI664:
	popq	%r15
LCFI665:
	ret
	.align 4,0x90
L2043:
LCFI666:
	movq	_globals@GOTPCREL(%rip), %rax
	movq	%rbp, %rdi
	movq	560(%rax), %rsi
	call	_Fassq
	testq	%rax, %rax
	jne	L2044
	testq	%r12, %r12
	je	L2050
	testq	%r14, %r14
	je	L2050
	movq	%r12, %rdi
	movq	$-1, %rbx
	call	_strlen
	movq	%r15, %rdi
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	$0, 16(%rsp)
	movq	%r12, 24(%rsp)
	call	_strlen
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rbx, 40(%rsp)
	movq	160(%r14), %rdi
	leaq	36(%rsp), %rdx
	movq	%rax, 32(%rsp)
	leaq	4(%rsp), %rsi
	movq	%r15, 56(%rsp)
	movq	$0, 48(%rsp)
	call	_xrdb_get_resource
	testq	%rax, %rax
	movq	%rax, %rbx
	je	L2050
	cmpl	$5, %r13d
	ja	L2051
	leaq	L2053(%rip), %rdx
	movslq	(%rdx,%r13,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.align 2,0x90
L2053:
	.long	L2052-L2053
	.long	L2054-L2053
	.long	L2055-L2053
	.long	L2042-L2053
	.long	L2056-L2053
	.long	L2057-L2053
	.align 4,0x90
L2050:
	movl	$52416, %ebx
	jmp	L2042
L2056:
	movq	%rbx, %rdi
	call	_Fdowncase
	movq	20(%rax), %rbp
	cmpb	$111, 0(%rbp)
	jne	L2061
	movzbl	1(%rbp), %eax
	cmpb	$110, %al
	jne	L2062
	cmpb	$0, 2(%rbp)
	jne	L2097
L2060:
	movl	$49344, %ebx
	jmp	L2042
L2055:
	movq	%rbx, %rdi
	call	_Fdowncase
	movq	20(%rax), %rsi
	cmpb	$111, (%rsi)
	jne	L2059
	cmpb	$110, 1(%rsi)
	jne	L2059
	cmpb	$0, 2(%rsi)
	je	L2060
L2059:
	leaq	lC39(%rip), %rdi
	movl	$5, %ecx
	repz; cmpsb
	je	L2060
L2065:
	xorl	%ebx, %ebx
	jmp	L2042
L2054:
	movq	20(%rbx), %rdi
	xorl	%esi, %esi
	call	_strtod
	call	_make_float
	movq	%rax, %rbx
	jmp	L2042
L2057:
	movq	20(%rbx), %rax
	cmpb	$111, (%rax)
	jne	L2058
	cmpb	$110, 1(%rax)
	jne	L2058
	cmpb	$0, 2(%rax)
	jne	L2058
	movl	$6, %ebx
	jmp	L2042
L2052:
	movq	20(%rbx), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	_strtol
	cltq
	leaq	2(,%rax,4), %rbx
	jmp	L2042
L2058:
	movl	$5, %ecx
	movq	%rax, %rsi
	movl	$6, %ebx
	leaq	lC39(%rip), %rdi
	repz; cmpsb
	seta	%cl
	setb	%dl
	cmpb	%dl, %cl
	je	L2042
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_strtol
	cltq
	leaq	2(,%rax,4), %rbx
	jmp	L2042
L2061:
	leaq	lC39(%rip), %rdi
	movl	$5, %ecx
	movq	%rbp, %rsi
	repz; cmpsb
	je	L2060
L2064:
	leaq	lC40(%rip), %rdi
	movl	$6, %ecx
	movq	%rbp, %rsi
	repz; cmpsb
	je	L2065
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	_Fintern
	movq	%rax, %rbx
	jmp	L2042
L2062:
	leaq	lC39(%rip), %rdi
	movl	$5, %ecx
	movq	%rbp, %rsi
	repz; cmpsb
	je	L2060
	cmpb	$102, %al
	jne	L2064
	cmpb	$102, 2(%rbp)
	jne	L2064
	cmpb	$0, 3(%rbp)
	jne	L2064
	xorl	%ebx, %ebx
	jmp	L2042
L2097:
	leaq	lC39(%rip), %rsi
	movq	%rbp, %rdi
	call	_strcmp
	testl	%eax, %eax
	jne	L2064
	jmp	L2060
L2051:
	call	_emacs_abort
LFE1021:
	.align 4,0x90
	.globl _x_frame_get_and_record_arg
_x_frame_get_and_record_arg:
LFB1023:
	pushq	%rbp
LCFI667:
	movq	%rdx, %rbp
	pushq	%rbx
LCFI668:
	movq	%rdi, %rbx
	subq	$24, %rsp
LCFI669:
	movq	392(%rdi), %rax
	movq	504(%rax), %rdi
	call	_x_get_arg
	cmpq	$52416, %rax
	je	L2098
	testq	%rax, %rax
	je	L2098
	movq	%rax, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	_store_frame_param
	movq	8(%rsp), %rax
L2098:
	addq	$24, %rsp
LCFI670:
	popq	%rbx
LCFI671:
	popq	%rbp
LCFI672:
	ret
LFE1023:
	.align 4,0x90
	.globl _x_default_parameter
_x_default_parameter:
LFB1024:
	pushq	%r13
LCFI673:
	movq	%rcx, %r13
	movq	%r8, %rcx
	movq	%r9, %r8
	pushq	%r12
LCFI674:
	movq	%rdx, %r12
	pushq	%rbp
LCFI675:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI676:
	subq	$40, %rsp
LCFI677:
	movq	392(%rdi), %rax
	movl	80(%rsp), %r9d
	movq	504(%rax), %rdi
	call	_x_get_arg
	leaq	19(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r12, (%rsp)
	cmpq	$52416, %rax
	movq	%rax, %rbx
	movq	$0, 24(%rsp)
	cmove	%r13, %rbx
	leaq	3(%rsp), %rax
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	call	_x_set_frame_parameters
	addq	$40, %rsp
LCFI678:
	movq	%rbx, %rax
	popq	%rbx
LCFI679:
	popq	%rbp
LCFI680:
	popq	%r12
LCFI681:
	popq	%r13
LCFI682:
	ret
LFE1024:
	.align 4,0x90
	.globl _x_figure_window_size
_x_figure_window_size:
LFB1026:
	pushq	%r15
LCFI683:
	pushq	%r14
LCFI684:
	movq	%rcx, %r14
	pushq	%r13
LCFI685:
	movq	%r8, %r13
	pushq	%r12
LCFI686:
	movq	%rsi, %r12
	pushq	%rbp
LCFI687:
	pushq	%rbx
LCFI688:
	movq	%rdi, %rbx
	subq	$24, %rsp
LCFI689:
	movq	392(%rdi), %rax
	movzbl	220(%rdi), %esi
	movl	$-1, 8(%rsp)
	movl	$-1, 12(%rsp)
	movq	504(%rax), %rbp
	movl	372(%rdi), %eax
	leal	(%rax,%rax,4), %eax
	sall	$4, %eax
	movl	%eax, 296(%rdi)
	movl	340(%rbx), %ecx
	movl	352(%rdi), %edi
	addl	356(%rbx), %edi
	addl	%ecx, %ecx
	testb	$3, %sil
	je	L2111
	movl	$80, 280(%rbx)
	addl	428(%rbx), %eax
	addl	%edi, %eax
	addl	%ecx, %eax
	movl	%eax, 320(%rbx)
	movl	432(%rbx), %eax
	addl	$80, %eax
L2173:
	addl	360(%rbx), %eax
	movl	224(%rbx), %r8d
	movl	%eax, 288(%rbx)
	movl	376(%rbx), %eax
	leal	(%rax,%rax,8), %eax
	leal	0(,%rax,4), %edi
	movl	228(%rbx), %eax
	addl	368(%rbx), %eax
	movl	%edi, 300(%rbx)
	addl	%edi, %eax
	movl	364(%rbx), %edi
	addl	%r8d, %edi
	addl	$36, %edi
	andl	$4, %esi
	je	L2112
	movl	$36, 284(%rbx)
	addl	436(%rbx), %eax
	addl	440(%rbx), %edi
	addl	%eax, %ecx
	movl	%ecx, 324(%rbx)
L2174:
	testl	%r8d, %r8d
	movl	%edi, 292(%rbx)
	movq	$0, 312(%rbx)
	je	L2113
	testb	%dl, %dl
	je	L2113
	movq	_globals@GOTPCREL(%rip), %rdx
	movl	$1, %esi
	movq	3544(%rdx), %rax
	movq	2536(%rdx), %rcx
	testq	%rax, %rax
	cmovns	%rax, %rsi
	movl	%ecx, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	L2222
L2115:
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L2175
	movl	$12, %eax
L2116:
	addl	%esi, %eax
	addl	%eax, %eax
	movl	%eax, 228(%rbx)
L2113:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	$0, 304(%rbx)
	movl	$28512, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_x_get_arg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$55584, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	_x_get_arg
	cmpq	$52416, %rax
	je	L2223
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	je	L2224
	cmpl	$7, %edx
	je	L2225
L2121:
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L2226
	movq	%rax, %rdx
	sarq	$2, %rdx
	cmpq	$2147483647, %rdx
	ja	L2126
	imull	372(%rbx), %edx
	xorl	%esi, %esi
	testb	$3, 220(%rbx)
	movl	%edx, 296(%rbx)
	jne	L2227
L2132:
	movl	352(%rbx), %ecx
	movl	340(%rbx), %eax
	addl	356(%rbx), %ecx
	leal	(%rcx,%rax,2), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, 320(%rbx)
L2125:
	cmpq	$52416, %r15
	je	L2134
L2133:
	movl	%r15d, %edx
	movl	%r15d, %eax
	andl	$7, %edx
	cmpl	$3, %edx
	je	L2228
	cmpl	$7, %edx
	je	L2229
L2136:
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L2220
	movq	%r15, %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax
	ja	L2221
	movl	376(%rbx), %edx
	xorl	%esi, %esi
	movl	228(%rbx), %ecx
	addl	368(%rbx), %ecx
	imull	%eax, %edx
	testb	$4, 220(%rbx)
	movl	%edx, 300(%rbx)
	je	L2147
	movl	436(%rbx), %esi
L2147:
	movl	340(%rbx), %eax
	leal	(%rcx,%rax,2), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, 324(%rbx)
L2134:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$53904, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_x_get_arg
	testq	%rax, %rax
	je	L2182
	cmpq	$52416, %rax
	je	L2182
	movl	$2, %r13d
L2119:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movl	$50784, %edx
	movq	%r12, %rsi
	call	_x_get_arg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movl	$33408, %edx
	movq	%r12, %rsi
	movq	%rax, %r15
	call	_x_get_arg
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movl	$53712, %edx
	movq	%r12, %rsi
	movq	%rax, %r14
	call	_x_get_arg
	cmpq	$52416, %r15
	movq	%rax, %rbp
	je	L2230
	cmpq	$36864, %r15
	je	L2231
	movl	%r15d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L2232
	cmpl	$7, %eax
	je	L2233
L2155:
	movl	%r15d, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L2220
	movq	%r15, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	sarq	$2, %rax
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	ja	L2234
	movq	%r13, %rdx
	movl	%eax, 316(%rbx)
	orq	$32, %rdx
	testq	%rax, %rax
	cmovs	%rdx, %r13
L2152:
	cmpq	$36864, %r14
	je	L2235
L2159:
	movl	%r14d, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	L2236
	cmpl	$7, %eax
	je	L2237
L2163:
	cmpq	$52416, %r14
	je	L2238
	movl	%r14d, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L2239
	movq	%r14, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	sarq	$2, %rax
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	ja	L2240
	movq	%r13, %rdx
	movl	%eax, 312(%rbx)
	orq	$16, %rdx
	testq	%rax, %rax
	cmovs	%rdx, %r13
L2160:
	testq	%rbp, %rbp
	je	L2168
	cmpq	$52416, %rbp
	je	L2168
	orq	$1, %r13
	movq	%r13, %rax
	andl	$32, %eax
	testb	$16, %r13b
	je	L2170
L2241:
	cmpq	$1, %rax
	sbbl	%eax, %eax
	andl	$-6, %eax
	addl	$9, %eax
	movl	%eax, 328(%rbx)
L2172:
	movl	%r13d, 332(%rbx)
	addq	$24, %rsp
LCFI690:
	movq	%r13, %rax
	popq	%rbx
LCFI691:
	popq	%rbp
LCFI692:
	popq	%r12
LCFI693:
	popq	%r13
LCFI694:
	popq	%r14
LCFI695:
	popq	%r15
LCFI696:
	ret
	.align 4,0x90
L2112:
LCFI697:
	movl	$36, 284(%rbx)
	addl	%ecx, %eax
	movl	%eax, 324(%rbx)
	jmp	L2174
	.align 4,0x90
L2111:
	movl	$80, 280(%rbx)
	addl	%edi, %eax
	addl	%ecx, %eax
	movl	%eax, 320(%rbx)
	movl	$80, %eax
	jmp	L2173
	.align 4,0x90
L2224:
	cmpq	$49872, -3(%rax)
	leaq	-3(%rax), %rdx
	jne	L2121
	movq	8(%rdx), %rsi
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L2219
	movq	%rsi, %rdx
	sarq	$2, %rdx
	cmpq	$2147483647, %rdx
	ja	L2218
	xorl	%esi, %esi
	testb	$3, 220(%rbx)
	movl	%edx, 296(%rbx)
	je	L2124
	movl	428(%rbx), %esi
L2124:
	movl	352(%rbx), %ecx
	movl	340(%rbx), %eax
	addl	356(%rbx), %ecx
	orb	$1, 222(%rbx)
	leal	(%rcx,%rax,2), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, 320(%rbx)
	movl	%edx, (%r14)
	jmp	L2125
	.align 4,0x90
L2168:
	orq	$4, %r13
	movq	%r13, %rax
	andl	$32, %eax
	testb	$16, %r13b
	jne	L2241
L2170:
	testq	%rax, %rax
	je	L2150
	movl	$7, 328(%rbx)
	jmp	L2172
	.align 4,0x90
L2223:
	cmpq	$52416, %r15
	jne	L2133
	xorl	%r13d, %r13d
	jmp	L2119
	.align 4,0x90
L2230:
	cmpq	$52416, %r14
	je	L2150
	cmpq	$36864, %r14
	movl	$0, 316(%rbx)
	jne	L2159
	.align 4,0x90
L2235:
	movl	$0, 312(%rbx)
	orq	$16, %r13
	jmp	L2160
	.align 4,0x90
L2231:
	movl	$0, 316(%rbx)
	orq	$32, %r13
	jmp	L2152
	.align 4,0x90
L2150:
	movl	$1, 328(%rbx)
	jmp	L2172
	.align 4,0x90
L2228:
	cmpq	$49872, -3(%r15)
	leaq	-3(%r15), %rdx
	jne	L2136
	movq	8(%rdx), %rsi
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	L2219
	movq	%rsi, %rdx
	sarq	$2, %rdx
	cmpq	$2147483647, %rdx
	ja	L2218
	movl	228(%rbx), %ecx
	xorl	%esi, %esi
	movl	%edx, 300(%rbx)
	addl	368(%rbx), %ecx
	testb	$4, 220(%rbx)
	je	L2139
	movl	436(%rbx), %esi
L2139:
	movl	340(%rbx), %eax
	orb	$2, 222(%rbx)
	leal	(%rcx,%rax,2), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, 324(%rbx)
	movl	%edx, 0(%r13)
	jmp	L2134
	.align 4,0x90
L2229:
	movsd	-7(%r15), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	L2221
	ucomisd	lC1(%rip), %xmm0
	ja	L2221
	leaq	8(%rsp), %rcx
	movl	$-1, %r9d
	movl	$1, %edx
	leaq	12(%rsp), %r8
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	_frame_float
	testl	%eax, %eax
	js	L2134
	movl	228(%rbx), %edx
	movl	%eax, 300(%rbx)
	addl	368(%rbx), %edx
	addl	%edx, %eax
	testb	$4, 220(%rbx)
	je	L2144
	addl	436(%rbx), %eax
L2144:
	movl	340(%rbx), %edx
	leal	(%rax,%rdx,2), %eax
	movl	%eax, 324(%rbx)
	jmp	L2134
	.align 4,0x90
L2232:
	movq	-3(%r15), %rax
	leaq	-3(%r15), %rdx
	cmpq	$36864, %rax
	je	L2242
	cmpq	$41616, %rax
	jne	L2155
	movq	8(%rdx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L2155
	movq	-3(%rax), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L2155
	sarq	$2, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	ja	L2155
	jmp	L2215
	.align 4,0x90
L2236:
	movq	-3(%r14), %rax
	leaq	-3(%r14), %rdx
	cmpq	$36864, %rax
	je	L2243
	cmpq	$41616, %rax
	jne	L2163
	movq	8(%rdx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L2163
	movq	-3(%rax), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L2163
	sarq	$2, %rax
	movl	$2147483648, %edx
	movl	$4294967295, %ecx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	ja	L2163
	jmp	L2216
	.align 4,0x90
L2227:
	movl	428(%rbx), %esi
	jmp	L2132
	.align 4,0x90
L2175:
	movq	5(%rcx), %rdx
	movl	$12, %eax
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	L2116
	sarq	$2, %rdx
	leaq	-1(%rdx), %rcx
	addl	$12, %edx
	cmpq	$2147483647, %rcx
	cmovb	%edx, %eax
	jmp	L2116
	.align 4,0x90
L2233:
	leaq	8(%rsp), %rcx
	xorl	%r9d, %r9d
	movl	$3, %edx
	leaq	12(%rsp), %r8
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	_frame_float
L2215:
	movl	%eax, 316(%rbx)
	jmp	L2152
	.align 4,0x90
L2242:
	movq	8(%rdx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L2155
	movq	-3(%rax), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L2155
	sarq	$2, %rax
	movl	$4294967294, %edx
	leaq	2147483647(%rax), %rcx
	cmpq	%rdx, %rcx
	ja	L2155
	negl	%eax
	orq	$32, %r13
	movl	%eax, 316(%rbx)
	jmp	L2152
	.align 4,0x90
L2243:
	movq	8(%rdx), %rax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$3, %edx
	jne	L2163
	movq	-3(%rax), %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$2, %edx
	jne	L2163
	sarq	$2, %rax
	movl	$4294967294, %edx
	leaq	2147483647(%rax), %rcx
	cmpq	%rdx, %rcx
	ja	L2163
	negl	%eax
	orq	$16, %r13
	movl	%eax, 312(%rbx)
	jmp	L2160
	.align 4,0x90
L2225:
	movsd	-7(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	L2126
	ucomisd	lC1(%rip), %xmm0
	ja	L2126
	xorl	%edx, %edx
	movl	$-1, %r9d
	movq	%rax, %rsi
	leaq	8(%rsp), %rcx
	movq	%rbx, %rdi
	leaq	12(%rsp), %r8
	call	_frame_float
	testl	%eax, %eax
	js	L2125
	testb	$3, 220(%rbx)
	movl	%eax, 296(%rbx)
	je	L2129
	addl	428(%rbx), %eax
L2129:
	movl	356(%rbx), %edx
	addl	352(%rbx), %edx
	addl	%edx, %eax
	movl	340(%rbx), %edx
	leal	(%rax,%rdx,2), %eax
	movl	%eax, 320(%rbx)
	jmp	L2125
	.align 4,0x90
L2182:
	movl	$8, %r13d
	jmp	L2119
	.align 4,0x90
L2238:
	movl	$0, 312(%rbx)
	jmp	L2160
	.align 4,0x90
L2237:
	leaq	8(%rsp), %rcx
	xorl	%r9d, %r9d
	movl	$2, %edx
	leaq	12(%rsp), %r8
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_frame_float
L2216:
	movl	%eax, 312(%rbx)
	jmp	L2160
	.align 4,0x90
L2222:
	movq	%rcx, %rdx
	sarq	$2, %rdx
	leaq	-1(%rdx), %rax
	cmpq	$2147483646, %rax
	ja	L2115
	leal	12(%rdx), %eax
	jmp	L2116
L2126:
	movq	%rax, %rsi
L2218:
	movl	$10560, %edi
	call	_xsignal1
L2221:
	movq	%r15, %rsi
	movl	$10560, %edi
	call	_xsignal1
L2239:
	movq	%r14, %rsi
L2219:
	movl	$30816, %edi
	call	_wrong_type_argument
L2220:
	movq	%r15, %rsi
	movl	$30816, %edi
	call	_wrong_type_argument
L2240:
	movabsq	$8589934590, %rdx
	movq	%r14, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L2234:
	movabsq	$8589934590, %rdx
	movq	%r15, %rdi
	movabsq	$-8589934590, %rsi
	call	_args_out_of_range_3
L2226:
	movq	%rax, %rsi
	jmp	L2219
LFE1026:
	.align 4,0x90
	.globl _frame_make_pointer_invisible
_frame_make_pointer_invisible:
LFB1027:
	movq	_globals@GOTPCREL(%rip), %rax
	cmpq	$0, 1488(%rax)
	je	L2259
	testq	%rdi, %rdi
	je	L2259
	movq	384(%rdi), %rdx
	testq	%rdx, %rdx
	je	L2259
	movzbl	218(%rdi), %eax
	testb	$32, %al
	jne	L2259
	movq	200(%rdx), %rdx
	testq	%rdx, %rdx
	je	L2259
	pushq	%rbx
LCFI698:
	andl	$-17, %eax
	movq	%rdi, %rbx
	movl	$1, %esi
	movb	%al, 218(%rdi)
	call	*%rdx
	orb	$32, 218(%rbx)
	popq	%rbx
LCFI699:
	ret
	.align 4,0x90
L2259:
LCFI700:
	ret
LFE1027:
	.align 4,0x90
	.globl _frame_make_pointer_visible
_frame_make_pointer_visible:
LFB1028:
	testq	%rdi, %rdi
	je	L2274
	movq	384(%rdi), %rdx
	testq	%rdx, %rdx
	je	L2274
	movzbl	218(%rdi), %eax
	andl	$48, %eax
	cmpb	$48, %al
	je	L2277
L2274:
	ret
	.align 4,0x90
L2277:
	movq	200(%rdx), %rax
	testq	%rax, %rax
	je	L2274
	pushq	%rbx
LCFI701:
	movq	%rdi, %rbx
	xorl	%esi, %esi
	call	*%rax
	andb	$-33, 218(%rbx)
	popq	%rbx
LCFI702:
	ret
LFE1028:
	.align 4,0x90
	.globl _make_monitor_attribute_list
_make_monitor_attribute_list:
LFB1030:
	pushq	%r15
LCFI703:
	pushq	%r14
LCFI704:
	pushq	%r13
LCFI705:
	pushq	%r12
LCFI706:
	pushq	%rbp
LCFI707:
	pushq	%rbx
LCFI708:
	subq	$56, %rsp
LCFI709:
	testl	%esi, %esi
	jle	L2283
	leal	-1(%rsi), %eax
	movq	%r8, 32(%rsp)
	movq	%rcx, %r15
	movq	%rdi, %rbx
	addq	$1, %rax
	movl	%edx, 28(%rsp)
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movq	%rax, 8(%rsp)
	movq	$0, 40(%rsp)
	.align 4,0x90
L2282:
	cmpw	$0, 4(%rbx)
	je	L2280
	movzwl	14(%rbx), %eax
	leaq	2(,%rax,4), %rcx
	movzwl	12(%rbx), %eax
	leaq	2(,%rax,4), %rdx
	movswq	10(%rbx), %rax
	leaq	2(,%rax,4), %rsi
	movswq	8(%rbx), %rax
	leaq	2(,%rax,4), %rdi
	call	_list4
	movq	%rax, 16(%rsp)
	movzwl	6(%rbx), %eax
	leaq	2(,%rax,4), %rcx
	movzwl	4(%rbx), %eax
	leaq	2(,%rax,4), %rdx
	movswq	2(%rbx), %rax
	leaq	2(,%rax,4), %rsi
	movswq	(%rbx), %rax
	leaq	2(,%rax,4), %rdi
	call	_list4
	movq	32(%rsp), %r13
	movq	%rax, %r12
	movq	%r13, %rdi
	call	_strlen
	movq	%r13, %rdi
	movq	%rax, %rsi
	call	_make_string
	movl	$47520, %edi
	movq	%rax, %rsi
	call	_Fcons
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	_Fcons
	movq	3(%r15,%r14,8), %rsi
	movl	$25776, %edi
	movq	%rax, %r13
	call	_Fcons
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%rax, %r13
	movslq	20(%rbx), %rax
	leaq	2(,%rax,4), %rsi
	movslq	16(%rbx), %rax
	leaq	2(,%rax,4), %rdi
	call	_list2
	movl	$36960, %edi
	movq	%rax, %rsi
	call	_Fcons
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	16(%rsp), %rsi
	movl	$56592, %edi
	movq	%rax, %r13
	call	_Fcons
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%r12, %rsi
	movl	$26736, %edi
	movq	%rax, %r13
	call	_Fcons
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	24(%rbx), %r12
	movq	%rax, %r13
	testq	%r12, %r12
	je	L2281
	movq	%r12, %rdi
	call	_strlen
	movq	%r12, %rdi
	movq	%rax, %rsi
	call	_make_string
	movl	$38496, %edi
	movq	%rax, %rsi
	call	_Fcons
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_Fcons
	movq	%rax, %r13
L2281:
	cmpl	%r14d, 28(%rsp)
	je	L2284
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_Fcons
	movq	%rax, %rbp
L2280:
	addq	$1, %r14
	addq	$32, %rbx
	cmpq	8(%rsp), %r14
	jne	L2282
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	L2278
	addq	$56, %rsp
LCFI710:
	movq	%rbp, %rsi
	movq	%rax, %rdi
	popq	%rbx
LCFI711:
	popq	%rbp
LCFI712:
	popq	%r12
LCFI713:
	popq	%r13
LCFI714:
	popq	%r14
LCFI715:
	popq	%r15
LCFI716:
	jmp	_Fcons
	.align 4,0x90
L2283:
LCFI717:
	xorl	%ebp, %ebp
L2278:
	addq	$56, %rsp
LCFI718:
	movq	%rbp, %rax
	popq	%rbx
LCFI719:
	popq	%rbp
LCFI720:
	popq	%r12
LCFI721:
	popq	%r13
LCFI722:
	popq	%r14
LCFI723:
	popq	%r15
LCFI724:
	ret
	.align 4,0x90
L2284:
LCFI725:
	movq	%r13, 40(%rsp)
	jmp	L2280
LFE1030:
	.cstring
lC41:
	.ascii "x-resource-name\0"
lC42:
	.ascii "x-resource-class\0"
lC43:
	.ascii "frame-alpha-lower-limit\0"
lC44:
	.ascii "default-frame-alist\0"
lC45:
	.ascii "default-frame-scroll-bars\0"
	.align 3
lC46:
	.ascii "scroll-bar-adjust-thumb-portion\0"
lC47:
	.ascii "terminal-frame\0"
lC48:
	.ascii "mouse-position-function\0"
lC49:
	.ascii "mouse-highlight\0"
lC50:
	.ascii "make-pointer-invisible\0"
lC51:
	.ascii "focus-in-hook\0"
lC52:
	.ascii "focus-out-hook\0"
lC53:
	.ascii "move-frame-functions\0"
lC54:
	.ascii "delete-frame-functions\0"
lC55:
	.ascii "menu-bar-mode\0"
lC56:
	.ascii "tool-bar-mode\0"
lC57:
	.ascii "default-minibuffer-frame\0"
lC58:
	.ascii "focus-follows-mouse\0"
lC59:
	.ascii "frame-resize-pixelwise\0"
lC60:
	.ascii "frame-inhibit-implied-resize\0"
lC61:
	.ascii "frame-size-history\0"
lC62:
	.ascii "tooltip-reuse-hidden-frame\0"
lC63:
	.ascii "iconify-child-frame\0"
	.text
	.align 4,0x90
	.globl _syms_of_frame
_syms_of_frame:
LFB1031:
	pushq	%r13
LCFI726:
	movl	$233, %eax
	pushq	%r12
LCFI727:
	leaq	-8+_frame_parms(%rip), %r12
	pushq	%rbp
LCFI728:
	leaq	8(%r12), %rbp
	pushq	%rbx
LCFI729:
	movl	$2, %ebx
	subq	$8, %rsp
LCFI730:
	jmp	L2297
	.align 4,0x90
L2294:
	leaq	(%rax,%rax,2), %rdi
	salq	$4, %rdi
L2295:
	movq	%rbx, %rdx
	movl	$57120, %esi
	addq	$4, %rbx
	call	_Fput
	cmpq	$186, %rbx
	je	L2296
	movslq	0(%rbp,%rbx,4), %rax
L2297:
	testl	%eax, %eax
	jns	L2294
	movq	(%r12,%rbx,4), %r13
	movq	%r13, %rdi
	call	_strlen
	movq	%r13, %rdi
	movq	%rax, %rsi
	call	_intern_c_string_1
	movq	%rax, %rdi
	jmp	L2295
	.align 4,0x90
L2296:
	movq	_globals@GOTPCREL(%rip), %rbx
	leaq	lC41(%rip), %rsi
	leaq	_o_fwd.77839(%rip), %rdi
	leaq	3000(%rbx), %rdx
	call	_defvar_lisp
	leaq	2992(%rbx), %rdx
	movq	$0, 3000(%rbx)
	leaq	lC42(%rip), %rsi
	leaq	_o_fwd.77840(%rip), %rdi
	call	_defvar_lisp
	movl	$5, %esi
	leaq	lC36(%rip), %rdi
	call	_make_string
	leaq	984(%rbx), %rdx
	leaq	lC43(%rip), %rsi
	movq	%rax, 2992(%rbx)
	leaq	_o_fwd.77841(%rip), %rdi
	call	_defvar_lisp
	leaq	560(%rbx), %rdx
	movq	$82, 984(%rbx)
	leaq	lC44(%rip), %rsi
	leaq	_o_fwd.77842(%rip), %rdi
	call	_defvar_lisp
	leaq	568(%rbx), %rdx
	movq	$0, 560(%rbx)
	leaq	lC45(%rip), %rsi
	leaq	_o_fwd.77843(%rip), %rdi
	call	_defvar_lisp
	leaq	3676(%rbx), %rdx
	movq	$44592, 568(%rbx)
	leaq	lC46(%rip), %rsi
	leaq	_b_fwd.77844(%rip), %rdi
	call	_defvar_bool
	leaq	2456(%rbx), %rdx
	movb	$1, 3676(%rbx)
	leaq	lC47(%rip), %rsi
	leaq	_o_fwd.77845(%rip), %rdi
	call	_defvar_lisp
	leaq	1768(%rbx), %rdx
	leaq	lC48(%rip), %rsi
	leaq	_o_fwd.77846(%rip), %rdi
	call	_defvar_lisp
	leaq	1752(%rbx), %rdx
	movq	$0, 1768(%rbx)
	leaq	lC49(%rip), %rsi
	leaq	_o_fwd.77847(%rip), %rdi
	call	_defvar_lisp
	leaq	1488(%rbx), %rdx
	movq	$49344, 1752(%rbx)
	leaq	lC50(%rip), %rsi
	leaq	_o_fwd.77848(%rip), %rdi
	call	_defvar_lisp
	leaq	896(%rbx), %rdx
	movq	$49344, 1488(%rbx)
	leaq	lC51(%rip), %rsi
	leaq	_o_fwd.77849(%rip), %rdi
	call	_defvar_lisp
	leaq	904(%rbx), %rdx
	movq	$0, 896(%rbx)
	leaq	lC52(%rip), %rsi
	leaq	_o_fwd.77850(%rip), %rdi
	call	_defvar_lisp
	leaq	1776(%rbx), %rdx
	movq	$0, 904(%rbx)
	leaq	lC53(%rip), %rsi
	leaq	_o_fwd.77851(%rip), %rdi
	call	_defvar_lisp
	leaq	624(%rbx), %rdx
	movq	$0, 1776(%rbx)
	leaq	lC54(%rip), %rsi
	leaq	_o_fwd.77852(%rip), %rdi
	call	_defvar_lisp
	leaq	1552(%rbx), %rdx
	movq	$0, 624(%rbx)
	leaq	lC55(%rip), %rsi
	leaq	_o_fwd.77853(%rip), %rdi
	call	_defvar_lisp
	leaq	2544(%rbx), %rdx
	movq	$49344, 1552(%rbx)
	leaq	lC56(%rip), %rsi
	leaq	_o_fwd.77854(%rip), %rdi
	call	_defvar_lisp
	movl	$160, %edx
	movq	$49344, 2544(%rbx)
	leaq	lC57(%rip), %rsi
	leaq	_ko_fwd.77855(%rip), %rdi
	call	_defvar_kboard
	leaq	3208(%rbx), %rdx
	leaq	lC58(%rip), %rsi
	leaq	_o_fwd.77856(%rip), %rdi
	call	_defvar_lisp
	leaq	3627(%rbx), %rdx
	movq	$0, 3208(%rbx)
	leaq	lC59(%rip), %rsi
	leaq	_b_fwd.77857(%rip), %rdi
	call	_defvar_bool
	leaq	3216(%rbx), %rdx
	movb	$0, 3627(%rbx)
	leaq	lC60(%rip), %rsi
	leaq	_o_fwd.77858(%rip), %rdi
	call	_defvar_lisp
	leaq	3224(%rbx), %rdx
	movq	$0, 3216(%rbx)
	leaq	lC61(%rip), %rsi
	leaq	_o_fwd.77859(%rip), %rdi
	call	_defvar_lisp
	leaq	3679(%rbx), %rdx
	movq	$0, 3224(%rbx)
	leaq	lC62(%rip), %rsi
	leaq	_b_fwd.77860(%rip), %rdi
	call	_defvar_bool
	leaq	3232(%rbx), %rdx
	movb	$0, 3679(%rbx)
	leaq	lC63(%rip), %rsi
	leaq	_o_fwd.77861(%rip), %rdi
	call	_defvar_lisp
	movq	_Vframe_list@GOTPCREL(%rip), %rdi
	movq	$29472, 3232(%rbx)
	call	_staticpro
	leaq	_Sframep(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_live_p(%rip), %rdi
	call	_defsubr
	leaq	_Swindow_system(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_windows_min_size(%rip), %rdi
	call	_defsubr
	leaq	_Smake_terminal_frame(%rip), %rdi
	call	_defsubr
	leaq	_Shandle_switch_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sselect_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sselected_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_list(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_parent(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_ancestor_p(%rip), %rdi
	call	_defsubr
	leaq	_Snext_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sprevious_frame(%rip), %rdi
	call	_defsubr
	leaq	_Slast_nonminibuf_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sdelete_frame(%rip), %rdi
	call	_defsubr
	leaq	_Smouse_position(%rip), %rdi
	call	_defsubr
	leaq	_Smouse_pixel_position(%rip), %rdi
	call	_defsubr
	leaq	_Sset_mouse_position(%rip), %rdi
	call	_defsubr
	leaq	_Sset_mouse_pixel_position(%rip), %rdi
	call	_defsubr
	leaq	_Smake_frame_visible(%rip), %rdi
	call	_defsubr
	leaq	_Smake_frame_invisible(%rip), %rdi
	call	_defsubr
	leaq	_Siconify_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_visible_p(%rip), %rdi
	call	_defsubr
	leaq	_Svisible_frame_list(%rip), %rdi
	call	_defsubr
	leaq	_Sraise_frame(%rip), %rdi
	call	_defsubr
	leaq	_Slower_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sx_focus_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_after_make_frame(%rip), %rdi
	call	_defsubr
	leaq	_Sredirect_frame_focus(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_focus(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_parameters(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_parameter(%rip), %rdi
	call	_defsubr
	leaq	_Smodify_frame_parameters(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_char_height(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_char_width(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_native_height(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_native_width(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_text_cols(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_text_lines(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_total_cols(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_total_lines(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_text_width(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_text_height(%rip), %rdi
	call	_defsubr
	leaq	_Sscroll_bar_width(%rip), %rdi
	call	_defsubr
	leaq	_Sscroll_bar_height(%rip), %rdi
	call	_defsubr
	leaq	_Sfringe_width(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_internal_border_width(%rip), %rdi
	call	_defsubr
	leaq	_Sright_divider_width(%rip), %rdi
	call	_defsubr
	leaq	_Sbottom_divider_width(%rip), %rdi
	call	_defsubr
	leaq	_Stool_bar_pixel_width(%rip), %rdi
	call	_defsubr
	leaq	_Sset_frame_height(%rip), %rdi
	call	_defsubr
	leaq	_Sset_frame_width(%rip), %rdi
	call	_defsubr
	leaq	_Sset_frame_size(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_position(%rip), %rdi
	call	_defsubr
	leaq	_Sset_frame_position(%rip), %rdi
	call	_defsubr
	leaq	_Sframe_pointer_visible_p(%rip), %rdi
	call	_defsubr
	leaq	_Sx_get_resource(%rip), %rdi
	call	_defsubr
	leaq	_Sx_parse_geometry(%rip), %rdi
	addq	$8, %rsp
LCFI731:
	popq	%rbx
LCFI732:
	popq	%rbp
LCFI733:
	popq	%r12
LCFI734:
	popq	%r13
LCFI735:
	jmp	_defsubr
LFE1031:
	.zerofill __DATA,__bss4,_o_fwd.77861,16,4
	.zerofill __DATA,__bss4,_b_fwd.77860,16,4
	.zerofill __DATA,__bss4,_o_fwd.77859,16,4
	.zerofill __DATA,__bss4,_o_fwd.77858,16,4
	.zerofill __DATA,__bss4,_b_fwd.77857,16,4
	.zerofill __DATA,__bss4,_o_fwd.77856,16,4
	.zerofill __DATA,__bss3,_ko_fwd.77855,8,3
	.zerofill __DATA,__bss4,_o_fwd.77854,16,4
	.zerofill __DATA,__bss4,_o_fwd.77853,16,4
	.zerofill __DATA,__bss4,_o_fwd.77852,16,4
	.zerofill __DATA,__bss4,_o_fwd.77851,16,4
	.zerofill __DATA,__bss4,_o_fwd.77850,16,4
	.zerofill __DATA,__bss4,_o_fwd.77849,16,4
	.zerofill __DATA,__bss4,_o_fwd.77848,16,4
	.zerofill __DATA,__bss4,_o_fwd.77847,16,4
	.zerofill __DATA,__bss4,_o_fwd.77846,16,4
	.zerofill __DATA,__bss4,_o_fwd.77845,16,4
	.zerofill __DATA,__bss4,_b_fwd.77844,16,4
	.zerofill __DATA,__bss4,_o_fwd.77843,16,4
	.zerofill __DATA,__bss4,_o_fwd.77842,16,4
	.zerofill __DATA,__bss4,_o_fwd.77841,16,4
	.zerofill __DATA,__bss4,_o_fwd.77840,16,4
	.zerofill __DATA,__bss4,_o_fwd.77839,16,4
	.zerofill __DATA,__bss2,_outer_minus_text_height.77369,4,2
	.zerofill __DATA,__bss2,_outer_minus_text_width.77368,4,2
	.zerofill __DATA,__bss2,_parent_top.77367,4,2
	.zerofill __DATA,__bss2,_parent_left.77366,4,2
	.zerofill __DATA,__bss2,_parent_height.77365,4,2
	.zerofill __DATA,__bss2,_parent_width.77364,4,2
	.cstring
lC64:
	.ascii "frame-pointer-visible-p\0"
	.data
	.align 5
_Sframe_pointer_visible_p:
	.quad	167772160
	.quad	_Fframe_pointer_visible_p
	.word	0
	.word	1
	.space 4
	.quad	lC64
	.quad	0
	.quad	0
	.cstring
lC65:
	.ascii "x-parse-geometry\0"
	.data
	.align 5
_Sx_parse_geometry:
	.quad	167772160
	.quad	_Fx_parse_geometry
	.word	1
	.word	1
	.space 4
	.quad	lC65
	.quad	0
	.quad	0
	.cstring
lC66:
	.ascii "x-get-resource\0"
	.data
	.align 5
_Sx_get_resource:
	.quad	167772160
	.quad	_Fx_get_resource
	.word	2
	.word	4
	.space 4
	.quad	lC66
	.quad	0
	.quad	0
	.cstring
lC67:
	.ascii "auto-raise\0"
lC68:
	.ascii "auto-lower\0"
lC69:
	.ascii "background-color\0"
lC70:
	.ascii "border-color\0"
lC71:
	.ascii "border-width\0"
lC72:
	.ascii "cursor-color\0"
lC73:
	.ascii "cursor-type\0"
lC74:
	.ascii "font\0"
lC75:
	.ascii "foreground-color\0"
lC76:
	.ascii "icon-name\0"
lC77:
	.ascii "icon-type\0"
lC78:
	.ascii "internal-border-width\0"
lC79:
	.ascii "right-divider-width\0"
lC80:
	.ascii "bottom-divider-width\0"
lC81:
	.ascii "menu-bar-lines\0"
lC82:
	.ascii "mouse-color\0"
lC83:
	.ascii "name\0"
lC84:
	.ascii "scroll-bar-width\0"
lC85:
	.ascii "scroll-bar-height\0"
lC86:
	.ascii "title\0"
lC87:
	.ascii "unsplittable\0"
lC88:
	.ascii "vertical-scroll-bars\0"
lC89:
	.ascii "horizontal-scroll-bars\0"
lC90:
	.ascii "visibility\0"
lC91:
	.ascii "tool-bar-lines\0"
lC92:
	.ascii "scroll-bar-foreground\0"
lC93:
	.ascii "scroll-bar-background\0"
lC94:
	.ascii "screen-gamma\0"
lC95:
	.ascii "line-spacing\0"
lC96:
	.ascii "left-fringe\0"
lC97:
	.ascii "right-fringe\0"
lC98:
	.ascii "wait-for-wm\0"
lC99:
	.ascii "fullscreen\0"
lC100:
	.ascii "font-backend\0"
lC101:
	.ascii "alpha\0"
lC102:
	.ascii "sticky\0"
lC103:
	.ascii "tool-bar-position\0"
lC104:
	.ascii "inhibit-double-buffering\0"
lC105:
	.ascii "undecorated\0"
lC106:
	.ascii "parent-frame\0"
lC107:
	.ascii "skip-taskbar\0"
lC108:
	.ascii "no-focus-on-map\0"
lC109:
	.ascii "no-accept-focus\0"
lC110:
	.ascii "z-group\0"
lC111:
	.ascii "override-redirect\0"
lC112:
	.ascii "no-special-glyphs\0"
	.const_data
	.align 5
_frame_parms:
	.quad	lC67
	.long	233
	.space 4
	.quad	lC68
	.long	232
	.space 4
	.quad	lC69
	.long	-1
	.space 4
	.quad	lC70
	.long	253
	.space 4
	.quad	lC71
	.long	254
	.space 4
	.quad	lC72
	.long	363
	.space 4
	.quad	lC73
	.long	365
	.space 4
	.quad	lC74
	.long	-1
	.space 4
	.quad	lC75
	.long	-1
	.space 4
	.quad	lC76
	.long	610
	.space 4
	.quad	lC77
	.long	612
	.space 4
	.quad	lC78
	.long	648
	.space 4
	.quad	lC79
	.long	931
	.space 4
	.quad	lC80
	.long	259
	.space 4
	.quad	lC81
	.long	750
	.space 4
	.quad	lC82
	.long	788
	.space 4
	.quad	lC83
	.long	802
	.space 4
	.quad	lC84
	.long	954
	.space 4
	.quad	lC85
	.long	952
	.space 4
	.quad	lC86
	.long	1048
	.space 4
	.quad	lC87
	.long	1113
	.space 4
	.quad	lC88
	.long	1142
	.space 4
	.quad	lC89
	.long	605
	.space 4
	.quad	lC90
	.long	1143
	.space 4
	.quad	lC91
	.long	1053
	.space 4
	.quad	lC92
	.long	951
	.space 4
	.quad	lC93
	.long	950
	.space 4
	.quad	lC94
	.long	948
	.space 4
	.quad	lC95
	.long	716
	.space 4
	.quad	lC96
	.long	698
	.space 4
	.quad	lC97
	.long	933
	.space 4
	.quad	lC98
	.long	1150
	.space 4
	.quad	lC99
	.long	547
	.space 4
	.quad	lC100
	.long	512
	.space 4
	.quad	lC101
	.long	213
	.space 4
	.quad	lC102
	.long	1004
	.space 4
	.quad	lC103
	.long	1054
	.space 4
	.quad	lC104
	.long	622
	.space 4
	.quad	lC105
	.long	1094
	.space 4
	.quad	lC106
	.long	855
	.space 4
	.quad	lC107
	.long	987
	.space 4
	.quad	lC108
	.long	810
	.space 4
	.quad	lC109
	.long	807
	.space 4
	.quad	lC110
	.long	1216
	.space 4
	.quad	lC111
	.long	847
	.space 4
	.quad	lC112
	.long	812
	.space 4
	.cstring
lC113:
	.ascii "set-frame-position\0"
	.data
	.align 5
_Sset_frame_position:
	.quad	167772160
	.quad	_Fset_frame_position
	.word	3
	.word	3
	.space 4
	.quad	lC113
	.quad	0
	.quad	0
	.cstring
lC114:
	.ascii "frame-position\0"
	.data
	.align 5
_Sframe_position:
	.quad	167772160
	.quad	_Fframe_position
	.word	0
	.word	1
	.space 4
	.quad	lC114
	.quad	0
	.quad	0
	.cstring
lC115:
	.ascii "set-frame-size\0"
	.data
	.align 5
_Sset_frame_size:
	.quad	167772160
	.quad	_Fset_frame_size
	.word	3
	.word	4
	.space 4
	.quad	lC115
	.quad	0
	.quad	0
	.cstring
lC116:
	.ascii "set-frame-width\0"
	.data
	.align 5
_Sset_frame_width:
	.quad	167772160
	.quad	_Fset_frame_width
	.word	2
	.word	4
	.space 4
	.quad	lC116
	.quad	0
	.quad	0
	.cstring
lC117:
	.ascii "set-frame-height\0"
	.data
	.align 5
_Sset_frame_height:
	.quad	167772160
	.quad	_Fset_frame_height
	.word	2
	.word	4
	.space 4
	.quad	lC117
	.quad	0
	.quad	0
	.cstring
lC118:
	.ascii "frame-bottom-divider-width\0"
	.data
	.align 5
_Sbottom_divider_width:
	.quad	167772160
	.quad	_Fbottom_divider_width
	.word	0
	.word	1
	.space 4
	.quad	lC118
	.quad	0
	.quad	0
	.cstring
lC119:
	.ascii "frame-right-divider-width\0"
	.data
	.align 5
_Sright_divider_width:
	.quad	167772160
	.quad	_Fright_divider_width
	.word	0
	.word	1
	.space 4
	.quad	lC119
	.quad	0
	.quad	0
	.cstring
lC120:
	.ascii "frame-internal-border-width\0"
	.data
	.align 5
_Sframe_internal_border_width:
	.quad	167772160
	.quad	_Fframe_internal_border_width
	.word	0
	.word	1
	.space 4
	.quad	lC120
	.quad	0
	.quad	0
	.cstring
lC121:
	.ascii "frame-fringe-width\0"
	.data
	.align 5
_Sfringe_width:
	.quad	167772160
	.quad	_Ffringe_width
	.word	0
	.word	1
	.space 4
	.quad	lC121
	.quad	0
	.quad	0
	.cstring
lC122:
	.ascii "frame-scroll-bar-height\0"
	.data
	.align 5
_Sscroll_bar_height:
	.quad	167772160
	.quad	_Fscroll_bar_height
	.word	0
	.word	1
	.space 4
	.quad	lC122
	.quad	0
	.quad	0
	.cstring
lC123:
	.ascii "frame-scroll-bar-width\0"
	.data
	.align 5
_Sscroll_bar_width:
	.quad	167772160
	.quad	_Fscroll_bar_width
	.word	0
	.word	1
	.space 4
	.quad	lC123
	.quad	0
	.quad	0
	.cstring
lC124:
	.ascii "frame-text-height\0"
	.data
	.align 5
_Sframe_text_height:
	.quad	167772160
	.quad	_Fframe_text_height
	.word	0
	.word	1
	.space 4
	.quad	lC124
	.quad	0
	.quad	0
	.cstring
lC125:
	.ascii "frame-text-width\0"
	.data
	.align 5
_Sframe_text_width:
	.quad	167772160
	.quad	_Fframe_text_width
	.word	0
	.word	1
	.space 4
	.quad	lC125
	.quad	0
	.quad	0
	.cstring
lC126:
	.ascii "frame-total-lines\0"
	.data
	.align 5
_Sframe_total_lines:
	.quad	167772160
	.quad	_Fframe_total_lines
	.word	0
	.word	1
	.space 4
	.quad	lC126
	.quad	0
	.quad	0
	.cstring
lC127:
	.ascii "frame-total-cols\0"
	.data
	.align 5
_Sframe_total_cols:
	.quad	167772160
	.quad	_Fframe_total_cols
	.word	0
	.word	1
	.space 4
	.quad	lC127
	.quad	0
	.quad	0
	.cstring
lC128:
	.ascii "frame-text-lines\0"
	.data
	.align 5
_Sframe_text_lines:
	.quad	167772160
	.quad	_Fframe_text_lines
	.word	0
	.word	1
	.space 4
	.quad	lC128
	.quad	0
	.quad	0
	.cstring
lC129:
	.ascii "frame-text-cols\0"
	.data
	.align 5
_Sframe_text_cols:
	.quad	167772160
	.quad	_Fframe_text_cols
	.word	0
	.word	1
	.space 4
	.quad	lC129
	.quad	0
	.quad	0
	.cstring
lC130:
	.ascii "tool-bar-pixel-width\0"
	.data
	.align 5
_Stool_bar_pixel_width:
	.quad	167772160
	.quad	_Ftool_bar_pixel_width
	.word	0
	.word	1
	.space 4
	.quad	lC130
	.quad	0
	.quad	0
	.cstring
lC131:
	.ascii "frame-native-height\0"
	.data
	.align 5
_Sframe_native_height:
	.quad	167772160
	.quad	_Fframe_native_height
	.word	0
	.word	1
	.space 4
	.quad	lC131
	.quad	0
	.quad	0
	.cstring
lC132:
	.ascii "frame-native-width\0"
	.data
	.align 5
_Sframe_native_width:
	.quad	167772160
	.quad	_Fframe_native_width
	.word	0
	.word	1
	.space 4
	.quad	lC132
	.quad	0
	.quad	0
	.cstring
lC133:
	.ascii "frame-char-width\0"
	.data
	.align 5
_Sframe_char_width:
	.quad	167772160
	.quad	_Fframe_char_width
	.word	0
	.word	1
	.space 4
	.quad	lC133
	.quad	0
	.quad	0
	.cstring
lC134:
	.ascii "frame-char-height\0"
	.data
	.align 5
_Sframe_char_height:
	.quad	167772160
	.quad	_Fframe_char_height
	.word	0
	.word	1
	.space 4
	.quad	lC134
	.quad	0
	.quad	0
	.cstring
lC135:
	.ascii "modify-frame-parameters\0"
	.data
	.align 5
_Smodify_frame_parameters:
	.quad	167772160
	.quad	_Fmodify_frame_parameters
	.word	2
	.word	2
	.space 4
	.quad	lC135
	.quad	0
	.quad	0
	.cstring
lC136:
	.ascii "frame-parameter\0"
	.data
	.align 5
_Sframe_parameter:
	.quad	167772160
	.quad	_Fframe_parameter
	.word	2
	.word	2
	.space 4
	.quad	lC136
	.quad	0
	.quad	0
	.cstring
lC137:
	.ascii "frame-parameters\0"
	.data
	.align 5
_Sframe_parameters:
	.quad	167772160
	.quad	_Fframe_parameters
	.word	0
	.word	1
	.space 4
	.quad	lC137
	.quad	0
	.quad	0
	.cstring
lC138:
	.ascii "frame-after-make-frame\0"
	.data
	.align 5
_Sframe_after_make_frame:
	.quad	167772160
	.quad	_Fframe_after_make_frame
	.word	2
	.word	2
	.space 4
	.quad	lC138
	.quad	0
	.quad	0
	.cstring
lC139:
	.ascii "x-focus-frame\0"
	.data
	.align 5
_Sx_focus_frame:
	.quad	167772160
	.quad	_Fx_focus_frame
	.word	1
	.word	2
	.space 4
	.quad	lC139
	.quad	0
	.quad	0
	.cstring
lC140:
	.ascii "frame-focus\0"
	.data
	.align 5
_Sframe_focus:
	.quad	167772160
	.quad	_Fframe_focus
	.word	0
	.word	1
	.space 4
	.quad	lC140
	.quad	0
	.quad	0
	.cstring
lC141:
	.ascii "redirect-frame-focus\0"
	.data
	.align 5
_Sredirect_frame_focus:
	.quad	167772160
	.quad	_Fredirect_frame_focus
	.word	1
	.word	2
	.space 4
	.quad	lC141
	.quad	0
	.quad	0
	.cstring
lC142:
	.ascii "lower-frame\0"
lC143:
	.ascii "\0"
	.data
	.align 5
_Slower_frame:
	.quad	167772160
	.quad	_Flower_frame
	.word	0
	.word	1
	.space 4
	.quad	lC142
	.quad	lC143
	.quad	0
	.cstring
lC144:
	.ascii "raise-frame\0"
	.data
	.align 5
_Sraise_frame:
	.quad	167772160
	.quad	_Fraise_frame
	.word	0
	.word	1
	.space 4
	.quad	lC144
	.quad	lC143
	.quad	0
	.cstring
lC145:
	.ascii "visible-frame-list\0"
	.data
	.align 5
_Svisible_frame_list:
	.quad	167772160
	.quad	_Fvisible_frame_list
	.word	0
	.word	0
	.space 4
	.quad	lC145
	.quad	0
	.quad	0
	.cstring
lC146:
	.ascii "frame-visible-p\0"
	.data
	.align 5
_Sframe_visible_p:
	.quad	167772160
	.quad	_Fframe_visible_p
	.word	1
	.word	1
	.space 4
	.quad	lC146
	.quad	0
	.quad	0
	.cstring
lC147:
	.ascii "iconify-frame\0"
	.data
	.align 5
_Siconify_frame:
	.quad	167772160
	.quad	_Ficonify_frame
	.word	0
	.word	1
	.space 4
	.quad	lC147
	.quad	lC143
	.quad	0
	.cstring
lC148:
	.ascii "make-frame-invisible\0"
	.data
	.align 5
_Smake_frame_invisible:
	.quad	167772160
	.quad	_Fmake_frame_invisible
	.word	0
	.word	2
	.space 4
	.quad	lC148
	.quad	lC143
	.quad	0
	.cstring
lC149:
	.ascii "make-frame-visible\0"
	.data
	.align 5
_Smake_frame_visible:
	.quad	167772160
	.quad	_Fmake_frame_visible
	.word	0
	.word	1
	.space 4
	.quad	lC149
	.quad	lC143
	.quad	0
	.cstring
lC150:
	.ascii "set-mouse-pixel-position\0"
	.data
	.align 5
_Sset_mouse_pixel_position:
	.quad	167772160
	.quad	_Fset_mouse_pixel_position
	.word	3
	.word	3
	.space 4
	.quad	lC150
	.quad	0
	.quad	0
	.cstring
lC151:
	.ascii "set-mouse-position\0"
	.data
	.align 5
_Sset_mouse_position:
	.quad	167772160
	.quad	_Fset_mouse_position
	.word	3
	.word	3
	.space 4
	.quad	lC151
	.quad	0
	.quad	0
	.cstring
lC152:
	.ascii "mouse-pixel-position\0"
	.data
	.align 5
_Smouse_pixel_position:
	.quad	167772160
	.quad	_Fmouse_pixel_position
	.word	0
	.word	0
	.space 4
	.quad	lC152
	.quad	0
	.quad	0
	.cstring
lC153:
	.ascii "mouse-position\0"
	.data
	.align 5
_Smouse_position:
	.quad	167772160
	.quad	_Fmouse_position
	.word	0
	.word	0
	.space 4
	.quad	lC153
	.quad	0
	.quad	0
	.cstring
lC154:
	.ascii "delete-frame\0"
	.data
	.align 5
_Sdelete_frame:
	.quad	167772160
	.quad	_Fdelete_frame
	.word	0
	.word	2
	.space 4
	.quad	lC154
	.quad	lC143
	.quad	0
	.cstring
lC155:
	.ascii "last-nonminibuffer-frame\0"
	.data
	.align 5
_Slast_nonminibuf_frame:
	.quad	167772160
	.quad	_Flast_nonminibuf_frame
	.word	0
	.word	0
	.space 4
	.quad	lC155
	.quad	0
	.quad	0
	.cstring
lC156:
	.ascii "previous-frame\0"
	.data
	.align 5
_Sprevious_frame:
	.quad	167772160
	.quad	_Fprevious_frame
	.word	0
	.word	2
	.space 4
	.quad	lC156
	.quad	0
	.quad	0
	.cstring
lC157:
	.ascii "next-frame\0"
	.data
	.align 5
_Snext_frame:
	.quad	167772160
	.quad	_Fnext_frame
	.word	0
	.word	2
	.space 4
	.quad	lC157
	.quad	0
	.quad	0
	.cstring
lC158:
	.ascii "frame-ancestor-p\0"
	.data
	.align 5
_Sframe_ancestor_p:
	.quad	167772160
	.quad	_Fframe_ancestor_p
	.word	2
	.word	2
	.space 4
	.quad	lC158
	.quad	0
	.quad	0
	.cstring
lC159:
	.ascii "frame-parent\0"
	.data
	.align 5
_Sframe_parent:
	.quad	167772160
	.quad	_Fframe_parent
	.word	0
	.word	1
	.space 4
	.quad	lC159
	.quad	0
	.quad	0
	.cstring
lC160:
	.ascii "frame-list\0"
	.data
	.align 5
_Sframe_list:
	.quad	167772160
	.quad	_Fframe_list
	.word	0
	.word	0
	.space 4
	.quad	lC160
	.quad	0
	.quad	0
	.cstring
lC161:
	.ascii "selected-frame\0"
	.data
	.align 5
_Sselected_frame:
	.quad	167772160
	.quad	_Fselected_frame
	.word	0
	.word	0
	.space 4
	.quad	lC161
	.quad	0
	.quad	0
	.cstring
lC162:
	.ascii "handle-switch-frame\0"
lC163:
	.ascii "^e\0"
	.data
	.align 5
_Shandle_switch_frame:
	.quad	167772160
	.quad	_Fhandle_switch_frame
	.word	1
	.word	1
	.space 4
	.quad	lC162
	.quad	lC163
	.quad	0
	.cstring
lC164:
	.ascii "select-frame\0"
lC165:
	.ascii "e\0"
	.data
	.align 5
_Sselect_frame:
	.quad	167772160
	.quad	_Fselect_frame
	.word	1
	.word	2
	.space 4
	.quad	lC164
	.quad	lC165
	.quad	0
	.cstring
lC166:
	.ascii "make-terminal-frame\0"
	.data
	.align 5
_Smake_terminal_frame:
	.quad	167772160
	.quad	_Fmake_terminal_frame
	.word	1
	.word	1
	.space 4
	.quad	lC166
	.quad	0
	.quad	0
	.zerofill __DATA,__bss3,_tty_frame_count,8,3
	.cstring
lC167:
	.ascii "frame-windows-min-size\0"
	.data
	.align 5
_Sframe_windows_min_size:
	.quad	167772160
	.quad	_Fframe_windows_min_size
	.word	4
	.word	4
	.space 4
	.quad	lC167
	.quad	0
	.quad	0
	.cstring
lC168:
	.ascii "window-system\0"
	.data
	.align 5
_Swindow_system:
	.quad	167772160
	.quad	_Fwindow_system
	.word	0
	.word	1
	.space 4
	.quad	lC168
	.quad	0
	.quad	0
	.cstring
lC169:
	.ascii "frame-live-p\0"
	.data
	.align 5
_Sframe_live_p:
	.quad	167772160
	.quad	_Fframe_live_p
	.word	1
	.word	1
	.space 4
	.quad	lC169
	.quad	0
	.quad	0
	.cstring
lC170:
	.ascii "framep\0"
	.data
	.align 5
_Sframep:
	.quad	167772160
	.quad	_Fframep
	.word	1
	.word	1
	.space 4
	.quad	lC170
	.quad	0
	.quad	0
	.comm	_Vframe_list,8,3
	.comm	_frame_garbaged,1
	.zerofill __DATA,__bss3,_last_nonminibuf_frame,8,3
	.comm	_selected_frame,8,3
	.literal8
	.align 3
lC0:
	.long	0
	.long	0
	.align 3
lC1:
	.long	0
	.long	1072693248
	.align 3
lC5:
	.long	0
	.long	1071644672
	.align 3
lC25:
	.long	721554506
	.long	1071453831
	.align 3
lC34:
	.long	0
	.long	-1074790400
	.align 3
lC35:
	.long	0
	.long	1079574528
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
	.quad	LFB912-.
	.set L$set$2,LFE912-LFB912
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB927-.
	.set L$set$4,LFE927-LFB927
	.quad L$set$4
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB937-.
	.set L$set$6,LFE937-LFB937
	.quad L$set$6
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$7,LEFDE7-LASFDE7
	.long L$set$7
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB954-.
	.set L$set$8,LFE954-LFB954
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI0-LFB954
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI1-LCFI0
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$11,LCFI2-LCFI1
	.long L$set$11
	.byte	0xc3
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$12,LEFDE9-LASFDE9
	.long L$set$12
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB922-.
	.set L$set$13,LFE922-LFB922
	.quad L$set$13
	.byte	0
	.byte	0x4
	.set L$set$14,LCFI3-LFB922
	.long L$set$14
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$15,LCFI4-LCFI3
	.long L$set$15
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$16,LCFI5-LCFI4
	.long L$set$16
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$17,LCFI6-LCFI5
	.long L$set$17
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$18,LCFI7-LCFI6
	.long L$set$18
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$19,LCFI8-LCFI7
	.long L$set$19
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$20,LCFI9-LCFI8
	.long L$set$20
	.byte	0xb
	.byte	0x4
	.set L$set$21,LCFI10-LCFI9
	.long L$set$21
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$22,LCFI11-LCFI10
	.long L$set$22
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$23,LCFI12-LCFI11
	.long L$set$23
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$24,LEFDE11-LASFDE11
	.long L$set$24
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB928-.
	.set L$set$25,LFE928-LFB928
	.quad L$set$25
	.byte	0
	.byte	0x4
	.set L$set$26,LCFI13-LFB928
	.long L$set$26
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0xc3
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$28,LEFDE13-LASFDE13
	.long L$set$28
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB992-.
	.set L$set$29,LFE992-LFB992
	.quad L$set$29
	.byte	0
	.byte	0x4
	.set L$set$30,LCFI15-LFB992
	.long L$set$30
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$31,LCFI16-LCFI15
	.long L$set$31
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$32,LCFI17-LCFI16
	.long L$set$32
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$33,LCFI18-LCFI17
	.long L$set$33
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$34,LCFI19-LCFI18
	.long L$set$34
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$35,LCFI20-LCFI19
	.long L$set$35
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$36,LCFI21-LCFI20
	.long L$set$36
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$37,LCFI22-LCFI21
	.long L$set$37
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$38,LCFI23-LCFI22
	.long L$set$38
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$39,LCFI24-LCFI23
	.long L$set$39
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$41,LCFI26-LCFI25
	.long L$set$41
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$42,LCFI27-LCFI26
	.long L$set$42
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$43,LEFDE15-LASFDE15
	.long L$set$43
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB1025-.
	.set L$set$44,LFE1025-LFB1025
	.quad L$set$44
	.byte	0
	.byte	0x4
	.set L$set$45,LCFI28-LFB1025
	.long L$set$45
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$46,LCFI29-LCFI28
	.long L$set$46
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$47,LCFI30-LCFI29
	.long L$set$47
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$48,LCFI31-LCFI30
	.long L$set$48
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$49,LCFI32-LCFI31
	.long L$set$49
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$50,LCFI33-LCFI32
	.long L$set$50
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$51,LCFI34-LCFI33
	.long L$set$51
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$52,LEFDE17-LASFDE17
	.long L$set$52
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB1064-.
	.set L$set$53,LFE1064-LFB1064
	.quad L$set$53
	.byte	0
	.byte	0x4
	.set L$set$54,LCFI35-LFB1064
	.long L$set$54
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$57,LEFDE19-LASFDE19
	.long L$set$57
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB966-.
	.set L$set$58,LFE966-LFB966
	.quad L$set$58
	.byte	0
	.byte	0x4
	.set L$set$59,LCFI38-LFB966
	.long L$set$59
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$60,LCFI39-LCFI38
	.long L$set$60
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$61,LCFI40-LCFI39
	.long L$set$61
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$62,LCFI41-LCFI40
	.long L$set$62
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$63,LCFI42-LCFI41
	.long L$set$63
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$64,LCFI43-LCFI42
	.long L$set$64
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$65,LCFI44-LCFI43
	.long L$set$65
	.byte	0xb
	.byte	0x4
	.set L$set$66,LCFI45-LCFI44
	.long L$set$66
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$67,LCFI46-LCFI45
	.long L$set$67
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$68,LCFI47-LCFI46
	.long L$set$68
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$69,LCFI48-LCFI47
	.long L$set$69
	.byte	0xb
	.byte	0x4
	.set L$set$70,LCFI49-LCFI48
	.long L$set$70
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$71,LCFI50-LCFI49
	.long L$set$71
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$72,LCFI51-LCFI50
	.long L$set$72
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$73,LEFDE21-LASFDE21
	.long L$set$73
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB950-.
	.set L$set$74,LFE950-LFB950
	.quad L$set$74
	.byte	0
	.byte	0x4
	.set L$set$75,LCFI52-LFB950
	.long L$set$75
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$76,LCFI53-LCFI52
	.long L$set$76
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$77,LCFI54-LCFI53
	.long L$set$77
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$78,LCFI55-LCFI54
	.long L$set$78
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$79,LCFI56-LCFI55
	.long L$set$79
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$80,LCFI57-LCFI56
	.long L$set$80
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$81,LCFI58-LCFI57
	.long L$set$81
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0x4
	.set L$set$82,LCFI59-LCFI58
	.long L$set$82
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.byte	0x8c
	.byte	0x2
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$83,LEFDE23-LASFDE23
	.long L$set$83
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB953-.
	.set L$set$84,LFE953-LFB953
	.quad L$set$84
	.byte	0
	.byte	0x4
	.set L$set$85,LCFI60-LFB953
	.long L$set$85
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$86,LEFDE25-LASFDE25
	.long L$set$86
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB909-.
	.set L$set$87,LFE909-LFB909
	.quad L$set$87
	.byte	0
	.byte	0x4
	.set L$set$88,LCFI61-LFB909
	.long L$set$88
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$89,LEFDE27-LASFDE27
	.long L$set$89
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB910-.
	.set L$set$90,LFE910-LFB910
	.quad L$set$90
	.byte	0
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$91,LEFDE29-LASFDE29
	.long L$set$91
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB911-.
	.set L$set$92,LFE911-LFB911
	.quad L$set$92
	.byte	0
	.byte	0x4
	.set L$set$93,LCFI62-LFB911
	.long L$set$93
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$94,LCFI63-LCFI62
	.long L$set$94
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$95,LCFI64-LCFI63
	.long L$set$95
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$96,LEFDE31-LASFDE31
	.long L$set$96
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB944-.
	.set L$set$97,LFE944-LFB944
	.quad L$set$97
	.byte	0
	.byte	0x4
	.set L$set$98,LCFI65-LFB944
	.long L$set$98
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$99,LCFI66-LCFI65
	.long L$set$99
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$100,LCFI67-LCFI66
	.long L$set$100
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$101,LCFI68-LCFI67
	.long L$set$101
	.byte	0xe
	.byte	0x48
	.byte	0x4
	.set L$set$102,LCFI69-LCFI68
	.long L$set$102
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$103,LCFI70-LCFI69
	.long L$set$103
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$104,LCFI71-LCFI70
	.long L$set$104
	.byte	0xb
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$105,LEFDE33-LASFDE33
	.long L$set$105
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB948-.
	.set L$set$106,LFE948-LFB948
	.quad L$set$106
	.byte	0
	.byte	0x4
	.set L$set$107,LCFI72-LFB948
	.long L$set$107
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$108,LCFI73-LCFI72
	.long L$set$108
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$109,LCFI74-LCFI73
	.long L$set$109
	.byte	0xb
	.byte	0x4
	.set L$set$110,LCFI75-LCFI74
	.long L$set$110
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$111,LCFI76-LCFI75
	.long L$set$111
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$112,LEFDE35-LASFDE35
	.long L$set$112
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB947-.
	.set L$set$113,LFE947-LFB947
	.quad L$set$113
	.byte	0
	.byte	0x4
	.set L$set$114,LCFI77-LFB947
	.long L$set$114
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$115,LCFI78-LCFI77
	.long L$set$115
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$116,LCFI79-LCFI78
	.long L$set$116
	.byte	0xb
	.byte	0x4
	.set L$set$117,LCFI80-LCFI79
	.long L$set$117
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$118,LCFI81-LCFI80
	.long L$set$118
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$119,LEFDE37-LASFDE37
	.long L$set$119
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB943-.
	.set L$set$120,LFE943-LFB943
	.quad L$set$120
	.byte	0
	.byte	0x4
	.set L$set$121,LCFI82-LFB943
	.long L$set$121
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$122,LCFI83-LCFI82
	.long L$set$122
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$123,LCFI84-LCFI83
	.long L$set$123
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$124,LCFI85-LCFI84
	.long L$set$124
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$125,LCFI86-LCFI85
	.long L$set$125
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$126,LCFI87-LCFI86
	.long L$set$126
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$127,LCFI88-LCFI87
	.long L$set$127
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$128,LCFI89-LCFI88
	.long L$set$128
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$129,LCFI90-LCFI89
	.long L$set$129
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$130,LCFI91-LCFI90
	.long L$set$130
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$131,LCFI92-LCFI91
	.long L$set$131
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$132,LCFI93-LCFI92
	.long L$set$132
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$133,LCFI94-LCFI93
	.long L$set$133
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$134,LCFI95-LCFI94
	.long L$set$134
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$135,LCFI96-LCFI95
	.long L$set$135
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$136,LEFDE39-LASFDE39
	.long L$set$136
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB900-.
	.set L$set$137,LFE900-LFB900
	.quad L$set$137
	.byte	0
	.byte	0x4
	.set L$set$138,LCFI97-LFB900
	.long L$set$138
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$139,LEFDE41-LASFDE41
	.long L$set$139
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB929-.
	.set L$set$140,LFE929-LFB929
	.quad L$set$140
	.byte	0
	.byte	0x4
	.set L$set$141,LCFI98-LFB929
	.long L$set$141
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$142,LCFI99-LCFI98
	.long L$set$142
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$143,LCFI100-LCFI99
	.long L$set$143
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$144,LEFDE43-LASFDE43
	.long L$set$144
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB939-.
	.set L$set$145,LFE939-LFB939
	.quad L$set$145
	.byte	0
	.byte	0x4
	.set L$set$146,LCFI101-LFB939
	.long L$set$146
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$147,LCFI102-LCFI101
	.long L$set$147
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$148,LCFI103-LCFI102
	.long L$set$148
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$149,LCFI104-LCFI103
	.long L$set$149
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$150,LCFI105-LCFI104
	.long L$set$150
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$151,LCFI106-LCFI105
	.long L$set$151
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$152,LCFI107-LCFI106
	.long L$set$152
	.byte	0xb
	.byte	0x4
	.set L$set$153,LCFI108-LCFI107
	.long L$set$153
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$154,LCFI109-LCFI108
	.long L$set$154
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$155,LCFI110-LCFI109
	.long L$set$155
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$156,LEFDE45-LASFDE45
	.long L$set$156
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB949-.
	.set L$set$157,LFE949-LFB949
	.quad L$set$157
	.byte	0
	.byte	0x4
	.set L$set$158,LCFI111-LFB949
	.long L$set$158
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$159,LCFI112-LCFI111
	.long L$set$159
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$160,LCFI113-LCFI112
	.long L$set$160
	.byte	0xb
	.byte	0x4
	.set L$set$161,LCFI114-LCFI113
	.long L$set$161
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE45:
LSFDE47:
	.set L$set$162,LEFDE47-LASFDE47
	.long L$set$162
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB956-.
	.set L$set$163,LFE956-LFB956
	.quad L$set$163
	.byte	0
	.byte	0x4
	.set L$set$164,LCFI115-LFB956
	.long L$set$164
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$165,LCFI116-LCFI115
	.long L$set$165
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE47:
LSFDE49:
	.set L$set$166,LEFDE49-LASFDE49
	.long L$set$166
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB958-.
	.set L$set$167,LFE958-LFB958
	.quad L$set$167
	.byte	0
	.byte	0x4
	.set L$set$168,LCFI117-LFB958
	.long L$set$168
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$169,LCFI118-LCFI117
	.long L$set$169
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE49:
LSFDE51:
	.set L$set$170,LEFDE51-LASFDE51
	.long L$set$170
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB960-.
	.set L$set$171,LFE960-LFB960
	.quad L$set$171
	.byte	0
	.byte	0x4
	.set L$set$172,LCFI119-LFB960
	.long L$set$172
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$173,LCFI120-LCFI119
	.long L$set$173
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE51:
LSFDE53:
	.set L$set$174,LEFDE53-LASFDE53
	.long L$set$174
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB990-.
	.set L$set$175,LFE990-LFB990
	.quad L$set$175
	.byte	0
	.byte	0x4
	.set L$set$176,LCFI121-LFB990
	.long L$set$176
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$177,LCFI122-LCFI121
	.long L$set$177
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE53:
LSFDE55:
	.set L$set$178,LEFDE55-LASFDE55
	.long L$set$178
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB991-.
	.set L$set$179,LFE991-LFB991
	.quad L$set$179
	.byte	0
	.byte	0x4
	.set L$set$180,LCFI123-LFB991
	.long L$set$180
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$181,LCFI124-LCFI123
	.long L$set$181
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$182,LCFI125-LCFI124
	.long L$set$182
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$183,LCFI126-LCFI125
	.long L$set$183
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$184,LCFI127-LCFI126
	.long L$set$184
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$185,LCFI128-LCFI127
	.long L$set$185
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$186,LCFI129-LCFI128
	.long L$set$186
	.byte	0xb
	.byte	0x4
	.set L$set$187,LCFI130-LCFI129
	.long L$set$187
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$188,LCFI131-LCFI130
	.long L$set$188
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$189,LCFI132-LCFI131
	.long L$set$189
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$190,LCFI133-LCFI132
	.long L$set$190
	.byte	0xb
	.align 3
LEFDE55:
LSFDE57:
	.set L$set$191,LEFDE57-LASFDE57
	.long L$set$191
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB931-.
	.set L$set$192,LFE931-LFB931
	.quad L$set$192
	.byte	0
	.byte	0x4
	.set L$set$193,LCFI134-LFB931
	.long L$set$193
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$194,LCFI135-LCFI134
	.long L$set$194
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$195,LCFI136-LCFI135
	.long L$set$195
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$196,LCFI137-LCFI136
	.long L$set$196
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$197,LCFI138-LCFI137
	.long L$set$197
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$198,LCFI139-LCFI138
	.long L$set$198
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$199,LCFI140-LCFI139
	.long L$set$199
	.byte	0xb
	.byte	0x4
	.set L$set$200,LCFI141-LCFI140
	.long L$set$200
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$201,LCFI142-LCFI141
	.long L$set$201
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$202,LCFI143-LCFI142
	.long L$set$202
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE57:
LSFDE59:
	.set L$set$203,LEFDE59-LASFDE59
	.long L$set$203
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB901-.
	.set L$set$204,LFE901-LFB901
	.quad L$set$204
	.byte	0
	.byte	0x4
	.set L$set$205,LCFI144-LFB901
	.long L$set$205
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE59:
LSFDE61:
	.set L$set$206,LEFDE61-LASFDE61
	.long L$set$206
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB957-.
	.set L$set$207,LFE957-LFB957
	.quad L$set$207
	.byte	0
	.byte	0x4
	.set L$set$208,LCFI145-LFB957
	.long L$set$208
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$209,LCFI146-LCFI145
	.long L$set$209
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$210,LCFI147-LCFI146
	.long L$set$210
	.byte	0xb
	.align 3
LEFDE61:
LSFDE63:
	.set L$set$211,LEFDE63-LASFDE63
	.long L$set$211
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB970-.
	.set L$set$212,LFE970-LFB970
	.quad L$set$212
	.byte	0
	.byte	0x4
	.set L$set$213,LCFI148-LFB970
	.long L$set$213
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$214,LCFI149-LCFI148
	.long L$set$214
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE63:
LSFDE65:
	.set L$set$215,LEFDE65-LASFDE65
	.long L$set$215
LASFDE65:
	.long	LASFDE65-EH_frame1
	.quad	LFB971-.
	.set L$set$216,LFE971-LFB971
	.quad L$set$216
	.byte	0
	.byte	0x4
	.set L$set$217,LCFI150-LFB971
	.long L$set$217
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$218,LCFI151-LCFI150
	.long L$set$218
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE65:
LSFDE67:
	.set L$set$219,LEFDE67-LASFDE67
	.long L$set$219
LASFDE67:
	.long	LASFDE67-EH_frame1
	.quad	LFB972-.
	.set L$set$220,LFE972-LFB972
	.quad L$set$220
	.byte	0
	.byte	0x4
	.set L$set$221,LCFI152-LFB972
	.long L$set$221
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$222,LCFI153-LCFI152
	.long L$set$222
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$223,LCFI154-LCFI153
	.long L$set$223
	.byte	0xb
	.byte	0x4
	.set L$set$224,LCFI155-LCFI154
	.long L$set$224
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE67:
LSFDE69:
	.set L$set$225,LEFDE69-LASFDE69
	.long L$set$225
LASFDE69:
	.long	LASFDE69-EH_frame1
	.quad	LFB973-.
	.set L$set$226,LFE973-LFB973
	.quad L$set$226
	.byte	0
	.byte	0x4
	.set L$set$227,LCFI156-LFB973
	.long L$set$227
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$228,LCFI157-LCFI156
	.long L$set$228
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$229,LCFI158-LCFI157
	.long L$set$229
	.byte	0xb
	.byte	0x4
	.set L$set$230,LCFI159-LCFI158
	.long L$set$230
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE69:
LSFDE71:
	.set L$set$231,LEFDE71-LASFDE71
	.long L$set$231
LASFDE71:
	.long	LASFDE71-EH_frame1
	.quad	LFB974-.
	.set L$set$232,LFE974-LFB974
	.quad L$set$232
	.byte	0
	.byte	0x4
	.set L$set$233,LCFI160-LFB974
	.long L$set$233
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$234,LCFI161-LCFI160
	.long L$set$234
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE71:
LSFDE73:
	.set L$set$235,LEFDE73-LASFDE73
	.long L$set$235
LASFDE73:
	.long	LASFDE73-EH_frame1
	.quad	LFB975-.
	.set L$set$236,LFE975-LFB975
	.quad L$set$236
	.byte	0
	.byte	0x4
	.set L$set$237,LCFI162-LFB975
	.long L$set$237
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$238,LCFI163-LCFI162
	.long L$set$238
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE73:
LSFDE75:
	.set L$set$239,LEFDE75-LASFDE75
	.long L$set$239
LASFDE75:
	.long	LASFDE75-EH_frame1
	.quad	LFB976-.
	.set L$set$240,LFE976-LFB976
	.quad L$set$240
	.byte	0
	.byte	0x4
	.set L$set$241,LCFI164-LFB976
	.long L$set$241
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$242,LCFI165-LCFI164
	.long L$set$242
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE75:
LSFDE77:
	.set L$set$243,LEFDE77-LASFDE77
	.long L$set$243
LASFDE77:
	.long	LASFDE77-EH_frame1
	.quad	LFB977-.
	.set L$set$244,LFE977-LFB977
	.quad L$set$244
	.byte	0
	.byte	0x4
	.set L$set$245,LCFI166-LFB977
	.long L$set$245
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$246,LCFI167-LCFI166
	.long L$set$246
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE77:
LSFDE79:
	.set L$set$247,LEFDE79-LASFDE79
	.long L$set$247
LASFDE79:
	.long	LASFDE79-EH_frame1
	.quad	LFB978-.
	.set L$set$248,LFE978-LFB978
	.quad L$set$248
	.byte	0
	.byte	0x4
	.set L$set$249,LCFI168-LFB978
	.long L$set$249
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$250,LCFI169-LCFI168
	.long L$set$250
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE79:
LSFDE81:
	.set L$set$251,LEFDE81-LASFDE81
	.long L$set$251
LASFDE81:
	.long	LASFDE81-EH_frame1
	.quad	LFB979-.
	.set L$set$252,LFE979-LFB979
	.quad L$set$252
	.byte	0
	.byte	0x4
	.set L$set$253,LCFI170-LFB979
	.long L$set$253
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$254,LCFI171-LCFI170
	.long L$set$254
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE81:
LSFDE83:
	.set L$set$255,LEFDE83-LASFDE83
	.long L$set$255
LASFDE83:
	.long	LASFDE83-EH_frame1
	.quad	LFB980-.
	.set L$set$256,LFE980-LFB980
	.quad L$set$256
	.byte	0
	.byte	0x4
	.set L$set$257,LCFI172-LFB980
	.long L$set$257
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$258,LCFI173-LCFI172
	.long L$set$258
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE83:
LSFDE85:
	.set L$set$259,LEFDE85-LASFDE85
	.long L$set$259
LASFDE85:
	.long	LASFDE85-EH_frame1
	.quad	LFB981-.
	.set L$set$260,LFE981-LFB981
	.quad L$set$260
	.byte	0
	.byte	0x4
	.set L$set$261,LCFI174-LFB981
	.long L$set$261
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$262,LCFI175-LCFI174
	.long L$set$262
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE85:
LSFDE87:
	.set L$set$263,LEFDE87-LASFDE87
	.long L$set$263
LASFDE87:
	.long	LASFDE87-EH_frame1
	.quad	LFB982-.
	.set L$set$264,LFE982-LFB982
	.quad L$set$264
	.byte	0
	.byte	0x4
	.set L$set$265,LCFI176-LFB982
	.long L$set$265
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$266,LCFI177-LCFI176
	.long L$set$266
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE87:
LSFDE89:
	.set L$set$267,LEFDE89-LASFDE89
	.long L$set$267
LASFDE89:
	.long	LASFDE89-EH_frame1
	.quad	LFB983-.
	.set L$set$268,LFE983-LFB983
	.quad L$set$268
	.byte	0
	.byte	0x4
	.set L$set$269,LCFI178-LFB983
	.long L$set$269
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$270,LCFI179-LCFI178
	.long L$set$270
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE89:
LSFDE91:
	.set L$set$271,LEFDE91-LASFDE91
	.long L$set$271
LASFDE91:
	.long	LASFDE91-EH_frame1
	.quad	LFB984-.
	.set L$set$272,LFE984-LFB984
	.quad L$set$272
	.byte	0
	.byte	0x4
	.set L$set$273,LCFI180-LFB984
	.long L$set$273
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$274,LCFI181-LCFI180
	.long L$set$274
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE91:
LSFDE93:
	.set L$set$275,LEFDE93-LASFDE93
	.long L$set$275
LASFDE93:
	.long	LASFDE93-EH_frame1
	.quad	LFB985-.
	.set L$set$276,LFE985-LFB985
	.quad L$set$276
	.byte	0
	.byte	0x4
	.set L$set$277,LCFI182-LFB985
	.long L$set$277
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$278,LCFI183-LCFI182
	.long L$set$278
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE93:
LSFDE95:
	.set L$set$279,LEFDE95-LASFDE95
	.long L$set$279
LASFDE95:
	.long	LASFDE95-EH_frame1
	.quad	LFB986-.
	.set L$set$280,LFE986-LFB986
	.quad L$set$280
	.byte	0
	.byte	0x4
	.set L$set$281,LCFI184-LFB986
	.long L$set$281
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$282,LCFI185-LCFI184
	.long L$set$282
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE95:
LSFDE97:
	.set L$set$283,LEFDE97-LASFDE97
	.long L$set$283
LASFDE97:
	.long	LASFDE97-EH_frame1
	.quad	LFB1029-.
	.set L$set$284,LFE1029-LFB1029
	.quad L$set$284
	.byte	0
	.byte	0x4
	.set L$set$285,LCFI186-LFB1029
	.long L$set$285
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$286,LCFI187-LCFI186
	.long L$set$286
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE97:
LSFDE99:
	.set L$set$287,LEFDE99-LASFDE99
	.long L$set$287
LASFDE99:
	.long	LASFDE99-EH_frame1
	.quad	LFB902-.
	.set L$set$288,LFE902-LFB902
	.quad L$set$288
	.byte	0
	.align 3
LEFDE99:
LSFDE101:
	.set L$set$289,LEFDE101-LASFDE101
	.long L$set$289
LASFDE101:
	.long	LASFDE101-EH_frame1
	.quad	LFB904-.
	.set L$set$290,LFE904-LFB904
	.quad L$set$290
	.byte	0
	.byte	0x4
	.set L$set$291,LCFI188-LFB904
	.long L$set$291
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE101:
LSFDE103:
	.set L$set$292,LEFDE103-LASFDE103
	.long L$set$292
LASFDE103:
	.long	LASFDE103-EH_frame1
	.quad	LFB903-.
	.set L$set$293,LFE903-LFB903
	.quad L$set$293
	.byte	0
	.byte	0x4
	.set L$set$294,LCFI189-LFB903
	.long L$set$294
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$295,LCFI190-LCFI189
	.long L$set$295
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE103:
LSFDE105:
	.set L$set$296,LEFDE105-LASFDE105
	.long L$set$296
LASFDE105:
	.long	LASFDE105-EH_frame1
	.quad	LFB959-.
	.set L$set$297,LFE959-LFB959
	.quad L$set$297
	.byte	0
	.byte	0x4
	.set L$set$298,LCFI191-LFB959
	.long L$set$298
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$299,LCFI192-LCFI191
	.long L$set$299
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$300,LCFI193-LCFI192
	.long L$set$300
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$301,LCFI194-LCFI193
	.long L$set$301
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$302,LCFI195-LCFI194
	.long L$set$302
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$303,LCFI196-LCFI195
	.long L$set$303
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE105:
LSFDE107:
	.set L$set$304,LEFDE107-LASFDE107
	.long L$set$304
LASFDE107:
	.long	LASFDE107-EH_frame1
	.quad	LFB905-.
	.set L$set$305,LFE905-LFB905
	.quad L$set$305
	.byte	0
	.byte	0x4
	.set L$set$306,LCFI197-LFB905
	.long L$set$306
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$307,LCFI198-LCFI197
	.long L$set$307
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$308,LCFI199-LCFI198
	.long L$set$308
	.byte	0xb
	.byte	0x4
	.set L$set$309,LCFI200-LCFI199
	.long L$set$309
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE107:
LSFDE109:
	.set L$set$310,LEFDE109-LASFDE109
	.long L$set$310
LASFDE109:
	.long	LASFDE109-EH_frame1
	.quad	LFB932-.
	.set L$set$311,LFE932-LFB932
	.quad L$set$311
	.byte	0
	.byte	0x4
	.set L$set$312,LCFI201-LFB932
	.long L$set$312
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$313,LCFI202-LCFI201
	.long L$set$313
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$314,LCFI203-LCFI202
	.long L$set$314
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$315,LCFI204-LCFI203
	.long L$set$315
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$316,LCFI205-LCFI204
	.long L$set$316
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$317,LCFI206-LCFI205
	.long L$set$317
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$318,LCFI207-LCFI206
	.long L$set$318
	.byte	0xb
	.byte	0x4
	.set L$set$319,LCFI208-LCFI207
	.long L$set$319
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$320,LCFI209-LCFI208
	.long L$set$320
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$321,LCFI210-LCFI209
	.long L$set$321
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$322,LCFI211-LCFI210
	.long L$set$322
	.byte	0xb
	.align 3
LEFDE109:
LSFDE111:
	.set L$set$323,LEFDE111-LASFDE111
	.long L$set$323
LASFDE111:
	.long	LASFDE111-EH_frame1
	.quad	LFB935-.
	.set L$set$324,LFE935-LFB935
	.quad L$set$324
	.byte	0
	.byte	0x4
	.set L$set$325,LCFI212-LFB935
	.long L$set$325
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$326,LCFI213-LCFI212
	.long L$set$326
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$327,LCFI214-LCFI213
	.long L$set$327
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$328,LCFI215-LCFI214
	.long L$set$328
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$329,LCFI216-LCFI215
	.long L$set$329
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$330,LCFI217-LCFI216
	.long L$set$330
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$331,LCFI218-LCFI217
	.long L$set$331
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$332,LCFI219-LCFI218
	.long L$set$332
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$333,LCFI220-LCFI219
	.long L$set$333
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$334,LCFI221-LCFI220
	.long L$set$334
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$335,LCFI222-LCFI221
	.long L$set$335
	.byte	0xb
	.align 3
LEFDE111:
LSFDE113:
	.set L$set$336,LEFDE113-LASFDE113
	.long L$set$336
LASFDE113:
	.long	LASFDE113-EH_frame1
	.quad	LFB936-.
	.set L$set$337,LFE936-LFB936
	.quad L$set$337
	.byte	0
	.byte	0x4
	.set L$set$338,LCFI223-LFB936
	.long L$set$338
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$339,LCFI224-LCFI223
	.long L$set$339
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$340,LCFI225-LCFI224
	.long L$set$340
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$341,LCFI226-LCFI225
	.long L$set$341
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$342,LCFI227-LCFI226
	.long L$set$342
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$343,LCFI228-LCFI227
	.long L$set$343
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$344,LCFI229-LCFI228
	.long L$set$344
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$345,LCFI230-LCFI229
	.long L$set$345
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$346,LCFI231-LCFI230
	.long L$set$346
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$347,LCFI232-LCFI231
	.long L$set$347
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$348,LCFI233-LCFI232
	.long L$set$348
	.byte	0xb
	.byte	0x4
	.set L$set$349,LCFI234-LCFI233
	.long L$set$349
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$350,LCFI235-LCFI234
	.long L$set$350
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$351,LCFI236-LCFI235
	.long L$set$351
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$352,LCFI237-LCFI236
	.long L$set$352
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$353,LCFI238-LCFI237
	.long L$set$353
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$354,LCFI239-LCFI238
	.long L$set$354
	.byte	0xb
	.align 3
LEFDE113:
LSFDE115:
	.set L$set$355,LEFDE115-LASFDE115
	.long L$set$355
LASFDE115:
	.long	LASFDE115-EH_frame1
	.quad	LFB938-.
	.set L$set$356,LFE938-LFB938
	.quad L$set$356
	.byte	0
	.byte	0x4
	.set L$set$357,LCFI240-LFB938
	.long L$set$357
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$358,LCFI241-LCFI240
	.long L$set$358
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$359,LCFI242-LCFI241
	.long L$set$359
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$360,LCFI243-LCFI242
	.long L$set$360
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$361,LCFI244-LCFI243
	.long L$set$361
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$362,LCFI245-LCFI244
	.long L$set$362
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$363,LCFI246-LCFI245
	.long L$set$363
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$364,LCFI247-LCFI246
	.long L$set$364
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$365,LCFI248-LCFI247
	.long L$set$365
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$366,LCFI249-LCFI248
	.long L$set$366
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$367,LCFI250-LCFI249
	.long L$set$367
	.byte	0xb
	.byte	0x4
	.set L$set$368,LCFI251-LCFI250
	.long L$set$368
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$369,LCFI252-LCFI251
	.long L$set$369
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$370,LCFI253-LCFI252
	.long L$set$370
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$371,LCFI254-LCFI253
	.long L$set$371
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$372,LCFI255-LCFI254
	.long L$set$372
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE115:
LSFDE117:
	.set L$set$373,LEFDE117-LASFDE117
	.long L$set$373
LASFDE117:
	.long	LASFDE117-EH_frame1
	.quad	LFB951-.
	.set L$set$374,LFE951-LFB951
	.quad L$set$374
	.byte	0
	.byte	0x4
	.set L$set$375,LCFI256-LFB951
	.long L$set$375
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$376,LCFI257-LCFI256
	.long L$set$376
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$377,LCFI258-LCFI257
	.long L$set$377
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$378,LCFI259-LCFI258
	.long L$set$378
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$379,LCFI260-LCFI259
	.long L$set$379
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$380,LCFI261-LCFI260
	.long L$set$380
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$381,LCFI262-LCFI261
	.long L$set$381
	.byte	0xb
	.align 3
LEFDE117:
LSFDE119:
	.set L$set$382,LEFDE119-LASFDE119
	.long L$set$382
LASFDE119:
	.long	LASFDE119-EH_frame1
	.quad	LFB952-.
	.set L$set$383,LFE952-LFB952
	.quad L$set$383
	.byte	0
	.byte	0x4
	.set L$set$384,LCFI263-LFB952
	.long L$set$384
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$385,LCFI264-LCFI263
	.long L$set$385
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$386,LCFI265-LCFI264
	.long L$set$386
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$387,LCFI266-LCFI265
	.long L$set$387
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$388,LCFI267-LCFI266
	.long L$set$388
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$389,LCFI268-LCFI267
	.long L$set$389
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$390,LCFI269-LCFI268
	.long L$set$390
	.byte	0xb
	.byte	0x4
	.set L$set$391,LCFI270-LCFI269
	.long L$set$391
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$392,LCFI271-LCFI270
	.long L$set$392
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$393,LCFI272-LCFI271
	.long L$set$393
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$394,LCFI273-LCFI272
	.long L$set$394
	.byte	0xb
	.align 3
LEFDE119:
LSFDE121:
	.set L$set$395,LEFDE121-LASFDE121
	.long L$set$395
LASFDE121:
	.long	LASFDE121-EH_frame1
	.quad	LFB906-.
	.set L$set$396,LFE906-LFB906
	.quad L$set$396
	.byte	0
	.byte	0x4
	.set L$set$397,LCFI274-LFB906
	.long L$set$397
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$398,LCFI275-LCFI274
	.long L$set$398
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$399,LCFI276-LCFI275
	.long L$set$399
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$400,LCFI277-LCFI276
	.long L$set$400
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$401,LCFI278-LCFI277
	.long L$set$401
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$402,LCFI279-LCFI278
	.long L$set$402
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$403,LCFI280-LCFI279
	.long L$set$403
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$404,LCFI281-LCFI280
	.long L$set$404
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$405,LCFI282-LCFI281
	.long L$set$405
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$406,LCFI283-LCFI282
	.long L$set$406
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$407,LCFI284-LCFI283
	.long L$set$407
	.byte	0xb
	.align 3
LEFDE121:
LSFDE123:
	.set L$set$408,LEFDE123-LASFDE123
	.long L$set$408
LASFDE123:
	.long	LASFDE123-EH_frame1
	.quad	LFB907-.
	.set L$set$409,LFE907-LFB907
	.quad L$set$409
	.byte	0
	.byte	0x4
	.set L$set$410,LCFI285-LFB907
	.long L$set$410
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$411,LCFI286-LCFI285
	.long L$set$411
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$412,LCFI287-LCFI286
	.long L$set$412
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$413,LCFI288-LCFI287
	.long L$set$413
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$414,LCFI289-LCFI288
	.long L$set$414
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$415,LCFI290-LCFI289
	.long L$set$415
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$416,LCFI291-LCFI290
	.long L$set$416
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$417,LCFI292-LCFI291
	.long L$set$417
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$418,LCFI293-LCFI292
	.long L$set$418
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$419,LCFI294-LCFI293
	.long L$set$419
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$420,LCFI295-LCFI294
	.long L$set$420
	.byte	0xb
	.byte	0x4
	.set L$set$421,LCFI296-LCFI295
	.long L$set$421
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$422,LCFI297-LCFI296
	.long L$set$422
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$423,LCFI298-LCFI297
	.long L$set$423
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$424,LCFI299-LCFI298
	.long L$set$424
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$425,LCFI300-LCFI299
	.long L$set$425
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$426,LCFI301-LCFI300
	.long L$set$426
	.byte	0xb
	.align 3
LEFDE123:
LSFDE125:
	.set L$set$427,LEFDE125-LASFDE125
	.long L$set$427
LASFDE125:
	.long	LASFDE125-EH_frame1
	.quad	LFB915-.
	.set L$set$428,LFE915-LFB915
	.quad L$set$428
	.byte	0
	.byte	0x4
	.set L$set$429,LCFI302-LFB915
	.long L$set$429
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$430,LCFI303-LCFI302
	.long L$set$430
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$431,LCFI304-LCFI303
	.long L$set$431
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$432,LCFI305-LCFI304
	.long L$set$432
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$433,LCFI306-LCFI305
	.long L$set$433
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$434,LCFI307-LCFI306
	.long L$set$434
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$435,LCFI308-LCFI307
	.long L$set$435
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.set L$set$436,LCFI309-LCFI308
	.long L$set$436
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$437,LCFI310-LCFI309
	.long L$set$437
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$438,LCFI311-LCFI310
	.long L$set$438
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$439,LCFI312-LCFI311
	.long L$set$439
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$440,LCFI313-LCFI312
	.long L$set$440
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$441,LCFI314-LCFI313
	.long L$set$441
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$442,LCFI315-LCFI314
	.long L$set$442
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$443,LCFI316-LCFI315
	.long L$set$443
	.byte	0xb
	.byte	0x4
	.set L$set$444,LCFI317-LCFI316
	.long L$set$444
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$445,LCFI318-LCFI317
	.long L$set$445
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$446,LCFI319-LCFI318
	.long L$set$446
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$447,LCFI320-LCFI319
	.long L$set$447
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$448,LCFI321-LCFI320
	.long L$set$448
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$449,LCFI322-LCFI321
	.long L$set$449
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$450,LCFI323-LCFI322
	.long L$set$450
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$451,LCFI324-LCFI323
	.long L$set$451
	.byte	0xb
	.align 3
LEFDE125:
LSFDE127:
	.set L$set$452,LEFDE127-LASFDE127
	.long L$set$452
LASFDE127:
	.long	LASFDE127-EH_frame1
	.quad	LFB987-.
	.set L$set$453,LFE987-LFB987
	.quad L$set$453
	.byte	0
	.byte	0x4
	.set L$set$454,LCFI325-LFB987
	.long L$set$454
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$455,LCFI326-LCFI325
	.long L$set$455
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$456,LCFI327-LCFI326
	.long L$set$456
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$457,LCFI328-LCFI327
	.long L$set$457
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$458,LCFI329-LCFI328
	.long L$set$458
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$459,LCFI330-LCFI329
	.long L$set$459
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$460,LCFI331-LCFI330
	.long L$set$460
	.byte	0xb
	.align 3
LEFDE127:
LSFDE129:
	.set L$set$461,LEFDE129-LASFDE129
	.long L$set$461
LASFDE129:
	.long	LASFDE129-EH_frame1
	.quad	LFB988-.
	.set L$set$462,LFE988-LFB988
	.quad L$set$462
	.byte	0
	.byte	0x4
	.set L$set$463,LCFI332-LFB988
	.long L$set$463
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$464,LCFI333-LCFI332
	.long L$set$464
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$465,LCFI334-LCFI333
	.long L$set$465
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$466,LCFI335-LCFI334
	.long L$set$466
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$467,LCFI336-LCFI335
	.long L$set$467
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$468,LCFI337-LCFI336
	.long L$set$468
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$469,LCFI338-LCFI337
	.long L$set$469
	.byte	0xb
	.align 3
LEFDE129:
LSFDE131:
	.set L$set$470,LEFDE131-LASFDE131
	.long L$set$470
LASFDE131:
	.long	LASFDE131-EH_frame1
	.quad	LFB989-.
	.set L$set$471,LFE989-LFB989
	.quad L$set$471
	.byte	0
	.byte	0x4
	.set L$set$472,LCFI339-LFB989
	.long L$set$472
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$473,LCFI340-LCFI339
	.long L$set$473
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$474,LCFI341-LCFI340
	.long L$set$474
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$475,LCFI342-LCFI341
	.long L$set$475
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$476,LCFI343-LCFI342
	.long L$set$476
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$477,LCFI344-LCFI343
	.long L$set$477
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$478,LCFI345-LCFI344
	.long L$set$478
	.byte	0xb
	.align 3
LEFDE131:
LSFDE133:
	.set L$set$479,LEFDE133-LASFDE133
	.long L$set$479
LASFDE133:
	.long	LASFDE133-EH_frame1
	.quad	LFB924-.
	.set L$set$480,LFE924-LFB924
	.quad L$set$480
	.byte	0
	.byte	0x4
	.set L$set$481,LCFI346-LFB924
	.long L$set$481
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$482,LCFI347-LCFI346
	.long L$set$482
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$483,LCFI348-LCFI347
	.long L$set$483
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$484,LCFI349-LCFI348
	.long L$set$484
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$485,LCFI350-LCFI349
	.long L$set$485
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$486,LCFI351-LCFI350
	.long L$set$486
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$487,LCFI352-LCFI351
	.long L$set$487
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$488,LCFI353-LCFI352
	.long L$set$488
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$489,LCFI354-LCFI353
	.long L$set$489
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$490,LCFI355-LCFI354
	.long L$set$490
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$491,LCFI356-LCFI355
	.long L$set$491
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$492,LCFI357-LCFI356
	.long L$set$492
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$493,LCFI358-LCFI357
	.long L$set$493
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$494,LCFI359-LCFI358
	.long L$set$494
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$495,LCFI360-LCFI359
	.long L$set$495
	.byte	0xb
	.align 3
LEFDE133:
LSFDE135:
	.set L$set$496,LEFDE135-LASFDE135
	.long L$set$496
LASFDE135:
	.long	LASFDE135-EH_frame1
	.quad	LFB925-.
	.set L$set$497,LFE925-LFB925
	.quad L$set$497
	.byte	0
	.align 3
LEFDE135:
LSFDE137:
	.set L$set$498,LEFDE137-LASFDE137
	.long L$set$498
LASFDE137:
	.long	LASFDE137-EH_frame1
	.quad	LFB955-.
	.set L$set$499,LFE955-LFB955
	.quad L$set$499
	.byte	0
	.byte	0x4
	.set L$set$500,LCFI361-LFB955
	.long L$set$500
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$501,LCFI362-LCFI361
	.long L$set$501
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$502,LCFI363-LCFI362
	.long L$set$502
	.byte	0xb
	.align 3
LEFDE137:
LSFDE139:
	.set L$set$503,LEFDE139-LASFDE139
	.long L$set$503
LASFDE139:
	.long	LASFDE139-EH_frame1
	.quad	LFB926-.
	.set L$set$504,LFE926-LFB926
	.quad L$set$504
	.byte	0
	.byte	0x4
	.set L$set$505,LCFI364-LFB926
	.long L$set$505
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$506,LCFI365-LCFI364
	.long L$set$506
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$507,LCFI366-LCFI365
	.long L$set$507
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$508,LCFI367-LCFI366
	.long L$set$508
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$509,LCFI368-LCFI367
	.long L$set$509
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$510,LCFI369-LCFI368
	.long L$set$510
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE139:
LSFDE141:
	.set L$set$511,LEFDE141-LASFDE141
	.long L$set$511
LASFDE141:
	.long	LASFDE141-EH_frame1
	.quad	LFB930-.
	.set L$set$512,LFE930-LFB930
	.quad L$set$512
	.byte	0
	.align 3
LEFDE141:
LSFDE143:
	.set L$set$513,LEFDE143-LASFDE143
	.long L$set$513
LASFDE143:
	.long	LASFDE143-EH_frame1
	.quad	LFB940-.
	.set L$set$514,LFE940-LFB940
	.quad L$set$514
	.byte	0
	.byte	0x4
	.set L$set$515,LCFI370-LFB940
	.long L$set$515
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$516,LCFI371-LCFI370
	.long L$set$516
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$517,LCFI372-LCFI371
	.long L$set$517
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$518,LCFI373-LCFI372
	.long L$set$518
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$519,LCFI374-LCFI373
	.long L$set$519
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$520,LCFI375-LCFI374
	.long L$set$520
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$521,LCFI376-LCFI375
	.long L$set$521
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$522,LCFI377-LCFI376
	.long L$set$522
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$523,LCFI378-LCFI377
	.long L$set$523
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$524,LCFI379-LCFI378
	.long L$set$524
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$525,LCFI380-LCFI379
	.long L$set$525
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$526,LCFI381-LCFI380
	.long L$set$526
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$527,LCFI382-LCFI381
	.long L$set$527
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$528,LCFI383-LCFI382
	.long L$set$528
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$529,LCFI384-LCFI383
	.long L$set$529
	.byte	0xb
	.align 3
LEFDE143:
LSFDE145:
	.set L$set$530,LEFDE145-LASFDE145
	.long L$set$530
LASFDE145:
	.long	LASFDE145-EH_frame1
	.quad	LFB941-.
	.set L$set$531,LFE941-LFB941
	.quad L$set$531
	.byte	0
	.align 3
LEFDE145:
LSFDE147:
	.set L$set$532,LEFDE147-LASFDE147
	.long L$set$532
LASFDE147:
	.long	LASFDE147-EH_frame1
	.quad	LFB942-.
	.set L$set$533,LFE942-LFB942
	.quad L$set$533
	.byte	0
	.byte	0x4
	.set L$set$534,LCFI385-LFB942
	.long L$set$534
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$535,LCFI386-LCFI385
	.long L$set$535
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$536,LCFI387-LCFI386
	.long L$set$536
	.byte	0xb
	.byte	0x4
	.set L$set$537,LCFI388-LCFI387
	.long L$set$537
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$538,LCFI389-LCFI388
	.long L$set$538
	.byte	0xb
	.byte	0x4
	.set L$set$539,LCFI390-LCFI389
	.long L$set$539
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.align 3
LEFDE147:
LSFDE149:
	.set L$set$540,LEFDE149-LASFDE149
	.long L$set$540
LASFDE149:
	.long	LASFDE149-EH_frame1
	.quad	LFB961-.
	.set L$set$541,LFE961-LFB961
	.quad L$set$541
	.byte	0
	.byte	0x4
	.set L$set$542,LCFI391-LFB961
	.long L$set$542
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$543,LCFI392-LCFI391
	.long L$set$543
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$544,LCFI393-LCFI392
	.long L$set$544
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$545,LCFI394-LCFI393
	.long L$set$545
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$546,LCFI395-LCFI394
	.long L$set$546
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$547,LCFI396-LCFI395
	.long L$set$547
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$548,LCFI397-LCFI396
	.long L$set$548
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.align 3
LEFDE149:
LSFDE151:
	.set L$set$549,LEFDE151-LASFDE151
	.long L$set$549
LASFDE151:
	.long	LASFDE151-EH_frame1
	.quad	LFB962-.
	.set L$set$550,LFE962-LFB962
	.quad L$set$550
	.byte	0
	.byte	0x4
	.set L$set$551,LCFI398-LFB962
	.long L$set$551
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$552,LCFI399-LCFI398
	.long L$set$552
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$553,LCFI400-LCFI399
	.long L$set$553
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$554,LCFI401-LCFI400
	.long L$set$554
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$555,LCFI402-LCFI401
	.long L$set$555
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$556,LCFI403-LCFI402
	.long L$set$556
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$557,LCFI404-LCFI403
	.long L$set$557
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$558,LCFI405-LCFI404
	.long L$set$558
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$559,LCFI406-LCFI405
	.long L$set$559
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$560,LCFI407-LCFI406
	.long L$set$560
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$561,LCFI408-LCFI407
	.long L$set$561
	.byte	0xb
	.byte	0x4
	.set L$set$562,LCFI409-LCFI408
	.long L$set$562
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$563,LCFI410-LCFI409
	.long L$set$563
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$564,LCFI411-LCFI410
	.long L$set$564
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$565,LCFI412-LCFI411
	.long L$set$565
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$566,LCFI413-LCFI412
	.long L$set$566
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE151:
LSFDE153:
	.set L$set$567,LEFDE153-LASFDE153
	.long L$set$567
LASFDE153:
	.long	LASFDE153-EH_frame1
	.quad	LFB967-.
	.set L$set$568,LFE967-LFB967
	.quad L$set$568
	.byte	0
	.byte	0x4
	.set L$set$569,LCFI414-LFB967
	.long L$set$569
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$570,LCFI415-LCFI414
	.long L$set$570
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$571,LCFI416-LCFI415
	.long L$set$571
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$572,LCFI417-LCFI416
	.long L$set$572
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$573,LCFI418-LCFI417
	.long L$set$573
	.byte	0xa
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$574,LCFI419-LCFI418
	.long L$set$574
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$575,LCFI420-LCFI419
	.long L$set$575
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$576,LCFI421-LCFI420
	.long L$set$576
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$577,LCFI422-LCFI421
	.long L$set$577
	.byte	0xb
	.align 3
LEFDE153:
LSFDE155:
	.set L$set$578,LEFDE155-LASFDE155
	.long L$set$578
LASFDE155:
	.long	LASFDE155-EH_frame1
	.quad	LFB968-.
	.set L$set$579,LFE968-LFB968
	.quad L$set$579
	.byte	0
	.byte	0x4
	.set L$set$580,LCFI423-LFB968
	.long L$set$580
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$581,LCFI424-LCFI423
	.long L$set$581
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$582,LCFI425-LCFI424
	.long L$set$582
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$583,LCFI426-LCFI425
	.long L$set$583
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$584,LCFI427-LCFI426
	.long L$set$584
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$585,LCFI428-LCFI427
	.long L$set$585
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$586,LCFI429-LCFI428
	.long L$set$586
	.byte	0xb
	.byte	0x4
	.set L$set$587,LCFI430-LCFI429
	.long L$set$587
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$588,LCFI431-LCFI430
	.long L$set$588
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$589,LCFI432-LCFI431
	.long L$set$589
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$590,LCFI433-LCFI432
	.long L$set$590
	.byte	0xb
	.byte	0x4
	.set L$set$591,LCFI434-LCFI433
	.long L$set$591
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$592,LCFI435-LCFI434
	.long L$set$592
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$593,LCFI436-LCFI435
	.long L$set$593
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$594,LCFI437-LCFI436
	.long L$set$594
	.byte	0xb
	.byte	0x4
	.set L$set$595,LCFI438-LCFI437
	.long L$set$595
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$596,LCFI439-LCFI438
	.long L$set$596
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$597,LCFI440-LCFI439
	.long L$set$597
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$598,LCFI441-LCFI440
	.long L$set$598
	.byte	0xb
	.align 3
LEFDE155:
LSFDE157:
	.set L$set$599,LEFDE157-LASFDE157
	.long L$set$599
LASFDE157:
	.long	LASFDE157-EH_frame1
	.quad	LFB965-.
	.set L$set$600,LFE965-LFB965
	.quad L$set$600
	.byte	0
	.byte	0x4
	.set L$set$601,LCFI442-LFB965
	.long L$set$601
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$602,LCFI443-LCFI442
	.long L$set$602
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$603,LCFI444-LCFI443
	.long L$set$603
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$604,LCFI445-LCFI444
	.long L$set$604
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$605,LCFI446-LCFI445
	.long L$set$605
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$606,LCFI447-LCFI446
	.long L$set$606
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$607,LCFI448-LCFI447
	.long L$set$607
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$608,LCFI449-LCFI448
	.long L$set$608
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$609,LCFI450-LCFI449
	.long L$set$609
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$610,LCFI451-LCFI450
	.long L$set$610
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$611,LCFI452-LCFI451
	.long L$set$611
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$612,LCFI453-LCFI452
	.long L$set$612
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$613,LCFI454-LCFI453
	.long L$set$613
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$614,LCFI455-LCFI454
	.long L$set$614
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$615,LCFI456-LCFI455
	.long L$set$615
	.byte	0xb
	.byte	0x4
	.set L$set$616,LCFI457-LCFI456
	.long L$set$616
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$617,LCFI458-LCFI457
	.long L$set$617
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$618,LCFI459-LCFI458
	.long L$set$618
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$619,LCFI460-LCFI459
	.long L$set$619
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$620,LCFI461-LCFI460
	.long L$set$620
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$621,LCFI462-LCFI461
	.long L$set$621
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$622,LCFI463-LCFI462
	.long L$set$622
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$623,LCFI464-LCFI463
	.long L$set$623
	.byte	0xb
	.byte	0x4
	.set L$set$624,LCFI465-LCFI464
	.long L$set$624
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$625,LCFI466-LCFI465
	.long L$set$625
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$626,LCFI467-LCFI466
	.long L$set$626
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$627,LCFI468-LCFI467
	.long L$set$627
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$628,LCFI469-LCFI468
	.long L$set$628
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$629,LCFI470-LCFI469
	.long L$set$629
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$630,LCFI471-LCFI470
	.long L$set$630
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$631,LCFI472-LCFI471
	.long L$set$631
	.byte	0xb
	.align 3
LEFDE157:
LSFDE159:
	.set L$set$632,LEFDE159-LASFDE159
	.long L$set$632
LASFDE159:
	.long	LASFDE159-EH_frame1
	.quad	LFB917-.
	.set L$set$633,LFE917-LFB917
	.quad L$set$633
	.byte	0
	.byte	0x4
	.set L$set$634,LCFI473-LFB917
	.long L$set$634
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$635,LCFI474-LCFI473
	.long L$set$635
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$636,LCFI475-LCFI474
	.long L$set$636
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$637,LCFI476-LCFI475
	.long L$set$637
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$638,LCFI477-LCFI476
	.long L$set$638
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$639,LCFI478-LCFI477
	.long L$set$639
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$640,LCFI479-LCFI478
	.long L$set$640
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$641,LCFI480-LCFI479
	.long L$set$641
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$642,LCFI481-LCFI480
	.long L$set$642
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$643,LCFI482-LCFI481
	.long L$set$643
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$644,LCFI483-LCFI482
	.long L$set$644
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$645,LCFI484-LCFI483
	.long L$set$645
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$646,LCFI485-LCFI484
	.long L$set$646
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$647,LCFI486-LCFI485
	.long L$set$647
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$648,LCFI487-LCFI486
	.long L$set$648
	.byte	0xb
	.align 3
LEFDE159:
LSFDE161:
	.set L$set$649,LEFDE161-LASFDE161
	.long L$set$649
LASFDE161:
	.long	LASFDE161-EH_frame1
	.quad	LFB920-.
	.set L$set$650,LFE920-LFB920
	.quad L$set$650
	.byte	0
	.byte	0x4
	.set L$set$651,LCFI488-LFB920
	.long L$set$651
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$652,LCFI489-LCFI488
	.long L$set$652
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$653,LCFI490-LCFI489
	.long L$set$653
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$654,LCFI491-LCFI490
	.long L$set$654
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$655,LCFI492-LCFI491
	.long L$set$655
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$656,LCFI493-LCFI492
	.long L$set$656
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE161:
LSFDE163:
	.set L$set$657,LEFDE163-LASFDE163
	.long L$set$657
LASFDE163:
	.long	LASFDE163-EH_frame1
	.quad	LFB918-.
	.set L$set$658,LFE918-LFB918
	.quad L$set$658
	.byte	0
	.byte	0x4
	.set L$set$659,LCFI494-LFB918
	.long L$set$659
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$660,LCFI495-LCFI494
	.long L$set$660
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$661,LCFI496-LCFI495
	.long L$set$661
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$662,LCFI497-LCFI496
	.long L$set$662
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$663,LCFI498-LCFI497
	.long L$set$663
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$664,LCFI499-LCFI498
	.long L$set$664
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$665,LCFI500-LCFI499
	.long L$set$665
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$666,LCFI501-LCFI500
	.long L$set$666
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$667,LCFI502-LCFI501
	.long L$set$667
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$668,LCFI503-LCFI502
	.long L$set$668
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$669,LCFI504-LCFI503
	.long L$set$669
	.byte	0xb
	.byte	0x4
	.set L$set$670,LCFI505-LCFI504
	.long L$set$670
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$671,LCFI506-LCFI505
	.long L$set$671
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$672,LCFI507-LCFI506
	.long L$set$672
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$673,LCFI508-LCFI507
	.long L$set$673
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$674,LCFI509-LCFI508
	.long L$set$674
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$675,LCFI510-LCFI509
	.long L$set$675
	.byte	0xb
	.align 3
LEFDE163:
LSFDE165:
	.set L$set$676,LEFDE165-LASFDE165
	.long L$set$676
LASFDE165:
	.long	LASFDE165-EH_frame1
	.quad	LFB919-.
	.set L$set$677,LFE919-LFB919
	.quad L$set$677
	.byte	0
	.byte	0x4
	.set L$set$678,LCFI511-LFB919
	.long L$set$678
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$679,LCFI512-LCFI511
	.long L$set$679
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$680,LCFI513-LCFI512
	.long L$set$680
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$681,LCFI514-LCFI513
	.long L$set$681
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$682,LCFI515-LCFI514
	.long L$set$682
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$683,LCFI516-LCFI515
	.long L$set$683
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$684,LCFI517-LCFI516
	.long L$set$684
	.byte	0xb
	.align 3
LEFDE165:
LSFDE167:
	.set L$set$685,LEFDE167-LASFDE167
	.long L$set$685
LASFDE167:
	.long	LASFDE167-EH_frame1
	.quad	LFB995-.
	.set L$set$686,LFE995-LFB995
	.quad L$set$686
	.byte	0
	.align 3
LEFDE167:
LSFDE169:
	.set L$set$687,LEFDE169-LASFDE169
	.long L$set$687
LASFDE169:
	.long	LASFDE169-EH_frame1
	.quad	LFB993-.
	.set L$set$688,LFE993-LFB993
	.quad L$set$688
	.byte	0
	.byte	0x4
	.set L$set$689,LCFI518-LFB993
	.long L$set$689
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$690,LCFI519-LCFI518
	.long L$set$690
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$691,LCFI520-LCFI519
	.long L$set$691
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x4
	.set L$set$692,LCFI521-LCFI520
	.long L$set$692
	.byte	0x8d
	.byte	0x5
	.byte	0x4
	.set L$set$693,LCFI522-LCFI521
	.long L$set$693
	.byte	0x8c
	.byte	0x6
	.byte	0x4
	.set L$set$694,LCFI523-LCFI522
	.long L$set$694
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$695,LCFI524-LCFI523
	.long L$set$695
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$696,LCFI525-LCFI524
	.long L$set$696
	.byte	0xb
	.align 3
LEFDE169:
LSFDE171:
	.set L$set$697,LEFDE171-LASFDE171
	.long L$set$697
LASFDE171:
	.long	LASFDE171-EH_frame1
	.quad	LFB969-.
	.set L$set$698,LFE969-LFB969
	.quad L$set$698
	.byte	0
	.byte	0x4
	.set L$set$699,LCFI526-LFB969
	.long L$set$699
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$700,LCFI527-LCFI526
	.long L$set$700
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$701,LCFI528-LCFI527
	.long L$set$701
	.byte	0x8f
	.byte	0x3
	.byte	0x4
	.set L$set$702,LCFI529-LCFI528
	.long L$set$702
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$703,LCFI530-LCFI529
	.long L$set$703
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$704,LCFI531-LCFI530
	.long L$set$704
	.byte	0xb
	.align 3
LEFDE171:
LSFDE173:
	.set L$set$705,LEFDE173-LASFDE173
	.long L$set$705
LASFDE173:
	.long	LASFDE173-EH_frame1
	.quad	LFB923-.
	.set L$set$706,LFE923-LFB923
	.quad L$set$706
	.byte	0
	.byte	0x4
	.set L$set$707,LCFI532-LFB923
	.long L$set$707
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$708,LCFI533-LCFI532
	.long L$set$708
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$709,LCFI534-LCFI533
	.long L$set$709
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$710,LCFI535-LCFI534
	.long L$set$710
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$711,LCFI536-LCFI535
	.long L$set$711
	.byte	0xb
	.align 3
LEFDE173:
LSFDE175:
	.set L$set$712,LEFDE175-LASFDE175
	.long L$set$712
LASFDE175:
	.long	LASFDE175-EH_frame1
	.quad	LFB996-.
	.set L$set$713,LFE996-LFB996
	.quad L$set$713
	.byte	0
	.byte	0x4
	.set L$set$714,LCFI537-LFB996
	.long L$set$714
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE175:
LSFDE177:
	.set L$set$715,LEFDE177-LASFDE177
	.long L$set$715
LASFDE177:
	.long	LASFDE177-EH_frame1
	.quad	LFB997-.
	.set L$set$716,LFE997-LFB997
	.quad L$set$716
	.byte	0
	.byte	0x4
	.set L$set$717,LCFI538-LFB997
	.long L$set$717
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$718,LCFI539-LCFI538
	.long L$set$718
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$719,LCFI540-LCFI539
	.long L$set$719
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$720,LCFI541-LCFI540
	.long L$set$720
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$721,LCFI542-LCFI541
	.long L$set$721
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$722,LCFI543-LCFI542
	.long L$set$722
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$723,LCFI544-LCFI543
	.long L$set$723
	.byte	0xb
	.align 3
LEFDE177:
LSFDE179:
	.set L$set$724,LEFDE179-LASFDE179
	.long L$set$724
LASFDE179:
	.long	LASFDE179-EH_frame1
	.quad	LFB998-.
	.set L$set$725,LFE998-LFB998
	.quad L$set$725
	.byte	0
	.byte	0x4
	.set L$set$726,LCFI545-LFB998
	.long L$set$726
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$727,LCFI546-LCFI545
	.long L$set$727
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$728,LCFI547-LCFI546
	.long L$set$728
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$729,LCFI548-LCFI547
	.long L$set$729
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$730,LCFI549-LCFI548
	.long L$set$730
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$731,LCFI550-LCFI549
	.long L$set$731
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$732,LCFI551-LCFI550
	.long L$set$732
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$733,LCFI552-LCFI551
	.long L$set$733
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$734,LCFI553-LCFI552
	.long L$set$734
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$735,LCFI554-LCFI553
	.long L$set$735
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$736,LCFI555-LCFI554
	.long L$set$736
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$737,LCFI556-LCFI555
	.long L$set$737
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$738,LCFI557-LCFI556
	.long L$set$738
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$739,LCFI558-LCFI557
	.long L$set$739
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$740,LCFI559-LCFI558
	.long L$set$740
	.byte	0xb
	.byte	0x4
	.set L$set$741,LCFI560-LCFI559
	.long L$set$741
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$742,LCFI561-LCFI560
	.long L$set$742
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$743,LCFI562-LCFI561
	.long L$set$743
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$744,LCFI563-LCFI562
	.long L$set$744
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$745,LCFI564-LCFI563
	.long L$set$745
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$746,LCFI565-LCFI564
	.long L$set$746
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$747,LCFI566-LCFI565
	.long L$set$747
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$748,LCFI567-LCFI566
	.long L$set$748
	.byte	0xb
	.align 3
LEFDE179:
LSFDE181:
	.set L$set$749,LEFDE181-LASFDE181
	.long L$set$749
LASFDE181:
	.long	LASFDE181-EH_frame1
	.quad	LFB999-.
	.set L$set$750,LFE999-LFB999
	.quad L$set$750
	.byte	0
	.byte	0x4
	.set L$set$751,LCFI568-LFB999
	.long L$set$751
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$752,LCFI569-LCFI568
	.long L$set$752
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$753,LCFI570-LCFI569
	.long L$set$753
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$754,LCFI571-LCFI570
	.long L$set$754
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$755,LCFI572-LCFI571
	.long L$set$755
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$756,LCFI573-LCFI572
	.long L$set$756
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$757,LCFI574-LCFI573
	.long L$set$757
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$758,LCFI575-LCFI574
	.long L$set$758
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$759,LCFI576-LCFI575
	.long L$set$759
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$760,LCFI577-LCFI576
	.long L$set$760
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$761,LCFI578-LCFI577
	.long L$set$761
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$762,LCFI579-LCFI578
	.long L$set$762
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$763,LCFI580-LCFI579
	.long L$set$763
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$764,LCFI581-LCFI580
	.long L$set$764
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$765,LCFI582-LCFI581
	.long L$set$765
	.byte	0xb
	.byte	0x4
	.set L$set$766,LCFI583-LCFI582
	.long L$set$766
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$767,LCFI584-LCFI583
	.long L$set$767
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$768,LCFI585-LCFI584
	.long L$set$768
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$769,LCFI586-LCFI585
	.long L$set$769
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$770,LCFI587-LCFI586
	.long L$set$770
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$771,LCFI588-LCFI587
	.long L$set$771
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$772,LCFI589-LCFI588
	.long L$set$772
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$773,LCFI590-LCFI589
	.long L$set$773
	.byte	0xb
	.align 3
LEFDE181:
LSFDE183:
	.set L$set$774,LEFDE183-LASFDE183
	.long L$set$774
LASFDE183:
	.long	LASFDE183-EH_frame1
	.quad	LFB1000-.
	.set L$set$775,LFE1000-LFB1000
	.quad L$set$775
	.byte	0
	.byte	0x4
	.set L$set$776,LCFI591-LFB1000
	.long L$set$776
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$777,LCFI592-LCFI591
	.long L$set$777
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$778,LCFI593-LCFI592
	.long L$set$778
	.byte	0xb
	.byte	0x4
	.set L$set$779,LCFI594-LCFI593
	.long L$set$779
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.align 3
LEFDE183:
LSFDE185:
	.set L$set$780,LEFDE185-LASFDE185
	.long L$set$780
LASFDE185:
	.long	LASFDE185-EH_frame1
	.quad	LFB1001-.
	.set L$set$781,LFE1001-LFB1001
	.quad L$set$781
	.byte	0
	.byte	0x4
	.set L$set$782,LCFI595-LFB1001
	.long L$set$782
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$783,LCFI596-LCFI595
	.long L$set$783
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$784,LCFI597-LCFI596
	.long L$set$784
	.byte	0xb
	.byte	0x4
	.set L$set$785,LCFI598-LCFI597
	.long L$set$785
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.align 3
LEFDE185:
LSFDE187:
	.set L$set$786,LEFDE187-LASFDE187
	.long L$set$786
LASFDE187:
	.long	LASFDE187-EH_frame1
	.quad	LFB1002-.
	.set L$set$787,LFE1002-LFB1002
	.quad L$set$787
	.byte	0
	.byte	0x4
	.set L$set$788,LCFI599-LFB1002
	.long L$set$788
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$789,LCFI600-LCFI599
	.long L$set$789
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$790,LCFI601-LCFI600
	.long L$set$790
	.byte	0xb
	.align 3
LEFDE187:
LSFDE189:
	.set L$set$791,LEFDE189-LASFDE189
	.long L$set$791
LASFDE189:
	.long	LASFDE189-EH_frame1
	.quad	LFB1003-.
	.set L$set$792,LFE1003-LFB1003
	.quad L$set$792
	.byte	0
	.byte	0x4
	.set L$set$793,LCFI602-LFB1003
	.long L$set$793
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$794,LCFI603-LCFI602
	.long L$set$794
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$795,LCFI604-LCFI603
	.long L$set$795
	.byte	0xb
	.align 3
LEFDE189:
LSFDE191:
	.set L$set$796,LEFDE191-LASFDE191
	.long L$set$796
LASFDE191:
	.long	LASFDE191-EH_frame1
	.quad	LFB1004-.
	.set L$set$797,LFE1004-LFB1004
	.quad L$set$797
	.byte	0
	.byte	0x4
	.set L$set$798,LCFI605-LFB1004
	.long L$set$798
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$799,LCFI606-LCFI605
	.long L$set$799
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$800,LCFI607-LCFI606
	.long L$set$800
	.byte	0xb
	.align 3
LEFDE191:
LSFDE193:
	.set L$set$801,LEFDE193-LASFDE193
	.long L$set$801
LASFDE193:
	.long	LASFDE193-EH_frame1
	.quad	LFB1005-.
	.set L$set$802,LFE1005-LFB1005
	.quad L$set$802
	.byte	0
	.align 3
LEFDE193:
LSFDE195:
	.set L$set$803,LEFDE195-LASFDE195
	.long L$set$803
LASFDE195:
	.long	LASFDE195-EH_frame1
	.quad	LFB1006-.
	.set L$set$804,LFE1006-LFB1006
	.quad L$set$804
	.byte	0
	.align 3
LEFDE195:
LSFDE197:
	.set L$set$805,LEFDE197-LASFDE197
	.long L$set$805
LASFDE197:
	.long	LASFDE197-EH_frame1
	.quad	LFB1007-.
	.set L$set$806,LFE1007-LFB1007
	.quad L$set$806
	.byte	0
	.align 3
LEFDE197:
LSFDE199:
	.set L$set$807,LEFDE199-LASFDE199
	.long L$set$807
LASFDE199:
	.long	LASFDE199-EH_frame1
	.quad	LFB1008-.
	.set L$set$808,LFE1008-LFB1008
	.quad L$set$808
	.byte	0
	.align 3
LEFDE199:
LSFDE201:
	.set L$set$809,LEFDE201-LASFDE201
	.long L$set$809
LASFDE201:
	.long	LASFDE201-EH_frame1
	.quad	LFB1009-.
	.set L$set$810,LFE1009-LFB1009
	.quad L$set$810
	.byte	0
	.byte	0x4
	.set L$set$811,LCFI608-LFB1009
	.long L$set$811
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$812,LCFI609-LCFI608
	.long L$set$812
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$813,LCFI610-LCFI609
	.long L$set$813
	.byte	0xc3
	.byte	0x4
	.set L$set$814,LCFI611-LCFI610
	.long L$set$814
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$815,LCFI612-LCFI611
	.long L$set$815
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.align 3
LEFDE201:
LSFDE203:
	.set L$set$816,LEFDE203-LASFDE203
	.long L$set$816
LASFDE203:
	.long	LASFDE203-EH_frame1
	.quad	LFB1010-.
	.set L$set$817,LFE1010-LFB1010
	.quad L$set$817
	.byte	0
	.byte	0x4
	.set L$set$818,LCFI613-LFB1010
	.long L$set$818
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$819,LCFI614-LCFI613
	.long L$set$819
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$820,LCFI615-LCFI614
	.long L$set$820
	.byte	0xc3
	.byte	0x4
	.set L$set$821,LCFI616-LCFI615
	.long L$set$821
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.align 3
LEFDE203:
LSFDE205:
	.set L$set$822,LEFDE205-LASFDE205
	.long L$set$822
LASFDE205:
	.long	LASFDE205-EH_frame1
	.quad	LFB1011-.
	.set L$set$823,LFE1011-LFB1011
	.quad L$set$823
	.byte	0
	.byte	0x4
	.set L$set$824,LCFI617-LFB1011
	.long L$set$824
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$825,LCFI618-LCFI617
	.long L$set$825
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$826,LCFI619-LCFI618
	.long L$set$826
	.byte	0xb
	.align 3
LEFDE205:
LSFDE207:
	.set L$set$827,LEFDE207-LASFDE207
	.long L$set$827
LASFDE207:
	.long	LASFDE207-EH_frame1
	.quad	LFB1012-.
	.set L$set$828,LFE1012-LFB1012
	.quad L$set$828
	.byte	0
	.byte	0x4
	.set L$set$829,LCFI620-LFB1012
	.long L$set$829
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$830,LCFI621-LCFI620
	.long L$set$830
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$831,LCFI622-LCFI621
	.long L$set$831
	.byte	0xb
	.align 3
LEFDE207:
LSFDE209:
	.set L$set$832,LEFDE209-LASFDE209
	.long L$set$832
LASFDE209:
	.long	LASFDE209-EH_frame1
	.quad	LFB1013-.
	.set L$set$833,LFE1013-LFB1013
	.quad L$set$833
	.byte	0
	.byte	0x4
	.set L$set$834,LCFI623-LFB1013
	.long L$set$834
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$835,LCFI624-LCFI623
	.long L$set$835
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$836,LCFI625-LCFI624
	.long L$set$836
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$837,LCFI626-LCFI625
	.long L$set$837
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$838,LCFI627-LCFI626
	.long L$set$838
	.byte	0xb
	.align 3
LEFDE209:
LSFDE211:
	.set L$set$839,LEFDE211-LASFDE211
	.long L$set$839
LASFDE211:
	.long	LASFDE211-EH_frame1
	.quad	LFB1014-.
	.set L$set$840,LFE1014-LFB1014
	.quad L$set$840
	.byte	0
	.align 3
LEFDE211:
LSFDE213:
	.set L$set$841,LEFDE213-LASFDE213
	.long L$set$841
LASFDE213:
	.long	LASFDE213-EH_frame1
	.quad	LFB1015-.
	.set L$set$842,LFE1015-LFB1015
	.quad L$set$842
	.byte	0
	.align 3
LEFDE213:
LSFDE215:
	.set L$set$843,LEFDE215-LASFDE215
	.long L$set$843
LASFDE215:
	.long	LASFDE215-EH_frame1
	.quad	LFB1016-.
	.set L$set$844,LFE1016-LFB1016
	.quad L$set$844
	.byte	0
	.align 3
LEFDE215:
LSFDE217:
	.set L$set$845,LEFDE217-LASFDE217
	.long L$set$845
LASFDE217:
	.long	LASFDE217-EH_frame1
	.quad	LFB1017-.
	.set L$set$846,LFE1017-LFB1017
	.quad L$set$846
	.byte	0
	.byte	0x4
	.set L$set$847,LCFI628-LFB1017
	.long L$set$847
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$848,LCFI629-LCFI628
	.long L$set$848
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$849,LCFI630-LCFI629
	.long L$set$849
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$850,LCFI631-LCFI630
	.long L$set$850
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$851,LCFI632-LCFI631
	.long L$set$851
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$852,LCFI633-LCFI632
	.long L$set$852
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$853,LCFI634-LCFI633
	.long L$set$853
	.byte	0xb
	.align 3
LEFDE217:
LSFDE219:
	.set L$set$854,LEFDE219-LASFDE219
	.long L$set$854
LASFDE219:
	.long	LASFDE219-EH_frame1
	.quad	LFB1018-.
	.set L$set$855,LFE1018-LFB1018
	.quad L$set$855
	.byte	0
	.byte	0x4
	.set L$set$856,LCFI635-LFB1018
	.long L$set$856
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$857,LCFI636-LCFI635
	.long L$set$857
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$858,LCFI637-LCFI636
	.long L$set$858
	.byte	0x8f
	.byte	0x3
	.byte	0x4
	.set L$set$859,LCFI638-LCFI637
	.long L$set$859
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$860,LCFI639-LCFI638
	.long L$set$860
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.set L$set$861,LCFI640-LCFI639
	.long L$set$861
	.byte	0xb
	.align 3
LEFDE219:
LSFDE221:
	.set L$set$862,LEFDE221-LASFDE221
	.long L$set$862
LASFDE221:
	.long	LASFDE221-EH_frame1
	.quad	LFB1019-.
	.set L$set$863,LFE1019-LFB1019
	.quad L$set$863
	.byte	0
	.byte	0x4
	.set L$set$864,LCFI641-LFB1019
	.long L$set$864
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$865,LCFI642-LCFI641
	.long L$set$865
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$866,LCFI643-LCFI642
	.long L$set$866
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$867,LCFI644-LCFI643
	.long L$set$867
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$868,LCFI645-LCFI644
	.long L$set$868
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$869,LCFI646-LCFI645
	.long L$set$869
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$870,LCFI647-LCFI646
	.long L$set$870
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$871,LCFI648-LCFI647
	.long L$set$871
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$872,LCFI649-LCFI648
	.long L$set$872
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$873,LCFI650-LCFI649
	.long L$set$873
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$874,LCFI651-LCFI650
	.long L$set$874
	.byte	0xb
	.align 3
LEFDE221:
LSFDE223:
	.set L$set$875,LEFDE223-LASFDE223
	.long L$set$875
LASFDE223:
	.long	LASFDE223-EH_frame1
	.quad	LFB1020-.
	.set L$set$876,LFE1020-LFB1020
	.quad L$set$876
	.byte	0
	.align 3
LEFDE223:
LSFDE225:
	.set L$set$877,LEFDE225-LASFDE225
	.long L$set$877
LASFDE225:
	.long	LASFDE225-EH_frame1
	.quad	LFB1021-.
	.set L$set$878,LFE1021-LFB1021
	.quad L$set$878
	.byte	0
	.byte	0x4
	.set L$set$879,LCFI652-LFB1021
	.long L$set$879
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$880,LCFI653-LCFI652
	.long L$set$880
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$881,LCFI654-LCFI653
	.long L$set$881
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$882,LCFI655-LCFI654
	.long L$set$882
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$883,LCFI656-LCFI655
	.long L$set$883
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$884,LCFI657-LCFI656
	.long L$set$884
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$885,LCFI658-LCFI657
	.long L$set$885
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.set L$set$886,LCFI659-LCFI658
	.long L$set$886
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$887,LCFI660-LCFI659
	.long L$set$887
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$888,LCFI661-LCFI660
	.long L$set$888
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$889,LCFI662-LCFI661
	.long L$set$889
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$890,LCFI663-LCFI662
	.long L$set$890
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$891,LCFI664-LCFI663
	.long L$set$891
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$892,LCFI665-LCFI664
	.long L$set$892
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$893,LCFI666-LCFI665
	.long L$set$893
	.byte	0xb
	.align 3
LEFDE225:
LSFDE227:
	.set L$set$894,LEFDE227-LASFDE227
	.long L$set$894
LASFDE227:
	.long	LASFDE227-EH_frame1
	.quad	LFB1023-.
	.set L$set$895,LFE1023-LFB1023
	.quad L$set$895
	.byte	0
	.byte	0x4
	.set L$set$896,LCFI667-LFB1023
	.long L$set$896
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$897,LCFI668-LCFI667
	.long L$set$897
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$898,LCFI669-LCFI668
	.long L$set$898
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$899,LCFI670-LCFI669
	.long L$set$899
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$900,LCFI671-LCFI670
	.long L$set$900
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$901,LCFI672-LCFI671
	.long L$set$901
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE227:
LSFDE229:
	.set L$set$902,LEFDE229-LASFDE229
	.long L$set$902
LASFDE229:
	.long	LASFDE229-EH_frame1
	.quad	LFB1024-.
	.set L$set$903,LFE1024-LFB1024
	.quad L$set$903
	.byte	0
	.byte	0x4
	.set L$set$904,LCFI673-LFB1024
	.long L$set$904
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$905,LCFI674-LCFI673
	.long L$set$905
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$906,LCFI675-LCFI674
	.long L$set$906
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$907,LCFI676-LCFI675
	.long L$set$907
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$908,LCFI677-LCFI676
	.long L$set$908
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$909,LCFI678-LCFI677
	.long L$set$909
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$910,LCFI679-LCFI678
	.long L$set$910
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$911,LCFI680-LCFI679
	.long L$set$911
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$912,LCFI681-LCFI680
	.long L$set$912
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$913,LCFI682-LCFI681
	.long L$set$913
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE229:
LSFDE231:
	.set L$set$914,LEFDE231-LASFDE231
	.long L$set$914
LASFDE231:
	.long	LASFDE231-EH_frame1
	.quad	LFB1026-.
	.set L$set$915,LFE1026-LFB1026
	.quad L$set$915
	.byte	0
	.byte	0x4
	.set L$set$916,LCFI683-LFB1026
	.long L$set$916
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$917,LCFI684-LCFI683
	.long L$set$917
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$918,LCFI685-LCFI684
	.long L$set$918
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$919,LCFI686-LCFI685
	.long L$set$919
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$920,LCFI687-LCFI686
	.long L$set$920
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$921,LCFI688-LCFI687
	.long L$set$921
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$922,LCFI689-LCFI688
	.long L$set$922
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$923,LCFI690-LCFI689
	.long L$set$923
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$924,LCFI691-LCFI690
	.long L$set$924
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$925,LCFI692-LCFI691
	.long L$set$925
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$926,LCFI693-LCFI692
	.long L$set$926
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$927,LCFI694-LCFI693
	.long L$set$927
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$928,LCFI695-LCFI694
	.long L$set$928
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$929,LCFI696-LCFI695
	.long L$set$929
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$930,LCFI697-LCFI696
	.long L$set$930
	.byte	0xb
	.align 3
LEFDE231:
LSFDE233:
	.set L$set$931,LEFDE233-LASFDE233
	.long L$set$931
LASFDE233:
	.long	LASFDE233-EH_frame1
	.quad	LFB1027-.
	.set L$set$932,LFE1027-LFB1027
	.quad L$set$932
	.byte	0
	.byte	0x4
	.set L$set$933,LCFI698-LFB1027
	.long L$set$933
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$934,LCFI699-LCFI698
	.long L$set$934
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$935,LCFI700-LCFI699
	.long L$set$935
	.byte	0xc3
	.align 3
LEFDE233:
LSFDE235:
	.set L$set$936,LEFDE235-LASFDE235
	.long L$set$936
LASFDE235:
	.long	LASFDE235-EH_frame1
	.quad	LFB1028-.
	.set L$set$937,LFE1028-LFB1028
	.quad L$set$937
	.byte	0
	.byte	0x4
	.set L$set$938,LCFI701-LFB1028
	.long L$set$938
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$939,LCFI702-LCFI701
	.long L$set$939
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE235:
LSFDE237:
	.set L$set$940,LEFDE237-LASFDE237
	.long L$set$940
LASFDE237:
	.long	LASFDE237-EH_frame1
	.quad	LFB1030-.
	.set L$set$941,LFE1030-LFB1030
	.quad L$set$941
	.byte	0
	.byte	0x4
	.set L$set$942,LCFI703-LFB1030
	.long L$set$942
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$943,LCFI704-LCFI703
	.long L$set$943
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$944,LCFI705-LCFI704
	.long L$set$944
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$945,LCFI706-LCFI705
	.long L$set$945
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$946,LCFI707-LCFI706
	.long L$set$946
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$947,LCFI708-LCFI707
	.long L$set$947
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$948,LCFI709-LCFI708
	.long L$set$948
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.set L$set$949,LCFI710-LCFI709
	.long L$set$949
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$950,LCFI711-LCFI710
	.long L$set$950
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$951,LCFI712-LCFI711
	.long L$set$951
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$952,LCFI713-LCFI712
	.long L$set$952
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$953,LCFI714-LCFI713
	.long L$set$953
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$954,LCFI715-LCFI714
	.long L$set$954
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$955,LCFI716-LCFI715
	.long L$set$955
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$956,LCFI717-LCFI716
	.long L$set$956
	.byte	0xb
	.byte	0x4
	.set L$set$957,LCFI718-LCFI717
	.long L$set$957
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$958,LCFI719-LCFI718
	.long L$set$958
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$959,LCFI720-LCFI719
	.long L$set$959
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$960,LCFI721-LCFI720
	.long L$set$960
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$961,LCFI722-LCFI721
	.long L$set$961
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$962,LCFI723-LCFI722
	.long L$set$962
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$963,LCFI724-LCFI723
	.long L$set$963
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$964,LCFI725-LCFI724
	.long L$set$964
	.byte	0xb
	.align 3
LEFDE237:
LSFDE239:
	.set L$set$965,LEFDE239-LASFDE239
	.long L$set$965
LASFDE239:
	.long	LASFDE239-EH_frame1
	.quad	LFB1031-.
	.set L$set$966,LFE1031-LFB1031
	.quad L$set$966
	.byte	0
	.byte	0x4
	.set L$set$967,LCFI726-LFB1031
	.long L$set$967
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$968,LCFI727-LCFI726
	.long L$set$968
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$969,LCFI728-LCFI727
	.long L$set$969
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$970,LCFI729-LCFI728
	.long L$set$970
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$971,LCFI730-LCFI729
	.long L$set$971
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$972,LCFI731-LCFI730
	.long L$set$972
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$973,LCFI732-LCFI731
	.long L$set$973
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$974,LCFI733-LCFI732
	.long L$set$974
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$975,LCFI734-LCFI733
	.long L$set$975
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$976,LCFI735-LCFI734
	.long L$set$976
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE239:
	.subsections_via_symbols
