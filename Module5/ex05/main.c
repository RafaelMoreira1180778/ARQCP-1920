#include <stdio.h>
#include <string.h>
#include "fill_student.h"

int main()
{
	int i, j;
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

	return 0;
}
