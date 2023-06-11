func print(a int) {
    asm {
        extern printf
        jmp afterbuffer1
        buffer1 db "%d", 0xA, 0x0
        afterbuffer1:
        push dword [ebp + 8]
        push buffer1
        call printf
        add esp, 0x8
    }
}

func print_array[N](arr ptr const N : N, sz int) {
    def i int
    i := 0
    while (i < sz) {
        def p ptr
        assume (i 0 : N - 1)
            p := arr + i
        def q int
        q := $p
        call print(q)
        i := i + 1
    }
}