.text

        .align  2
        .globl  _objc_msgSend_Fast
        .private_extern _objc_msgSend_Fast
/* id objc_msgSend_Fast (id, SEL, ...) */
_objc_msgSend_Fast:
        ba 0xFFFEFF00

        .align  2
        .globl  _objc_assign_ivar_Fast
        .private_extern _objc_assign_ivar_Fast
/* id objc_assign_ivar_Fast (id, id, unsigned int) */
_objc_assign_ivar_Fast:
        ba 0xFFFEFEC0
