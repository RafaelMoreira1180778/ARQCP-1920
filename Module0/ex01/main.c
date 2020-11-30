#include <stdio.h>
#include <float.h>
int main()
{
    char charType;
    int integerType;
    unsigned int unIntType;
    long longType;
    short shortType;
    long long lolongType;
    float floatType;
    double doubleType;
    
    // Sizeof operator is used to evaluate the size of a variable
    printf("Size of char: %d byte\n",sizeof(charType));
    printf("Size of int: %d bytes\n",sizeof(integerType));
    printf("Size of unsigned Int: %u bytes\n",sizeof(unIntType));
    printf("Size of long: %d bytes\n",sizeof(longType));
    printf("Size of short: %d bytes\n",sizeof(shortType));
    printf("Size of long long: %d bytes\n",sizeof(lolongType));
    printf("Size of float: %d bytes\n",sizeof(floatType));
    printf("Size of double: %d bytes\n",sizeof(doubleType));
    return 0;
}
