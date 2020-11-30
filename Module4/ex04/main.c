#include <stdio.h>
#include "soma.h"

int main(void) {
	int num1, num2, num3;
	int *smaller = &num3;
	
	printf("Insira um valor inteiro para num1:");
	scanf("%d", &num1);
	printf("Insira um valor inteiro para num2:");
	scanf("%d", &num2);
	
	int resultado = sum_smaller(num1, num2, smaller);
	
	printf("A soma é de %d.\n", resultado);
	
	return 0;
}
