#include <stdio.h>

int count(int arr[], int x, int n)
{
    int i = 0;
    int count = 0;
    for (i = 0; i <= n; i++)
    {
        if (arr[i] == x)
        {
            ++count;
        }
    }
    return count;
}

int main()
{
    int arr[] = {1, 2, 2, 3, 3, 3, 3, 4, 5, 5, 4, 3, 2, 6, 7, 5, 4};
    int x = 2;

    int n = sizeof(arr) / sizeof(arr[0]);
    int c = count(arr, x, n);
    printf("O número %d ocorre %d vezes no array.", x, c);
    return 0;
}
