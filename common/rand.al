func rand(a ptr const 1 : 1) {
    asm {
        extern rand
        call rand
        mov ebx, [ebp + 8]
        mov [ebx], eax
    }
}