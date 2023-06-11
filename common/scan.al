func scan(a ptr const 1 : 1) {
    asm {
        extern scanf
        jmp afterbuffer2
        buffer2 db "%d", 0x0
        afterbuffer2:
        push dword [ebp + 8]
        push buffer2
        call scanf
        add esp, 0x8
    }
}