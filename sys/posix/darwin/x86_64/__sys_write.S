/* This is free and unencumbered software released into the public domain. */

#define SYS_write 0x2000004

.text

.globl ___sys_write
___sys_write:
    /* %rdi = fd     */
    /* %rsi = buffer */
    /* %rdx = count  */
    movq $SYS_write, %rax
    syscall
    ret
    /* %rax = result */
