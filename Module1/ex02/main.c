#include <stdio.h>
#include "vec.h"


int main(){
	//Criação de dois arrays, de modo a passarmos os valores de um par ao outro
	int vec1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int vec2[10], c;

	int n = sizeof(vec1)/sizeof(vec1[0]);

	//Método copy_vec de modo a copiar os valores
	copy_vec(vec1, vec2, n);

	//Ciclo FOR para imprimir o array pretendido
	for (c = 0; c < 10; c++) {
		printf("%d\n", *(vec2+c));
	}
	
	return 0;
}
