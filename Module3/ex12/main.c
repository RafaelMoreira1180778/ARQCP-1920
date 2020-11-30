#include <stdio.h>
#include "zeroed.h"

short int *ptrvec; 
int num = 6;
	
int main(void) {
	
	int i;
	
	short int vec[] = {73, 100, 37, 112, 64, 118};
	ptrvec = vec;
	
	printf("Vetor de INTs original:\n");
	for (i=0; i < num; i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	
	printf("%d\n", vec_zero());
	


	return 0;
}
