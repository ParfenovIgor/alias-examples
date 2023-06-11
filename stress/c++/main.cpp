#include <stdlib.h>
#include <vector>
#include <algorithm>

int main() {
    const int sz = 1024 * 1024 * 16;
    std::vector <int> arr(sz);
    for (int i = 0; i < sz; i++) {
        arr[i] = rand();
    }

    std::sort(arr.begin(), arr.end());

    return 0;
}