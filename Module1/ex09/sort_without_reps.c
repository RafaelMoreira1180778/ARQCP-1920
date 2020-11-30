int sort_without_reps(int *src, int n, int *dest)
{
    //Indexes used in 'for' cycle
    int i, j, k;

    //Current low and past low to keep in memory the two numbers to compare
    int currentLow, pastLow;

    //Counts the size that the function went into the array
    int sizeCounter = 0;

    //The number of elements placed in the dest array
    int numsPlaced = 0;

    //While the sizecounter is different from the array size
    //Means that the array is not yet in the end
    while (sizeCounter != n)
    {
        //For cycle into the dest array
        //ONLY copies the numbers in the correct order
        for (i = 0; i < n; ++i)
        {
            if (sizeCounter == 0 || src[i] > pastLow)
            {
                if (numsPlaced == sizeCounter || src[i] < currentLow)
                {
                    //Current low becomes the current value in source array
                    currentLow = src[i];

                    //The amount of numbers placed in dest array becomes the size ran by the function
                    //Keep in mind: both values start at 0
                    numsPlaced = sizeCounter;

                    //Places the number in the dest array
                    dest[numsPlaced] = currentLow;

                    //Increments the amount of numbers placed in array.
                    //Keep in mind: value becomes 0 in the first step of the 'for cycle'
                    ++numsPlaced;
                }
                //Checks if the number in the source is the same as the currentLow
                else if (src[i] == currentLow)
                {
                    dest[numsPlaced] = currentLow;
                    ++numsPlaced;
                }
            }
        }
        //updates the sizeCounter based on the amout of numbers placed
        //Example: 2 numbers placed = 2 positions read
        sizeCounter = numsPlaced;
        //Promotes the currentLow as pastLow
        pastLow = currentLow;
    }

    //for cycle in the destination array that resolves the duplicates
    for (i = 0; i < n; i++)
    {
        for (j = i + 1; j < n;)
        {
            if (dest[j] == dest[i])
            {
                for (k = j; k < n; k++)
                {
                    dest[k] = dest[k + 1];
                }
                n--;
            }
            else
            {
                j++;
            }
        }
    }

    return numsPlaced;
}