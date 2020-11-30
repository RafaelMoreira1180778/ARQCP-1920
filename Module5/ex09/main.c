#include <stdio.h>
#include "functions.h"

short func1(structB *s)
{
	return s->a.x;
}

short func2(structB *s)
{
	return s->z;
}

short *func3(structB *s)
{
	return &s->z;
}

short func4(structB *s)
{
	return s->b->x;
}

int main()
{
	structB s;
	structA s1;
	structA *s2 = &s1;
	structB *s3 = &s;

	s2->x = 1;
	s2->y = 2;

	s3->a.x = 10;
	s3->a.y = 100;
	s3->b = s2;
	s3->x = 10;
	s3->y = 100;
	s3->c = 'd';
	s3->y = 20;
	s3->e[0] = 'a';
	s3->e[1] = 'b';
	s3->e[2] = 'c';
	s3->z = 35;

	printf("C:\n");
	printf("fun1: %d\n", func1(s3));
	printf("fun2: %d\n", func2(s3));
	printf("fun3: %p\n", func3(s3));
	printf("fun4: %d\n", func4(s3));

	printf("\nAssembly:\n");
	printf("fun1: %d\n", fun1(s3));
	printf("fun2: %d\n", fun2(s3));
	printf("fun3: %p\n", fun3(s3));
	printf("fun4: %d\n", fun4(s3));

	return 0;
}
