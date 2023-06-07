; main.al 1:1 -> program
global main
extern malloc
extern free
section .text
push ebp
mov ebp, esp
; main.al 1:1 -> block
; ../common/print.al 1:1 -> function definition
jmp _funend0
_fun0:
push ebp
mov ebp, esp
sub esp, 12
; ../common/print.al 1:19 -> block
; ../common/print.al 2:5 -> asm

        extern printf
        jmp afterbuffer1
        buffer1 db "%d", 0xA, 0x0
        afterbuffer1:
        push dword [ebp + 8]
        push buffer1
        call printf
        add esp, 0x8
    
leave
ret
_funend0:
; ../common/print.al 13:1 -> function definition
jmp _funend1
_fun1:
push ebp
mov ebp, esp
sub esp, 16
; ../common/print.al 13:48 -> block
; ../common/print.al 14:5 -> definition
sub esp, 4
; ../common/print.al 15:5 -> assignment
; ../common/print.al 15:10 -> integer
mov [esp - 4], dword 0
mov eax, [esp - 4]
mov [ebp + -4], eax
; ../common/print.al 16:5 -> while
_while0:
; ../common/print.al 16:12 -> less
; ../common/print.al 16:12 -> identifier
mov eax, [ebp + -4]
mov [esp - 4], eax
sub esp, 4
; ../common/print.al 16:16 -> identifier
mov eax, [ebp + 16]
mov [esp - 4], eax
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
jl _set1_1
mov [esp - 4], dword 0
jmp _setend1
_set1_1:
mov [esp - 4], dword 1
_setend1:
cmp [esp - 4], dword 0
je _while_end0
; ../common/print.al 16:20 -> block
; ../common/print.al 17:9 -> definition
sub esp, 4
; ../common/print.al 18:9 -> assumption
jmp aftererror2
error2 db "Assumption fault in file ../common/print.al on line 18 position 9", 0xA
aftererror2:
; ../common/print.al 18:19 -> integer
mov [esp - 4], dword 0
mov eax, [ebp + -4]
sub eax, [esp - 4]
jl _set1_3
jmp _setend3
_set1_3:
mov eax, 4
mov ebx, 1
mov ecx, error2
mov edx, 66
int 0x80
mov eax, 1
mov ebx, 1
int 0x80
_setend3:
; ../common/print.al 18:21 -> subtraction
; ../common/print.al 18:21 -> identifier
mov eax, [ebp + 8]
mov [esp - 4], eax
sub esp, 4
; ../common/print.al 18:25 -> integer
mov [esp - 4], dword 1
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
mov [esp - 4], eax
mov eax, [esp - 4]
sub eax, [ebp + -4]
jl _set1_4
jmp _setend4
_set1_4:
mov eax, 4
mov ebx, 1
mov ecx, error2
mov edx, 66
int 0x80
mov eax, 1
mov ebx, 1
int 0x80
_setend4:
; ../common/print.al 19:13 -> assignment
; ../common/print.al 19:18 -> addition
; ../common/print.al 19:18 -> identifier
mov eax, [ebp + 12]
mov [esp - 4], eax
sub esp, 4
;  1:1 -> multiplication
; ../common/print.al 19:24 -> identifier
mov eax, [ebp + -4]
mov [esp - 4], eax
sub esp, 4
;  1:1 -> integer
mov [esp - 4], dword 4
add esp, 4
mov eax, [esp - 4]
mov edx, [esp - 8]
mul edx
mov [esp - 4], eax
add esp, 4
mov eax, [esp - 4]
add eax, [esp - 8]
mov [esp - 4], eax
mov eax, [esp - 4]
mov [ebp + -8], eax
; ../common/print.al 20:9 -> definition
sub esp, 4
; ../common/print.al 21:9 -> assignment
; ../common/print.al 21:14 -> dereference
; ../common/print.al 21:15 -> identifier
mov eax, [ebp + -8]
mov [esp - 4], eax
mov eax, [esp - 4]
mov ebx, [eax]
mov [esp - 4], ebx
mov eax, [esp - 4]
mov [ebp + -12], eax
; ../common/print.al 22:9 -> function call
push dword [ebp + -12]
call _fun0
add esp, 4
mov eax, [esp - 4]
mov [ebp + -12], eax
; ../common/print.al 23:9 -> assignment
; ../common/print.al 23:14 -> addition
; ../common/print.al 23:14 -> identifier
mov eax, [ebp + -4]
mov [esp - 4], eax
sub esp, 4
; ../common/print.al 23:18 -> integer
mov [esp - 4], dword 1
add esp, 4
mov eax, [esp - 4]
add eax, [esp - 8]
mov [esp - 4], eax
mov eax, [esp - 4]
mov [ebp + -4], eax
jmp _while0
_while_end0:
leave
ret
_funend1:
; main.al 3:1 -> function definition
jmp _funend2
_fun2:
push ebp
mov ebp, esp
sub esp, 12
; main.al 3:20 -> block
; main.al 4:5 -> if
; main.al 4:9 -> equal
; main.al 4:9 -> identifier
mov eax, [ebp + 8]
mov [esp - 4], eax
sub esp, 4
; main.al 4:13 -> integer
mov [esp - 4], dword 0
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
jz _set1_5
mov [esp - 4], dword 0
jmp _setend5
_set1_5:
mov [esp - 4], dword 1
_setend5:
cmp [esp - 4], dword 0
je _if_else6
; main.al 4:16 -> block
; main.al 5:9 -> assignment
; main.al 5:14 -> integer
mov [esp - 4], dword 0
mov eax, [esp - 4]
mov [ebp + 12], eax
jmp _if_end6
_if_else6:
; main.al 7:10 -> block
; main.al 8:9 -> if
; main.al 8:13 -> equal
; main.al 8:13 -> identifier
mov eax, [ebp + 8]
mov [esp - 4], eax
sub esp, 4
; main.al 8:17 -> integer
mov [esp - 4], dword 1
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
jz _set1_7
mov [esp - 4], dword 0
jmp _setend7
_set1_7:
mov [esp - 4], dword 1
_setend7:
cmp [esp - 4], dword 0
je _if_else8
; main.al 8:20 -> block
; main.al 9:13 -> assignment
; main.al 9:18 -> integer
mov [esp - 4], dword 1
mov eax, [esp - 4]
mov [ebp + 12], eax
jmp _if_end8
_if_else8:
; main.al 11:14 -> block
; main.al 12:13 -> function call
push dword [ebp + 12]
; main.al 12:24 -> subtraction
; main.al 12:24 -> identifier
mov eax, [ebp + 8]
mov [esp - 4], eax
sub esp, 4
; main.al 12:26 -> integer
mov [esp - 4], dword 1
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
mov [esp - 4], eax
push dword [esp - 4]
call _fun2
add esp, 8
mov eax, [esp - 4]
mov [ebp + 12], eax
; main.al 13:13 -> definition
sub esp, 4
; main.al 14:13 -> function call
push dword [ebp + -4]
; main.al 14:24 -> subtraction
; main.al 14:24 -> identifier
mov eax, [ebp + 8]
mov [esp - 4], eax
sub esp, 4
; main.al 14:26 -> integer
mov [esp - 4], dword 2
add esp, 4
mov eax, [esp - 4]
sub eax, [esp - 8]
mov [esp - 4], eax
push dword [esp - 4]
call _fun2
add esp, 8
mov eax, [esp - 4]
mov [ebp + -4], eax
; main.al 15:13 -> assignment
; main.al 15:18 -> addition
; main.al 15:18 -> identifier
mov eax, [ebp + 12]
mov [esp - 4], eax
sub esp, 4
; main.al 15:22 -> identifier
mov eax, [ebp + -4]
mov [esp - 4], eax
add esp, 4
mov eax, [esp - 4]
add eax, [esp - 8]
mov [esp - 4], eax
mov eax, [esp - 4]
mov [ebp + 12], eax
_if_end8:
_if_end6:
leave
ret
_funend2:
; main.al 20:1 -> function definition
global main
jmp _funendmain
main:
push ebp
mov ebp, esp
sub esp, 8
; main.al 20:14 -> block
; main.al 21:5 -> definition
sub esp, 4
; main.al 21:16 -> assignment
; main.al 21:21 -> integer
mov [esp - 4], dword 0
mov eax, [esp - 4]
mov [ebp + -4], eax
; main.al 22:5 -> function call
push dword [ebp + -4]
; main.al 22:16 -> integer
mov [esp - 4], dword 6
push dword [esp - 4]
call _fun2
add esp, 8
mov eax, [esp - 4]
mov [ebp + -4], eax
; main.al 23:5 -> function call
push dword [ebp + -4]
call _fun0
add esp, 4
mov eax, [esp - 4]
mov [ebp + -4], eax
; main.al 24:5 -> function call
push dword [ebp + -4]
; main.al 24:16 -> integer
mov [esp - 4], dword 12
push dword [esp - 4]
call _fun2
add esp, 8
mov eax, [esp - 4]
mov [ebp + -4], eax
; main.al 25:5 -> function call
push dword [ebp + -4]
call _fun0
add esp, 4
mov eax, [esp - 4]
mov [ebp + -4], eax
leave
ret
_funendmain:
leave
ret
