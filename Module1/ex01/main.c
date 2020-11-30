#include <stdio.h>

int main()
{
    //Declaration of variables
    int x = 5;
    int *xPtr = &x;
    float y = *xPtr + 3;
    int vec[] = {10, 11, 12, 13}, i;

    //Gets the size of the vector
    int vecSize = sizeof(vec) / sizeof(vec[0]);

    //Prints the value of x
    printf("Value of x: %d \n", x);

    //Prints the value of y
    printf("Value of y: %.2f \n", y);

    //Prints the address (in Hexadecimal) of x
    printf("Address of x (in hexadecimal): %p \n", xPtr);

    //Prints the address (in Hexadecimal) of xPtr
    printf("Address of xPtr (in hexadecimal): %p \n", &xPtr);

    //Prints the value pointed by xPtr
    printf("Value pointed by xPtr: %d \n", *xPtr);

    //Prints the address of vec
    printf("Address of vec  (in hexadecimal): %p \n", &vec);

    //Prints the values of vec[0], vec[1], vec[2] and vec[3]
    for (i = 0; i < vecSize; i++)
    {
        printf("Value of vec[%d]: %d\n", i, vec[i]);
    }

    //Prints the addresses of vec[0], vec[1], vec[2] and vec[3]
    for (i = 0; i < vecSize; i++)
    {
        printf("Address of vec[%d]: %p\n", i, &vec[i]);
    }

    printf("Alinea B: dentro da memoria os valores do vetor sao guardados com um espacamento de 4 bits entre cada valor.\n");
    printf("Alinea C: caso o programa seja corrido em computadores diferentes, os valores das posiçoes de memória sao diferentes.");

    return 0;
}