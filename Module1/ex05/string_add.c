#include <stdio.h>

void upper2(char *str) {
	int i = 0;
	char *pStr;
	//Para vetores não há necessidade de se usar o caracter &.
	pStr = str;
	
	
	//Para o uso de Pointers, interessa-nos a localização de cada caracter,
	//só depois verificaremos se essa localização alberga uma letra maiúscula ou minúscula.
	//Se se tratar de uma minúscula, será convertida para maiúscula
	for (i=0; *(pStr+i) != '\0'; i++) {
		if (97<=*(str+i) && *(str+i)<=122) {
			*(pStr+i) -= 32;
		}
	}
	printf("\n%s\n", pStr);
}
