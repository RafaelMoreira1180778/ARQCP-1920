#include <stdio.h>
#include "swap.h"

int main()
{

    //Index for 'for cycle'
    int i;

    //The vector1
    int vector1[] = {1, 2, 3, 4};
    int *vec1 = vector1;

    //The vector2
    int vector2[] = {5, 6, 7, 8};
    int *vec2 = vector2;

    //The size of the vector
    int size = sizeof(vector1) / sizeof(vector1[0]);

    printf("\nBefore the swap:\n");
    for (i = 0; i < size; i++)
    {
        printf("vec1[%d]=%d | vec2[%d]=%d\n", i, vec1[i], i, vec2[i]);
    }

    swap(vec1, vec2, size);

    printf("\nAfter the swap:\n");
    for (i = 0; i < size; i++)
    {
        printf("vec1[%d]=%d | vec2[%d]=%d\n", i, vec1[i], i, vec2[i]);
    }

    return 0;
}