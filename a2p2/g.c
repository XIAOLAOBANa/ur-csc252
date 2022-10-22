

void gp(int * a, int n)
{
    int i=0, flag=0;
    a[0] = 2;
    i = 1;
    int base = 3;
    while(i < n && base < n*n)
    {
        int flag = 1, j = 0;
        while(j < i)
        {
            if(a[j] % base)
                j++;
            else
            {
                flag = 0;
                break;
            }       
        }            
        if (flag)
            a[++i] = base;
        base += 2;
    }
    return;
    
}