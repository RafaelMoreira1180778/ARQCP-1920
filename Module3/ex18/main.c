#include <stdio.h>
#include "sort_array.h"

int *ptrsrc, *ptrdest;
int num = 8;
	
int main(void) {
	
	int i = 0;
	
	int vec1[] = {2, 1, 3, 2, 5, 4, 4, 7};
	int vec2[num];
	
	ptrsrc = vec1;
	ptrdest = vec2;
	
	printf("Vetor de INTs original:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec1[i]);
	}
	printf("\n");
	
	printf("Quantidade de números não repetidos: %d\n", sort_without_reps());
	
		
	return 0;
}
