include {../common/print.al}
include {stack.al}

func ^main() {
    def a ptr
    call stack_make[N = 4](a)
    
    def n int; n := 15
    call stack_push[N = 4](a, n)
    call stack_push[N = 4](a, n)
    call stack_push[N = 4](a, n)

    def m int
    call stack_top[N = 4](a, m)
    call print(m)

    call stack_push[N = 4](a, n)
    call stack_delete[N = 4](a)
}