#include <stdio.h>
#include "counteven.h"

int main(void)
{
    short *vec;
    short array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    vec = array;
    int n = sizeof(array) / sizeof(array[0]);
    int result = count_even(vec, n);

    printf("The array with %d total element has %d even numbers.\n", n, result);
    return 0;
}