#include<stdio.h>
#include "a.h"

int ask(void)
{
    int t, num;
    puts("Press CTRL+C to exit.");
    do{
        printf("Enter a positive integer for key size: ");
        t = scanf("%d", &num);
        if(t == 0)
        {
            puts("Sorry, did not understand your input. Repeating question."); 
        }
        else
        {
            if(num <= 4)
                puts("Whoops! That's too small. Please enter a higher number!");
            else if(num > NP)
                puts("Whoops! That's too big. Please enter a smaller number!");
            else
            {
                printf("%d is just right!\n", num);
                break;
            }    
        }
    }while(1);
    
    return num;
}