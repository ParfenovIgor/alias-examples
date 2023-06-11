include {../common/print.al}

proto foo(a int)

func ^boo(a ptr 1 : 1) {
    a <- 4
}

func ^main() {
    def a int
    call foo(a)
    call print(a)
}