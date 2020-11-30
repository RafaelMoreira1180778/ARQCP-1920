#include <stdio.h>

void fill_array(int *vec)
{
int i;
int value;
	
for(i=0; i<30; i++) {
printf ("Enter a number: ");
scanf ("%d", &value);
vec[i] = value;
}

}


int average(int *vec)
{
int c, soma = 0;
for (c = 0; c < 30; c++) {
   soma = vec[c] + soma;
}
return soma/30;
	
}


int main()
{
int vec[30], total;
//int c;
fill_array(vec);
//printf("Resultant array is\n");
 
   //for (c = 0; c < 30; c++)
   //printf("%d\n", vec[c]);
 
   total = average(vec);
   printf("Average is %d", total);
   return 0;
}
