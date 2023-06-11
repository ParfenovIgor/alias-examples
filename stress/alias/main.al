include {../../common/print.al}
include {../../common/rand.al}
include {../../merge_sort/merge_sort.al}

func test[N]() {
    def arr ptr; arr := alloc(N)
    def sz int; sz := N

    def i int; i := 0
    while (i < N) {
        def b ptr
        assume (i 0 : N - 1)
            b := arr + i
        call rand(b)
        i := i + 1
    }

    call merge_sort[N = N](arr, sz)

    free(arr)
}

func ^main() {
    call test[N = 1024 * 1024 * 16]()
}