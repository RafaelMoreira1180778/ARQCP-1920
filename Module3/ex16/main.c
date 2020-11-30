#include <stdio.h>
#include "swap.h"

char *ptr1, *ptr2;
int num = 4;
	
int main(void) {
	
	char vec1[] = "aBcD";
	ptr1 = vec1;
	
	char vec2[] = "EfGh";
	ptr2 = vec2;

	printf("Vetor1 original: %s\n", vec1);
	printf("Vetor2 original: %s\n", vec2);
	
	swap();
	
	printf("Vetor1 após troca: %s\n", vec1);
	printf("Vetor2 após troca: %s\n", vec2);
		
	return 0;
}
