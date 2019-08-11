Learning assembly language
===

## Prerequisite

OS is Linux. My environment is `x86_64`, Ubuntu 18.04.

### Environment setting for AArch64 assembly program

1. Download and install [ARM cross compiler](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads)
2. Download and install [qemu](https://www.qemu.org/download/)
3. Write asembly program e.g. fmla.s
4. Compile the assembly program by ARM cross compiler
5. Execute the executable by qemu


## How to assemble and execute assembly program

```
$ agcc=./gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
$ agcc -march=armv8-a+sve -static fmla.s
$ qemu=./qemu-4.1.0-rc4/aarch64-linux-user/qemu-aarch64
$ qemu a.out
```

## Example

fmla.s

```
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
```

result

```
$ qemu-aarch64 a.out
val=7.000000
```

