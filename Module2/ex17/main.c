#include <stdio.h>
#include "calculator.h"

int A, B, C, D;
int result;

int main(void)
{
    printf("Valor A: ");
	scanf("%d",&A);
	
	printf("Valor B: ");
	scanf("%d",&B);
	
	printf("Valor C (negativo) para o módulo: ");
	scanf("%d",&C);
	
	printf("Valor D (a ser usado em Power_of_2 e Power_of_3): ");
	scanf("%d",&D);	
	
    printf("%d+%d = %d\n", A, B, sum());
    printf("%d-%d = %d\n", A, B, subtraction());
    printf("%d*%d = %d\n", A, B, multiplication());
    printf("%d:%d = %d\n", A, B, division());
    
    printf("|%d| = %d\n", C, modulus1());
    printf("Resto de %d:%d (quando Dividendo>Divisor): %d\n", A, B, modulus2());
    printf("%d^2 = %d\n", D, powers2a());
    printf("2^%d = %d\n", D, powers2b());
    printf("%d^3 = %d\n", D, powers3a());
    printf("3^%d = %d\n", D, powers3b());
    
    return 0;
}
