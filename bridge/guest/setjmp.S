@ setjmp/longjmp for the ARM32 guest (fits bionic's 64-word jmp_buf).
@ Layout: r4-r11, sp, lr (10 words) | d8-d15 (64 bytes) | fpscr
    .syntax unified
    .arm
    .text

    .macro SAVE
    mov     r12, sp
    stmia   r0!, {r4-r11, r12, lr}
    vstmia  r0!, {d8-d15}
    vmrs    r1, fpscr
    str     r1, [r0]
    mov     r0, #0
    bx      lr
    .endm

    .macro RESTORE
    ldmia   r0!, {r4-r11, r12, lr}
    vldmia  r0!, {d8-d15}
    ldr     r2, [r0]
    vmsr    fpscr, r2
    mov     sp, r12
    movs    r0, r1
    moveq   r0, #1
    bx      lr
    .endm

    .global setjmp, _setjmp, sigsetjmp, longjmp, _longjmp, siglongjmp
    .type setjmp, %function
    .type _setjmp, %function
    .type sigsetjmp, %function
    .type longjmp, %function
    .type _longjmp, %function
    .type siglongjmp, %function
setjmp:
_setjmp:
sigsetjmp:
    SAVE
longjmp:
_longjmp:
siglongjmp:
    RESTORE
