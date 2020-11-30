#include <stdio.h>
int count_words(char *str)
{

    int posicao = 0;
    int numWords = 0;

    while (*str)
    {
        if (*str == ' ' || *str == '\n' || *str == '\t')
            posicao = 0;

        else if (posicao == 0)
        {
            posicao = 1;
            ++numWords;
        }
        ++str;
    }
    return numWords;
}

int main(void)
{
    char str[] = "Uma    Duas        Tres         Quatro  \n Cinco Palavras";
    int numPalavras = count_words(str);
    printf("Numero de palavras = %d", numPalavras);
    return 0;
}
