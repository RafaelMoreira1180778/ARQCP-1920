#include <stdio.h>
#include "where_is.h"

int main()
{
    //The string to iterate
    char *str = "abababa";

    //The char to find
    char c = 'a';

    //The array to store the indexes of c
    int vec[10];

    //The pointer to the array
    int *p = vec;

    int temp = where_is(str, c, p);

    for (int i = 0; i < temp; i++)
    {
        printf("Posicao de %d na string: %d\n", c, p[i]);
    }

    return 0;
}