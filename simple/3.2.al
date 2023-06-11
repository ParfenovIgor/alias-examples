func foo(a ptr 3 : 4, b ptr 5 : 0, c ptr const 3 : 3) {
    free(b)
    free(a)
    a := alloc(5)
    c <- 5
    // free(c)
    // c := alloc(4)
}

def a ptr; def b ptr; def c ptr
a := alloc(4)
b := alloc(10)
c := alloc(5)
// a := a + 1
c := c + 1
call foo(a, b, c)
c := c + -1
free(a)
free(c)