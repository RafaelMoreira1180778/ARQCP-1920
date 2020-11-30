#include <stdio.h>
#include "sort_without_reps.h"

int main(void)
{
    //The array of integers
    int source[] = {2, 1, 4, 5, 2, 1, 3, 11, 10};
    int *src = source;
    int i;

    //The number of elements in the array
    int n = sizeof(source) / sizeof source[0];

    //The destination array with the same number of elements as src
    int destination[n];
    int *dest = destination;

    for (i = 0; i < n; i++)
    {
        printf("%d\n", source[i]);
    }

    int placed = sort_without_reps(src, n, dest);

    for (i = 0; i < placed; i++)
    {
        printf("%d\n", destination[i]);
    }

    return 0;
}
