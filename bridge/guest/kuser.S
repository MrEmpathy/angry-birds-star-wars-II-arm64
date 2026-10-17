@ ARM Linux "kuser helpers" (copied to guest 0xffff0f60): fixed-address atomics used by old libgcc.
@ Same algorithms as the kernel's entry-armv.S for ARMv7 SMP.
    .syntax unified
    .arm
    .text
base:
__kuser_cmpxchg64:              @ 0xffff0f60: r0=&old, r1=&new, r2=ptr -> r0=0, C=1 on success
    push    {r4, r5, r6, r7}
    ldrd    r4, r5, [r0]
    ldrd    r6, r7, [r1]
    dmb     ish
1:  ldrexd  r0, r1, [r2]
    eors    r3, r0, r4
    eorseq  r3, r1, r5
    strexdeq r3, r6, r7, [r2]
    teqeq   r3, #1
    beq     1b
    dmb     ish
    rsbs    r0, r3, #0
    pop     {r4, r5, r6, r7}
    bx      lr

    .org base + 0x40
__kuser_memory_barrier:         @ 0xffff0fa0
    dmb     ish
    bx      lr

    .org base + 0x60
__kuser_cmpxchg:                @ 0xffff0fc0: r0=old, r1=new, r2=ptr -> r0=0, C=1 on success
    dmb     ish
1:  ldrex   r3, [r2]
    subs    r3, r3, r0
    strexeq r3, r1, [r2]
    teqeq   r3, #1
    beq     1b
    rsbs    r0, r3, #0
    b       __kuser_memory_barrier

    .org base + 0x80
__kuser_get_tls:                @ 0xffff0fe0
    mrc     p15, 0, r0, c13, c0, 3
    bx      lr

    .org base + 0x9c
__kuser_helper_version:         @ 0xffff0ffc
    .word   5
