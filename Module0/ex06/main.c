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
  char a[10], b[10];
  int nA, nB, media;
 
  printf("Qual o valor da primeira String que pretende converter para Integer\n");
  scanf("%s", a);
  nA = string_to_int(a);  
  printf("Qual o valor da segunda String que pretende converter para Integer\n");
  scanf("%s", b);
  nB = string_to_int(b);
  
  media = (nA + nB) / 2;
  printf("Média = %d\n", media);
 
  return 0;
}
