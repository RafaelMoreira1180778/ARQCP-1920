#include <stdio.h>
#include "string_add.h"

int main(void) {
	//Criação do array com caracteres
	char str[] = "aBcDeFgHiJ";
	
	//Uso do método upper2 para trocar as minúsculas por maiúsculas correspondentes
	printf("\nString convertida para Maiúsculas\n");
	upper2(str);
	
	return 0;
}
