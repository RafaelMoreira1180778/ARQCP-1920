#include <stdio.h>

int activate_bit(int *ptr, int pos) {
	int aux=*ptr;
	*ptr=(*ptr | (1 << (pos)));
//move o numero 1 (pos)vezes para a esquerda, como o numero 1 tem apenas um bit ativo esse bit vai ficar na posição a ser ativada.
//*ptr OR mascara caso o bit a ativar esteja a 0 fica a 1 caso esteja a 1 permanece a 1
	
	if (aux!=*ptr) {
		return 1;
	}
	return 0; 
}
