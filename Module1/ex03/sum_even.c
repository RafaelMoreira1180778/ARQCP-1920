int sum_even(int *p, int num)
{
    //The sum of the even numbers
    int sum = 0, i;

    //For cycle iterates through the vector
    for (i = 0; i < num; i++)
    {
        //Accesses the memory address and gets the value of the vector
        //Gets the rest of the division between the value in the vector and 2
        //If x % 2 == 0 -> x is an even number
        if (p[i] % 2 == 0)
        {
            //Keeps the sum in a variable
            sum += p[i];
        }
    }
    return sum;
}