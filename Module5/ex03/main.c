#include <stdio.h>
#include "fill_student.h"

int main()
{
	int i;
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

	for (i = 0; i < 5; i++)
	{
		s = &array[i];
		printf("Age: %d\nNumber: %d\nName: %s\nAddress: %s\n", s->age, s->number, s->name, s->address);
	}

	return 0;
}
