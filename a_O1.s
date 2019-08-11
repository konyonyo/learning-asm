	.arch armv8-a+fp16+sve
	.file	"a.c"
	.text
	.align	2
	.global	foo
	.type	foo, %function
foo:
.LFB0:
	.cfi_startproc
	add	x6, x0, 80
	add	x8, x0, 880
	mov	x7, x0
	sub	x2, x2, x0
	b	.L2
.L8:
	add	x3, x3, 8
	cmp	x3, 80
	beq	.L4
.L6:
	add	x4, x1, x3
	mov	x0, x7
.L3:
	ldr	d0, [x0], 8   // x0+=8
	ldr	d1, [x4], 80
	fmul	d1, d0, d1
	ldr	d0, [x5, x3]
	fadd	d0, d0, d1
	str	d0, [x5, x3]
	cmp	x0, x6
	bne	.L3
	b	.L8
.L4:
	add	x7, x7, 80
	add	x6, x6, 80
	cmp	x6, x8
	beq	.L1
.L2:
	sub	x5, x6, #80
	add	x5, x2, x5
	mov	x3, 0
	b	.L6
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
