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
  ld1d z0.d, p0/z, [x1]
  ld1d z1.d, p0/z, [x2]
  ld1d z2.d, p0/z, [x3]
  fmla z0.d, p0/m, z1.d, z2.d
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldp x29, x30, [sp], 16
  ret
D0:
  .double 1.0
D1:
  .double 2.0
D2:
  .double 3.0
str:
  .string "val=%lf\n"

