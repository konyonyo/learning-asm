  .text
  .align 2
  .p2align 3,,7
  .global main
  .type main, %function
main:
  stp x29, x30, [sp, -16]!
  adr x1, D0
  adr x2, D1
  adr x3, D2
  ptrue p0.d, all
  // LD1D(scalar plus immediate)
  ld1d z0.d, p0/z, [x1, #1, MUL VL]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldp x29, x30, [sp], 16
  ret
D0:
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.53478293
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 3.141516
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 1.0
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
D1:
  .double 2.0
D2:
  .double 3.0
str:
  .string "val=%lf\n"

