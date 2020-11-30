#include <stdio.h>
#include "soma.h"

int op1=0, op2=0;

int main(void) {

	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	
	printf("total = %lld: 0x%x\n", sum2ints(), sum2ints());

	return 0;
}
