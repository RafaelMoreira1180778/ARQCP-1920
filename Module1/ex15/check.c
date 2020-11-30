int check(int x, int y, int z)
{
    //If vec[i+2] > vec[i+1] and vec[i+1]>vec[i] then the condition vi < vi+1 < vi+2 is satisfied
    if (z > y && y > x)
    {
        //returns 1 if satisfied
        return 1;
    }

    //default return is 0 (not satisfied)
    return 0;
}