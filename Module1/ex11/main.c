#include <stdio.h>
#include "palindrome.h"

int main()
{
    //The sentence to be checked
    //Casted in the form of a pointer
    char string = "abc";

    //char *str = "never odd or even";
    char *str = string;

    //Stores 1 if is palindrome and 0 if isn't
    int isPalindrome = palindrome(str);

    if (isPalindrome == 0)
    {
        printf("The sentence isn't a palindrome.\n");
    }
    else if (isPalindrome == 1)
    {
        printf("The sentence is a palindrome.\n");
    }

    return 0;
}
