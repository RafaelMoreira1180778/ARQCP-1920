#include <stdio.h>
#include "fill.h"

int main()  {
	int i;
	Student s1, s2, s3, s4, s5;
	Student *s;

	s = &s1;
	fill_student(s, 19, 1, "Rui", "Porto Penafiel");
	s = &s2;
	fill_student(s, 18, 1, "Ana", "Porto Cete");
	s = &s3;
	fill_student(s, 20, 1, "Joao", "Porto Baltar");
	s = &s4;
	fill_student(s, 19, 1, "Pedro", "Porto Gandra");
	s = &s5;
	fill_student(s, 18, 1, "Teresa", "Porto Paredes");

	Student array[5] = {s1, s2, s3, s4, s5};

	for (i = 0; i < 5; i++)  {
		s = &array[i];
		printf("Idade: %d\nNumber: %d\nNome: %s\nMorada: %s\n", s->age, s->number, s->name, s->address);
	}
	
	char endereco[] = "aBcDeFgHiJ";
	char *new_address = endereco;
	
	//update_address(s, new_address);
	// Se estiver aqui SO altera a ultima entrada do Array
	// porque o S quando sai do FOR anterior esta na ultima posicao
	
	for (i = 0; i < 5; i++)  {
		s = &array[i];
		update_address(s, new_address);
		printf("Idade: %d\nNumber: %d\nNome: %s\nMorada: %s\n", s->age, s->number, s->name, s->address);
	}


	return 0;
}
