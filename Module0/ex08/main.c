#include <stdio.h>
//#include <ctype.h>
//#include <string.h>
#include "metodos.h"

int string_to_int(char *str);

int main(){
  char a[100];
  int n;
 
  printf("Qual o valor da String que pretende converter para Integer\n");
  scanf("%s", a);
 
  n = string_to_int(a);
 
  printf("String  = %s\nInteger = %d\n", a, n);
 
  return 0;
}
