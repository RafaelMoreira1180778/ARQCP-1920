#include <stdio.h>
#include <string.h>

int main(void){

	union union_u1{
		char vec[32];
		float a;
		int b;
	} u;

	union union_u1 * ptr = &u;

	strcpy(ptr->vec, "arquitectura de computadores");
	printf("[1]=%s\n", ptr->vec);
	ptr->a = 123.5;
	printf("[2]=%f\n", ptr->a);
	ptr->b = 2;
	printf("[3]=%d\n", ptr->b);
	
	printf("[1]=%s\n", ptr->vec);
	printf("[2]=%f\n", ptr->a);
	printf("[3]=%d\n", ptr->b);

// O union deixa uma variável utilizar vários tipos de dados 
// e só trabalha com uma variável de cada vez.

// unions, declared using the keyword union, allow a single variable to use several data types.

return 0;
}
