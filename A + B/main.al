include {../common/scan.al}
include {../common/print.al}

def a ptr; a := alloc(2)
call scan(a)
def b int; b := $a
a := a + 1
call scan(a)
b := b + $a
call print(b)
a := a + -1
free(a)