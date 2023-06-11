func foo[N](a ptr N : N, b int) {
    def c ptr
    assume (b 0 : N - 1)
        c := a + b
    c <- 7
}

def a ptr; def b int
a := alloc(4)
b := 2
call foo[N = 4](a, b)
free(a)