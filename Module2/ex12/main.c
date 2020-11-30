#include <stdio.h>
#include "multiple.h"

int A, B;
int result;

int main(void)
{
    A = 6;
    B = 5;

    result = isMultiple();

    printf("%d e %d\n", A, B);
    printf("%d\n", result);

    return 0;
}