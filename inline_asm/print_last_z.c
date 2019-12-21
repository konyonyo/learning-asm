#include <stdio.h>

// reference: https://developer.arm.com/tools-and-software/server-and-hpc/compile/arm-compiler-for-linux/resources/tutorials/writing-inline-sve-assembly
double last_of_z(double *x) {
  double res = 0;
  asm ("ptrue p0.d, ALL \n\
        ld1d z0.d, p0/z, [%[x], #0, MUL VL] \n\
        lasta %d[res], p0, z0.d"
        : [res] "=&w" (res)
        : [x] "r" (x)
        : "memory", "p0", "z0");
  return res;
}

int main() {
  double x[8];
  x[0] = 3.0;
  x[1] = 2.0;
  x[2] = 3.0;
  x[3] = 4.0;
  x[4] = 5.0;
  x[5] = 6.0;
  x[6] = 7.0;
  x[7] = 8.0;
  printf("last=%f\n", last_of_z(x));

  return 0;
}
