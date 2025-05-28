.section .data
msg:    .ascii "Hello from GAS!\n"
len = . - msg              # Length of the message

.section .text
.global _start
_start:
    movl $4, %eax          # syscall number 4: sys_write
    movl $1, %ebx          # file descriptor 1: stdout
    movl $msg, %ecx        # pointer to message
    movl $len, %edx        # length of message
    int $0x80              # make syscall

    movl $1, %eax          # syscall number 1: sys_exit
    xorl %ebx, %ebx        # exit code 0
    int $0x80              # make syscall

