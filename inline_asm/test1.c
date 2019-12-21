#include <stdio.h>

int f() {
  int result;
  asm ("movz %w[res], #10" : [res] "=r" (result));
  return result;
}

int f2()
{
   int result;
   asm("movz %w[res], %[value]" : [res] "=r" (result) : [value] "i" (314));
   return result;
}

int main() {
  printf("result=%d\n", f());
  printf("result=%d\n", f2());

  return 0;
}

