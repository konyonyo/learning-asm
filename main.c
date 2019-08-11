#include <stdio.h>

void foo(double* x);

int main() {
  double x[];
  foo(x);
  printf("val=%lf\n", x);

  return 0;
}
