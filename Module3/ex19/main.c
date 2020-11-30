#include <stdio.h>
#include "frequencies.h"

char *ptrgrades;
int *ptrfreq;
int num;

int main(void)
{
    int i, numFreqs;

    char grades[] = {0, 0.3, 0.1, 10, 15, 15.2, 12, 13, 8, 7, 7.4, 3};
    int freqs[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    num = sizeof(grades) / sizeof(grades[0]);
    numFreqs = sizeof(freqs) / sizeof(freqs[0]);

    printf("Número de notas (sizeof array grades): %d\n", num);
    printf("Número de frequências absolutas (sizeof array freqs): %d\n", numFreqs);

    ptrgrades = grades;
    ptrfreq = freqs;

    for (i = 0; i < num; i++)
    {
        printf("GRADES [%d] = %d\n", i, *(ptrgrades + i));
    }

    frequencies();

    printf("\n---ABSOLUTE FREQUENCIES---\n\n");

    for (i = 0; i < 21; i++)
    {
        printf("ARRAY [%d] = %d\n", i, *(ptrfreq + i));
    }

    return 0;
}