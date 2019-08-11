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


## How to assemble and Execute assembly program

```
$ agcc=./gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
$ agcc -march=armv8-a+sve -static fmla.s
$ qemu=./qemu-4.1.0-rc4/aarch64-linux-user/qemu-aarch64
$ qemu a.out
```

