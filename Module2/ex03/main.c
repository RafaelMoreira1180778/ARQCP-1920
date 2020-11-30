#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;
int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);

	printf("Total de (15-%d)-(15-%d) = %d:0x%x\n", op1,op2,sum_v2(),sum_v2());
	return 0;
}
