#include <stdio.h>
#include "sum.h"

int main(void) {
	int p;
	
	//Criação de um array com valores inteiros
	//para ser calculada a soma dos ímpares
	//(ignorando o primeiro valor do array)
	int vec[] = {6, 3, -5, 10, 11, 0, 1};
	int n = sizeof(vec)/sizeof(vec[0]);
	
	printf("Array original:\n");
	for (p=1; p<n; p++) {
		printf("%d ", *(vec+p));
	}
	printf("\nA soma dos números ímpares do array é de: %d\n", odd_sum(vec));

	return 0;
}
