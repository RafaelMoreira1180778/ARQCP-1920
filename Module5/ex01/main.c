#include <stdio.h>

int main()
{

	union union_u1 {
		char vec[32]; // 32 bytes
		float a;	  // 4 bytes
		int b;		  // 4 bytes
	} u;

	struct struct_s1
	{
		char vec[32]; // 32 bytes
		float a;	  // 4 bytes
		int b;		  // 4 bytes
	} s;

	printf("Tamanho de u: %d bytes\n", sizeof(u)); // union: 32 bytes -> o compilador aloca memória para a maior variável dentro da union
	printf("Tamanho de s: %d bytes\n", sizeof(s)); // structure: 40 bytes -> o compilador aloca memória para a soma da memória necessária de todas as variáveis dentro da structure

	return 0;
}
