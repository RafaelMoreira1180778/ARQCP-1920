#include <stdlib.h>
#include <string.h>
#include "new_str.h"

char *new_str(char str[80]){
	int len = strlen(str)+1, i;
	// O 'len' tem +1 ja que numa String existe sempre um 0 no final, dai o espaco extra
	
	char *ptr = (char *) malloc(len *sizeof(char));
	// criacao de um Pointer para um endereco de memoria onde ira ser colocadio/copiado o conteudo do outro Array
	// O novo Pointer tera o alocamento igual ao alocamento MALLOC do array inicial
	
	for (i = 0; i < len; i++){		// copia a String da Array inicial para o novo Array
		ptr[i] = str[i];
	}
	
	return ptr;
}
