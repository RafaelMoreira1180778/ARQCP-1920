#include <stdio.h>
#include "test.h"

int op1=0, op2=0;

int main(void) {

	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	
	printf("resultado = %d\n", test_flags());

	return 0;
}
