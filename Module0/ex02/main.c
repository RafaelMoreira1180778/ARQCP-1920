#include <stdio.h>

int sum(int a, int b)
{
	int add = a + b;
	return add;
}

int main(void)
{
	int addition;
	int a = 5;
	int b = 8;
	do
	{
		addition = sum(a, b);
		printf("A soma de %d e de %d é %d.\n", a, b, addition);
		a--;
		b--;
	} while (addition > 10);
	return 0;
}
