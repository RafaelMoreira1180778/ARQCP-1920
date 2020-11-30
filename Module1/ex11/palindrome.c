#include <stdio.h>
#include <string.h>

int palindrome(char *str)
{
    //The size of the sentence
    int j = strlen(str) - 1;

    //The indexes used for 'While' cycle
    int i;

    //An empty vector is a palindrome
    if (str[0] == '\0')
    {
        return 1;
    }

    while (j > i)
    {
        //If the char starting from the beginning is a ',' 'space' or '.' the cycle moves another position in the string inwards
        if (str[i] == ',' || str[i] == ' ' || str[i] == '.')
        {
            i++;
        }

        //If the char starting from the end is a ',' 'space' or '.' the cycle moves another position in the string backwards
        else if (str[j] == ',' || str[j] == ' ' || str[j] == '.')
        {
            j--;
        }

        //If the char in lowercase is different from the same position on the other end of the string the string is not a palindrome
        else if (tolower(str[i]) != tolower(str[j]))
        {
            return 0;
        }

        //If none of the above 'ifs' is verified the cycle will check the next position as so:
        // - > positions to check | int and j > positions being checked
        // i---------j
        // -i-------j-
        // --i----j--
        else
        {
            i++;
            j--;
        }
    }

    //if no positions differ the sentence is a palindrome
    return 1;
}
