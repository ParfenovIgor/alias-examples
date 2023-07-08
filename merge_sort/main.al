include {../common/print.al}
include {merge_sort.al}

func ^main() {
    def arr ptr; arr := alloc(11)
    def sz int; sz := 11
    
    def b ptr
    b := arr + 0;  b <- 5
    b := arr + 1;  b <- 10
    b := arr + 2;  b <- 6
    b := arr + 3;  b <- 1
    b := arr + 4;  b <- 7
    b := arr + 5;  b <- 4
    b := arr + 6;  b <- 9
    b := arr + 7;  b <- 3
    b := arr + 8;  b <- 11
    b := arr + 9;  b <- 8
    b := arr + 10; b <- 2

    call merge_sort[N = 11](arr, sz)
    call print_array[N = 11](arr, sz)

    free(arr)
}