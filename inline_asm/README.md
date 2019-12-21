How to compile and execute
===

```
$ alias agcc
alias agcc='/home/XXXX/gcc-sve/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc'
$ agcc -march=armv8.2-a -static test.c
$ which qemu-aarch64
/home/XXXX/qemu-4.1.0-rc4/aarch64-linux-user/qemu-aarch64
$ qemu-aarch64 a.out
```
