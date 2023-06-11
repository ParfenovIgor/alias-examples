void boo(int*);

void foo(int a) {
    boo(&a);
}