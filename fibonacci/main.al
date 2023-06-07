include {../common/print.al}

func fib[N](n int) {
    if (N = 0) {
        n := 0
    }
    else {
        if (N = 1) {
            n := 1
        }
        else {
            call fib[N=N-1](n)
            def m int
            call fib[N=N-2](m)
            n := n + m
        }
    }
}

func ^main() {
    def n int; n := 0
    call fib[N=6](n)
    call print(n)
    call fib[N=12](n)
    call print(n)
}
