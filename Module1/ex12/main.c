#include <stdio.h>
#include "capitalize.h"

int main(void) {
	//Criação do array com caracteres
	int i;
	char str[] = "Pedro miguel Da cunha Borda de Agua";
	
	//Uso do método upper2 para trocar as minúsculas por maiúsculas correspondentes
	printf("\nPrimeira letra de cada palavras em Maiúsculas\n");
	capitalize(str);
	for (i=0; *(str+i) != '\0'; i++) {
	}
	printf("\n%s\n", str);
	
	return 0;
}
