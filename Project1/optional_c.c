#include <stdio.h>

extern int max_of_array(int* arr, int size);

int main() {
    int arr[] = { 5, 9, 2, 8, 3, 7, 1, 6, 0 };
    int size = sizeof(int);
    int max = max_of_array(arr, size);
    printf("The maximum value is %d\n", max);
    return 0;
}
