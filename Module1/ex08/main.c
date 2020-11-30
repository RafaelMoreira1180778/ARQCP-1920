#include <stdio.h>
#include "sort_array.h"

int main(void) {
	int p, q;
	//Criação de um array com valores inteiros para ser ordenado
	int vec[] = {1, 10, 5, 15, 8, 12, 4};
	int n = sizeof(vec)/sizeof(vec[0]);

	printf("Array original:\n");
	for (p=0; p<n; p++) {
		printf("%d ", *(vec+p));
	}
	
	printf("\nArray ordenado:\n");
	array_sort2(vec, n);
	for (q=0; q<n; q++) {
		printf("%d ", *(vec+q));
	}
	printf("\n");
	
	return 0;
}
