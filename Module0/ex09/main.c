#include <stdio.h>
#include <ctype.h>
#include <string.h>

int string_to_int(char *str)
{
  int i, n = 0;
  for (i = 0; str[i] >= '0' && str[i] <= '9'; i++)
    n = 10 * n + (str[i] - '0');
  return n;
}

int has_letters(char *str)
{
  int i, letras = 0;

  for (i = 0; str[i] != '\0'; i++)
  {
    if (isalpha(str[i]))
    {
      letras++;
    }
  }

  if (letras > 0)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}

void decompor_numero(int numero)
{
  int binario = 0;
  int octal = 0;
  int decimal = 0;

  while (numero > 0)
  {
    int valor = numero % 10;

    if (valor == 8 || valor == 9)
    {
      decimal++;
    }
    else if (valor > 1 && valor < 8)
    {
      octal++;
    }
    else if (valor >= 0 && valor < 2)
    {
      binario++;
    }

    numero = numero / 10;
    valor = -1;
  }

  if (decimal != 0)
  {
    printf("Base Decimal");
  }
  else if (octal != 0 && decimal == 0)
  {
    printf("Base Octal");
  }
  else if (binario != 0 && octal == 0 && decimal == 0)
  {
    printf("Base Binária");
  }
}

int main(void)
{
  char a[10];
  int n;

  printf("Qual o valor da String que pretende converter para Integer\n");
  scanf("%s", a);

  if (has_letters(a) == 1)
  {
    printf("Base Hexadecimal.");
  }
  else
  {

    n = string_to_int(a);
    decompor_numero(n);
  }
  return 0;
}
