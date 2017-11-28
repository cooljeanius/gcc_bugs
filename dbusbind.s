	.text
Ltext0:
	.align 2,0x90
_xd_symbol_to_dbus_type:
LFB253:
LM1:
LVL0:
	call	___x86.get_pc_thunk.cx
L1$pb:
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
LM2:
	cmpl	%eax, _QCdbus_type_byte-L1$pb(%ecx)
	je	L3
	movl	%eax, %edx
LVL1:
LM3:
	movl	$98, %eax
LVL2:
	cmpl	%edx, _QCdbus_type_boolean-L1$pb(%ecx)
	je	L1
LVL3:
LM4:
	movl	$110, %eax
	cmpl	%edx, _QCdbus_type_int16-L1$pb(%ecx)
	je	L1
LVL4:
LM5:
	movl	$113, %eax
	cmpl	%edx, _QCdbus_type_uint16-L1$pb(%ecx)
	je	L1
LVL5:
LM6:
	movl	$105, %eax
	cmpl	%edx, _QCdbus_type_int32-L1$pb(%ecx)
	je	L1
LVL6:
LM7:
	movl	$117, %eax
	cmpl	%edx, _QCdbus_type_uint32-L1$pb(%ecx)
	je	L1
LVL7:
LM8:
	movl	$120, %eax
	cmpl	%edx, _QCdbus_type_int64-L1$pb(%ecx)
	je	L1
LVL8:
LM9:
	movl	$116, %eax
	cmpl	%edx, _QCdbus_type_uint64-L1$pb(%ecx)
	je	L1
LVL9:
LM10:
	movl	$100, %eax
	cmpl	%edx, _QCdbus_type_double-L1$pb(%ecx)
	je	L1
LVL10:
LM11:
	movl	$115, %eax
	cmpl	%edx, _QCdbus_type_string-L1$pb(%ecx)
	je	L1
LVL11:
LM12:
	movl	$111, %eax
	cmpl	%edx, _QCdbus_type_object_path-L1$pb(%ecx)
	je	L1
LVL12:
LM13:
	movl	$103, %eax
	cmpl	_QCdbus_type_signature-L1$pb(%ecx), %edx
	je	L1
LVL13:
LM14:
	movl	$104, %eax
	cmpl	%edx, _QCdbus_type_unix_fd-L1$pb(%ecx)
	je	L1
LVL14:
LM15:
	movl	$97, %eax
	cmpl	%edx, _QCdbus_type_array-L1$pb(%ecx)
	je	L1
LVL15:
LM16:
	movl	$118, %eax
	cmpl	_QCdbus_type_variant-L1$pb(%ecx), %edx
	je	L1
LVL16:
LM17:
	movl	$114, %eax
	cmpl	%edx, _QCdbus_type_struct-L1$pb(%ecx)
	je	L1
LVL17:
LM18:
	cmpl	%edx, _QCdbus_type_dict_entry-L1$pb(%ecx)
	movl	$101, %eax
	movl	$0, %edx
LVL18:
	cmovne	%edx, %eax
LVL19:
	.align 2,0x90
L1:
LM19:
	popl	%ebp
LCFI2:
	ret
LVL20:
	.align 2,0x90
L3:
LCFI3:
LM20:
	movl	$121, %eax
LVL21:
LM21:
	popl	%ebp
LCFI4:
	ret
LFE253:
	.cstring
LC0:
	.ascii "fd %d, write %d, enabled %d\0"
LC1:
	.ascii "%s: %s\0"
	.text
	.align 2,0x90
_xd_add_watch:
LFB264:
LM22:
LVL22:
	pushl	%ebp
LCFI5:
	movl	%esp, %ebp
LCFI6:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	orl	$0, -13340(%esp)
LCFI7:
	call	___x86.get_pc_thunk.bx
L2$pb:
	subl	$1064, %esp
LM23:
	movl	8(%ebp), %esi
LM24:
	pushl	%esi
	call	_dbus_watch_get_flags
LVL23:
LBB13891:
LBB13892:
LM25:
	movl	%esi, (%esp)
LBE13892:
LBE13891:
LM26:
	movl	%eax, -1052(%ebp)
LVL24:
LBB13896:
LBB13893:
LM27:
	call	_dbus_watch_get_unix_fd
LVL25:
LM28:
	addl	$16, %esp
	cmpl	$-1, %eax
	je	L41
	movl	%eax, %edi
LVL26:
LBE13893:
LBE13896:
LM29:
	movl	L_globals$non_lazy_ptr-L2$pb(%ebx), %edx
	movl	L_Qnil$non_lazy_ptr-L2$pb(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 220(%edx)
	jne	L29
	.align 2,0x90
L30:
LM30:
	subl	$12, %esp
	pushl	%esi
	call	_dbus_watch_get_enabled
LVL27:
	addl	$16, %esp
	testl	%eax, %eax
	je	L28
LM31:
	testb	$2, -1052(%ebp)
	jne	L42
	.align 2,0x90
L27:
LM32:
	testb	$1, -1052(%ebp)
	jne	L43
	.align 2,0x90
L28:
LM33:
	movl	$1, %eax
LM34:
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI8:
	popl	%esi
LCFI9:
	popl	%edi
LCFI10:
	popl	%ebp
LCFI11:
	ret
LVL28:
	.align 2,0x90
L41:
LCFI12:
LBB13897:
LBB13894:
LM35:
	subl	$12, %esp
	pushl	%esi
	call	_dbus_watch_get_socket
LVL29:
LBE13894:
LBE13897:
LM36:
	movl	L_globals$non_lazy_ptr-L2$pb(%ebx), %edx
	addl	$16, %esp
LBB13898:
LBB13895:
LM37:
	movl	%eax, %edi
LVL30:
LBE13895:
LBE13898:
LM38:
	movl	L_Qnil$non_lazy_ptr-L2$pb(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 220(%edx)
	je	L24
	.align 2,0x90
L29:
LBB13899:
	subl	$12, %esp
	pushl	%esi
	call	_dbus_watch_get_enabled
LVL31:
	popl	%edx
	leal	-1048(%ebp), %edx
	popl	%ecx
	pushl	%eax
	movl	-1052(%ebp), %eax
	movl	%edx, -1056(%ebp)
	andl	$2, %eax
	pushl	%eax
	leal	LC0-L2$pb(%ebx), %eax
	pushl	%edi
	pushl	%eax
	pushl	$1024
	pushl	%edx
	call	_snprintf
LVL32:
	movl	-1056(%ebp), %edx
	addl	$28, %esp
	leal	___func__.18091-L2$pb(%ebx), %eax
	pushl	%edx
	pushl	%eax
	leal	LC1-L2$pb(%ebx), %eax
	pushl	%eax
	call	_message
LVL33:
	addl	$16, %esp
	.align 2,0x90
L24:
LBE13899:
LM39:
	xorl	%eax, %eax
LM40:
	cmpl	$-1, %edi
	jne	L30
LM41:
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI13:
	popl	%esi
LCFI14:
	popl	%edi
LCFI15:
	popl	%ebp
LCFI16:
	ret
	.align 2,0x90
L43:
LCFI17:
LM42:
	leal	_xd_read_queued_messages-L2$pb(%ebx), %eax
	subl	$4, %esp
	pushl	12(%ebp)
	pushl	%eax
	pushl	%edi
	call	_add_read_fd
LVL34:
	addl	$16, %esp
LM43:
	movl	$1, %eax
LM44:
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI18:
	popl	%esi
LCFI19:
	popl	%edi
LCFI20:
	popl	%ebp
LCFI21:
	ret
	.align 2,0x90
L42:
LCFI22:
LM45:
	leal	_xd_read_queued_messages-L2$pb(%ebx), %eax
	subl	$4, %esp
	pushl	12(%ebp)
	pushl	%eax
	pushl	%edi
	call	_add_write_fd
LVL35:
	addl	$16, %esp
	jmp	L27
LFE264:
	.align 2,0x90
_xd_read_queued_messages:
LFB273:
LM46:
LVL36:
	pushl	%ebp
LCFI23:
	movl	%esp, %ebp
LCFI24:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	orl	$0, -12316(%esp)
LCFI25:
	call	___x86.get_pc_thunk.ax
L3$pb:
	subl	$28, %esp
	movl	%eax, -32(%ebp)
LM47:
	movl	_xd_registered_buses-L3$pb(%eax), %esi
LVL37:
LM48:
	movl	L_Qnil$non_lazy_ptr-L3$pb(%eax), %eax
	movl	(%eax), %edx
LVL38:
LM49:
	movl	12(%ebp), %eax
	testl	%eax, %eax
	je	L44
LVL39:
LM50:
	cmpl	%edx, %esi
	je	L44
LBB13900:
LBB13901:
LBB13902:
LBB13903:
LBB13904:
LM51:
	movl	%esi, %ecx
LBE13904:
LBE13903:
LBE13902:
LBE13901:
LBE13900:
LM52:
	movl	%edx, %edi
LVL40:
LBB13918:
LBB13916:
LM53:
	movl	%edx, %ebx
LBB13911:
LBB13908:
LBB13905:
LM54:
	andl	$7, %ecx
LVL41:
LBE13905:
LBE13908:
LBE13911:
LM55:
	cmpl	$6, %ecx
	je	L64
LVL42:
	.align 2,0x90
L46:
LBE13916:
LBE13918:
LBB13919:
LBB13920:
LBB13921:
LBB13922:
LBB13923:
LM56:
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%eax, -28(%ebp)
LBE13923:
LBE13922:
LBE13921:
LM57:
	cmpl	$6, -28(%ebp)
	movl	%edx, %eax
	je	L65
LVL43:
	.align 2,0x90
L47:
LBE13920:
LBE13919:
LBB13930:
LBB13931:
LBB13932:
LM58:
	movl	%eax, %ebx
LVL44:
	andl	$7, %ebx
LVL45:
LBE13932:
LBE13931:
LBE13930:
LM59:
	cmpl	$2, %ebx
	je	L66
LVL46:
	.align 2,0x90
L48:
LM60:
	cmpl	$1, %ebx
	jne	L49
LVL47:
LBB13935:
LBB13936:
LBB13937:
LM61:
	leal	-1(%eax), %ebx
	subl	$8, %esp
	pushl	$-1
	pushl	%eax
	addl	$16, %esp
LBE13937:
LBE13936:
LBE13935:
LM62:
	cmpl	%ebx, 12(%ebp)
	cmove	%eax, %edi
LVL48:
	.align 2,0x90
L49:
LBB13938:
LBB13939:
LM63:
	cmpl	$6, %ecx
	je	L50
	.align 2,0x90
L53:
LVL49:
LBE13939:
LBE13938:
LM64:
	cmpl	%edx, %edi
	je	L44
LM65:
	movl	-32(%ebp), %esi
LM66:
	subl	$4, %esp
	pushl	%edi
LM67:
	movl	%esi, %eax
LVL50:
	movb	$1, _xd_in_read_queued_messages-L3$pb(%esi)
LM68:
	addl	$_xd_read_message-L3$pb, %eax
	pushl	%eax
	pushl	_Qdbus_error-L3$pb(%esi)
	call	_internal_catch
LVL51:
	addl	$16, %esp
LM69:
	movb	$0, _xd_in_read_queued_messages-L3$pb(%esi)
LVL52:
	.align 2,0x90
L44:
LM70:
	leal	-12(%ebp), %esp
	popl	%ebx
LCFI26:
	popl	%esi
LCFI27:
	popl	%edi
LCFI28:
	popl	%ebp
LCFI29:
	ret
LVL53:
	.align 2,0x90
L50:
LCFI30:
LBB13943:
LBB13942:
LBB13940:
LBB13941:
LM71:
	movl	-2(%esi), %esi
LVL54:
LBE13941:
LBE13940:
LBE13942:
LBE13943:
LM72:
	cmpl	%edx, %esi
	je	L53
LVL55:
LBB13944:
LBB13917:
LBB13912:
LBB13909:
LBB13906:
LM73:
	movl	%esi, %ecx
LBE13906:
LBE13909:
LBE13912:
LM74:
	movl	%edx, %ebx
LBB13913:
LBB13910:
LBB13907:
LM75:
	andl	$7, %ecx
LVL56:
LBE13907:
LBE13910:
LBE13913:
LM76:
	cmpl	$6, %ecx
	jne	L46
LVL57:
	.align 2,0x90
L64:
LBB13914:
LBB13915:
LM77:
	movl	-6(%esi), %ebx
LVL58:
LBE13915:
LBE13914:
LBE13917:
LBE13944:
LBB13945:
LBB13929:
LBB13926:
LBB13925:
LBB13924:
LM78:
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%eax, -28(%ebp)
LBE13924:
LBE13925:
LBE13926:
LM79:
	cmpl	$6, -28(%ebp)
	movl	%edx, %eax
	jne	L47
LVL59:
	.align 2,0x90
L65:
LBB13927:
LBB13928:
LM80:
	movl	-6(%ebx), %eax
LVL60:
LBE13928:
LBE13927:
LBE13929:
LBE13945:
LBB13946:
LBB13934:
LBB13933:
LM81:
	movl	%eax, %ebx
LVL61:
	andl	$7, %ebx
LVL62:
LBE13933:
LBE13934:
LBE13946:
LM82:
	cmpl	$2, %ebx
	jne	L48
LVL63:
	.align 2,0x90
L66:
LBB13947:
LBB13948:
LBB13949:
LM83:
	leal	-2(%eax), %ebx
	subl	$8, %esp
	pushl	$-2
	pushl	%eax
	addl	$16, %esp
LBE13949:
LBE13948:
LBE13947:
	cmpl	%ebx, 12(%ebp)
	cmove	%eax, %edi
LVL64:
	jmp	L49
LFE273:
	.cstring
LC2:
	.ascii "false\0"
LC3:
	.ascii "true\0"
LC4:
	.ascii "%c %u\0"
LC5:
	.ascii "%c %s\0"
LC6:
	.ascii "%c %d\0"
LC8:
	.ascii "%c %jd\0"
LC11:
	.ascii "%c %f\0"
LC12:
	.ascii "%s\0"
LC13:
	.ascii "DBusType '%c' not supported\0"
