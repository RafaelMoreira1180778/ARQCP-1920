#include <stdio.h>

int string_to_int(char *str)
{
int i, n=0;
for(i=0; str[i]>='0' && str[i]<='9'; i++)
  n = 10*n + (str[i] - '0');
return n;
}


int main()
{
  char a[100];
  int n;
 
  printf("Qual o valor da String que pretende converter para Integer\n");
  scanf("%s", a);
 
  n = string_to_int(a);
 
  printf("String  = %s\nInteger = %d\n", a, n);
 
  return 0;
}
