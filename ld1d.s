// assemble & execute command
// $ agcc -static -march=armv8-a+sve ld1d.s
// $ qemu-aarch64 -cpu max,sve-max-vq=2 a.out
// expected output
// val=5.534783
// val=5.534783
// val=5.534783
// val=5.534783
// val=5.534783
  .text
  .align 2
  .p2align 3,,7
  .global main
  .type main, %function
main:
  stp x29, x30, [sp, -16]!
  adr x1, D0
  ptrue p0.d, all
  // LD1D(scalar plus immediate)
  ld1d z0.d, p0/z, [x1, #1, mul vl]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf


  adr x1, D0
  adr x2, I0
  ld1d z1.d, p0/z, [x2]
  // LD1D(scalar plus vector)
  // 64bit unscaled offset
  ld1d z0.d, p0/z, [x1, z1.d]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf

  adr x1, D0
  adr x2, I1
  ld1d z1.d, p0/z, [x2]
  // LD1D(scalar plus vector)
  // 64bit scaled offset
  ld1d z0.d, p0/z, [x1, z1.d, lsl #3]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf

  adr x1, D0
  add x1, x1, #40
  adr x2, I2
  ld1d z1.d, p0/z, [x2]
  // LD1D(scalar plus vector)
  // 32bit unscaled offset
  ld1d z0.d, p0/z, [x1, z1.d, sxtw]
  adrp x0, str
  add x0, x0, :lo12:str
  bl printf

  adr x1, D0
  add x1, x1, #40
  adr x2, I3
  ld1d z1.d, p0/z, [x2]
  // LD1D(scalar plus vector)
  // 32bit scaled offset
  ld1d z0.d, p0/z, [x1, z1.d, sxtw #3]
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
I0:
  .long 0x20, 0x0
  .long 0x10, 0x0
  .long 0x18, 0x0
  .long 0x20, 0x0
I1:
  .long 0x4, 0x0
  .long 0x2, 0x0
  .long 0x3, 0x0
  .long 0x4, 0x0
I2:
  .long -8, 0
  .long -16, 0
  .long -24, 0
  .long -32, 0
I3:
  .long -1, 0
  .long -2, 0
  .long -3, 0
  .long -4, 0
str:
  .string "val=%lf\n"

