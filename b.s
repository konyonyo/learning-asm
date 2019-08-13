	.arch armv8-a+fp16+sve
	.file	"b.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"x=%lf\n"
	.align	3
.LC1:
	.string	"y=%lf\n"
	.align	3
.LC2:
	.string	"z=%lf\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	fmov	d0, 1.0e+0
	str	d0, [sp, 40]
	fmov	d0, 2.0e+0
	str	d0, [sp, 32]
	fmov	d0, 3.0e+0
	str	d0, [sp, 24]
	ldr	d0, [sp, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	d0, [sp, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
