  .text
  .align 2
  .p2align 3,,7
  .global main
  .type main, %function
main:
  stp x29, x30, [sp, #-16]!
  adr x1, D0
  adr x2, D1
  adr x3, D2
  ptrue p0.d, all
  ld1d z0.d, p0/z, [x1]
  ld1d z1.d, p0/z, [x2]
  ld1d z2.d, p0/z, [x3]
  fmla z0.d, p0/m, z1.d, z2.d
  add x4, sp, #24
  st1d z0.d, p0, [x4]
  ldr d0, [x4]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #32]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #40]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #48]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #56]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #64]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #72]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldr d0, [sp, #80]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf
  ldp x29, x30, [sp], #16
  ret
D0:
  .double 1.0
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
D1:
  .double 2.0
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
D2:
  .double 3.0
  .double 4.0
  .double 5.0
  .double 6.0
  .double 7.0
  .double 8.0
  .double 9.0
  .double 10.0
str:
  .string "val=%lf\n"

