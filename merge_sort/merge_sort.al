func merge_sort[N](arr ptr const N : N, sz int) {
    if (N = 1) {

    }
    else {
        def _sz int; _sz := sz / 2
        call merge_sort[N = N / 2](arr, _sz)
        def b ptr
        b := arr + N / 2
        call merge_sort[N = (N + 1) / 2](b, _sz)

        def buf ptr; buf := alloc(N)
        def l int; l := 0
        def r int; r := N / 2
        def pos int; pos := 0
        while (pos < N) {
            def t ptr
            assume (pos 0 : N - 1) t := buf + pos
            if (l = N / 2) {
                def p ptr
                assume (r N / 2 : N - 1) p := arr + r
                t <- $p
                r := r + 1
            }
            else {
                if (r = N) {
                    def p ptr
                    assume (l 0 : N / 2 - 1) p := arr + l
                    t <- $p
                    l := l + 1
                }
                else {
                    def p ptr; def q ptr
                    assume (l 0 : N / 2 - 1) p := arr + l
                    assume (r N / 2 : N - 1) q := arr + r
                    if ($p < $q) {
                        t <- $p
                        l := l + 1
                    }
                    else {
                        t <- $q
                        r := r + 1
                    }
                }
            }
            pos := pos + 1
        }
        
        pos := 0
        while (pos < N) {
            def p ptr; def q ptr
            assume (pos 0 : N - 1) p := arr + pos
            assume (pos 0 : N - 1) q := buf + pos
            p <- $q
            pos := pos + 1
        }

        free(buf)
    }
}