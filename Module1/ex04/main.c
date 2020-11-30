#include <stdio.h>
#include "string_add.h"

int main(void) {
	//Criação do array com caracteres
	char str[] = "aBcDeFgHiJ";
	
	//Uso do método upper1 para trocar as minúsculas por maiúsculas correspondentes
	printf("\nString converted to Upper Case\n");
	upper1(str);
	
	return 0;
}
