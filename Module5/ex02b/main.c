#include <stdio.h>
#include <string.h>

int main(void){

	struct struct_u1{
		char vec[32];
		float a;
		int b;
	} u;

	struct struct_u1 * ptr = &u;

	strcpy(ptr->vec, "arquitectura de computadores");
	printf("[1]=%s\n", ptr->vec);
	ptr->a = 123.5;
	printf("[2]=%f\n", ptr->a);
	ptr->b = 2;
	printf("[3]=%d\n", ptr->b);
	
	printf("[1]=%s\n", ptr->vec);
	printf("[2]=%f\n", ptr->a);
	printf("[3]=%d\n", ptr->b);

// A structure agrega múltiplas variáveis sobre o mesmo nome.
// Os elementos da structure são acessiveis pelo seu nome.

// structures, declared using the keyword struct, aggregate multiple variables under the same name;

return 0;
}
