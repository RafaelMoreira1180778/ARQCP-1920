#include <stdio.h>
#include "soma.h"

int main(void) {
	int n;
	
	printf("Insira um valor inteiro para N:");
	scanf("%d", &n);
	
	printf("A soma de %d é de %d.\n", n, sum_n(n));
	
	return 0;
}
