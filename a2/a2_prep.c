#include <stdio.h>
#include <stdint.h>

/* fill in return type */ 
int fn1(void) {
  /* fill in body */
  int a = 1, b = 5;
  long c = 0xffffffff;
  a = a * b;
  c = c + a;
  return c;
}

/* fill in return type */ int fn2 (/* fill in parameter list */int a, int b, int c) {
  /* fill in body */
    int max;
    if(a > b) 
        max = a;
    else
        max = b;
    if(c > max)
        max = c;
    return max;

}

/* fill in return type */ fn3 (/* fill in parameter list */long a) {
  /* fill in body */
  long b=0;
  int c=0;
  while(a > c)
  {
    b += c;
    c++;
  }
  return b;
}

/*
   you can run `gcc -S a2_prep.c` to get the file `a2_prep.s` which
   should resemble `a2_prep.S` if your solution is correct on cycle1.
*/

int main(void)
{
    return 0;
}