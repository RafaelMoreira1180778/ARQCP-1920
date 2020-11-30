#include <stdio.h>
#include "conta.h"

int A=0, B=0, C=0, D=0;

//C + A - D + B
//A is a 8-bit variable, B is a 16-bit variable, while C and D are both 32-bit variables

int main(void) {


	printf("Valor A:");
	scanf("%d",&A);
	
	printf("Valor B:");
	scanf("%d",&B);

	printf("Valor C:");
	scanf("%d",&C);
	
	printf("Valor D:");
	scanf("%d",&D);

	printf("C + A - D + B = %lld: 0x%x\n", sum_and_subtract(), sum_and_subtract());

	return 0;
}
