include {../common/scan.al}
include {../common/print.al}

def a ptr; a := alloc(1)
call scan(a)
def b int; b := $a
call scan(a)
b := b + $a
call print(b)
free(a)