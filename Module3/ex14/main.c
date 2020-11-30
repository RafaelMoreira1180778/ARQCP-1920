#include <stdio.h>
#include "duplicates.h"

short int x, *ptrvec;
int num = 10;
	
int main(void) {
	
	int i;
	
	short int vec[] = {1, 5, 1, 10, 5, 14, 2, 7, 10, 8};
	ptrvec = vec;
	
	printf("Vetor de INTs original:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	
	exists();
	printf("Quantidade de não duplicados: %d\n", vec_diff());	
	
	
	return 0;
}
