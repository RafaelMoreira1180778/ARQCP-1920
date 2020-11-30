#include <stdio.h>
#include "concat.h"

char byte1, byte2;
short valor;

short concatBytes();

int main(void) {
	
	printf("Insira um valor numérico (byte1):");
	scanf("%c",&byte1);

	printf("Insira um valor numérico (byte2):");
	scanf("%c\n",&byte2);

	valor = concatBytes();
	printf("swapBytes = %hd\n", valor);
	
	return 0;
}
