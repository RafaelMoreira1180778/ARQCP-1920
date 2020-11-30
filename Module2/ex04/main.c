#include <stdio.h>
#include "asm.h"

int op1=0, op2=0, op3, op4;
int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);

	printf("Valores pré-definidos em Assembly:");
	printf("op3: %d, op4: %d\n", op3, op4);
	printf("total = %d:0x%x\n", sum_v3(),sum_v3());

	return 0;
}
