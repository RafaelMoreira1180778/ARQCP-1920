#include <stdio.h>
#include "grades.h"

int main(void) {
	int p;
	
	//Criação de um array com valores inteiros
	//para ser calculada a soma dos ímpares
	//(ignorando o primeiro valor do array)
	float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 
		0.0, 12.67, 16.23, 18.75};
	int n = sizeof(grades)/sizeof(grades[0]);
	int freq[21];
	
	printf("Array das notas:\n");
	for (p=0; p<n; p++) {
		printf("%.2f  ", *(grades+p));
	}
	printf("\n"); 
	printf("Array de frequências:\n");
	frequencies(grades, n, freq);
	printf("\n");
	
	return 0;
}
