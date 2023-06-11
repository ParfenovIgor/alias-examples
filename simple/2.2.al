def a ptr; a := alloc(3)
def b ptr; b := alloc(4)
def c ptr
if (a) {
    c := a + 0
}
else {
    c := b + 0
}
free(c)