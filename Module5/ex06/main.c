#include <stdio.h>
#include "fill.h"

int main()  {
	int i, j;
	Student s1, s2, s3, s4, s5;
	Student *s;

	s = &s1;
	fill_student(s, 19, 1, "Rui", "Porto Penafiel");
	s = &s2;
	fill_student(s, 18, 2, "Ana", "Porto Cete");
	s = &s3;
	fill_student(s, 20, 3, "Joao", "Porto Baltar");
	s = &s4;
	fill_student(s, 19, 4, "Pedro", "Porto Gandra");
	s = &s5;
	fill_student(s, 18, 5, "Teresa", "Porto Paredes");

	Student array[5] = {s1, s2, s3, s4, s5};

	for (i = 0; i < 5; i++)  {
		s = &array[i];
		printf("Idade: %d\nNúmero: %d\nNome: %s\nMorada: %s\n", s->age, s->number, s->name, s->address);
	}
	
	char endereco[] = "Rua de Cima";
	char *new_address = endereco;

	printf("\nEx04\n");
	//update_address(s, new_address);
	// Se estiver aqui SO altera a ultima entrada do Array
	// porque o S quando sai do FOR anterior esta na ultima posicao
	
	for (i = 0; i < 5; i++)  {
		s = &array[i];
		update_address(s, new_address);
		printf("Idade: %d\nNumero: %d\nNome: %s\nMorada: %s\n", s->age, s->number, s->name, s->address);
	}

	printf("\nEx05\n");
	int notas[] = {15, 14, 16, 8, 9, 10, 12, 11, 7, 10};
	int *grades = notas;

	for (i = 0; i < 5; i++)
	{
		s = &array[i];
		update_grades(s, grades);
		printf("Nome: %s\n", s->name);
		for (j = 0; j < 10; j++)
		{
			printf("Nota %d: %d\n", j, s->grades[j]);
		}
		printf("\n");
	}


	printf("\nEx06\n");
	int minimum = 10;
	printf("O número de notas superiores ao valor passado por parâmetro é de: %d.\n", locate_greater(s, minimum, grades));
	return 0;
}
