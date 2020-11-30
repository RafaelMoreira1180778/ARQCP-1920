#include <stdio.h>
#include "array_sort.h"

int *ptrvec;
int num;

int main(void)
{
    int i;
    int vec[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    num = sizeof(vec) / sizeof(vec[0]);

    printf("Número de elementos do array: %d\n", num);
    ptrvec = vec;

    for (i = 0; i < num; i++)
    {
        printf("ARRAY [%d] = %d\n", i, *(ptrvec + i));
    }

    array_sort();

    printf("\n---ARRAY SORT DESC---\n\n");

    for (i = 0; i < num; i++)
    {
        printf("ARRAY [%d] = %d\n", i, *(ptrvec + i));
    }

    return 0;
}