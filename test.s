	.arch armv8-a+fp16+sve
	.file	"test.c"
	.text
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
	.global	main
	.type	main, %function
main:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	fmov	d0, 5.0e-1
	adrp	x0, .LC0
	mov	x29, sp
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"x=%lf\n"
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
