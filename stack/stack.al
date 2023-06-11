func stack_make[N](a ptr 0 : N) {
    a := alloc(N)
    a <- 0
}

func stack_delete[N](a ptr N : 0) {
    free(a)
}

func stack_push[N](a ptr N : N, b int) {
    def c int
    c := $a + 1
    def d ptr
    assume (c 1 : N + -1)
        d := a + c
    d <- b
    a <- c
}

func stack_top[N](a ptr N : N, b int) {
    def c int
    c := $a
    def d ptr
    assume (c 1 : N + -1)
        d := a + c
    b := $d
}

func stack_pop[N](a ptr N : N, b int) {
    def c int
    c := $a
    def d ptr
    assume (c 1 : N + -1)
        d := a + c
    b := $d
    c := c + -1
    a <- c
}