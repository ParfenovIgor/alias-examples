#include <stdlib.h>

void merge_sort(int *arr, int sz) {
    if (sz == 1) return;

    int m = sz / 2;
    merge_sort(arr, m);
    merge_sort(arr + m, sz - m);
    int *buf = (int*)malloc(sz * sizeof(int));
    int l = 0, r = m;
    for (int pos = 0; pos < sz; pos++) {
        if (l == m) {
            buf[pos] = arr[r];
            r++;
        }
        else if(r == sz) {
            buf[pos] = arr[l];
            l++;
        }
        else {
            if (arr[l] < arr[r]) {
                buf[pos] = arr[l];
                l++;
            }
            else {
                buf[pos] = arr[r];
                r++;
            }
        }
    }
    for (int i = 0; i < sz; i++) {
        arr[i] = buf[i];
    }
}

int main() {
    const int sz = 1024 * 1024 * 16;
    int *arr = (int*)malloc(sz * sizeof(int));
    for (int i = 0; i < sz; i++) {
        arr[i] = rand();
    }

    merge_sort(arr, sz);

    return 0;
}