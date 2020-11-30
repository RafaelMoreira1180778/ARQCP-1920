#include <stdio.h>
#include "keep_positives.h"

int *ptrvec;
int num;

int main(void)
{
    int i;
    int vec[] = {-1, -6, 3, 5, -8, 3, 4, 1, 0, -8, -10, -21};

    num = sizeof(vec) / sizeof(vec[0]);

    printf("Num elementos array: %d\n", num);
    ptrvec = vec;

    for (i = 0; i < num; i++)
    {
        printf("ARRAY [%d] = %d\n", i, *(ptrvec + i));
    }

    keep_positives();
    printf("---KEEP POSITIVES---\n");

    for (i = 0; i < num; i++)
    {
        printf("ARRAY [%d] = %d\n", i, *(ptrvec + i));
    }

    return 0;
}
