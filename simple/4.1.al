func boo[M](a ptr M : M + 1) {
    free(a)
    a := alloc(M + 1)
}

func foo[N](a ptr N : N, b ptr N : 0) {
    call boo[M = N - 1](a)
    free(b)
}

def a ptr; def b ptr
a := alloc(5)
b := alloc(4)
call foo[N = 4](a, b)
free(a)