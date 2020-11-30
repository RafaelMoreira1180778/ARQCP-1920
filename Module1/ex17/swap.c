void swap(int *vec1, int *vec2, int size)
{
    //The index for 'for' cycle
    int i;
    //Temporary variable to store a value
    int temp;

    for (i = 0; i < size; i++)
    {
        temp = vec1[i];
        vec1[i] = vec2[i];
        vec2[i] = temp;
    }
}