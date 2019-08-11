	.arch armv8-a+fp16+sve
	.file	"a.c"
	.text
	.align	2
	.p2align 3,,7
	.global	foo
	.type	foo, %function
foo:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	cntb	x15
	addvl	x14, x1, #1
	ptrue	p0.d, all
	mov	x29, sp
	neg	x15, x15
	addvl	x30, x1, #1
	addvl	x18, x1, #1
	addvl	x17, x1, #1
	addvl	x16, x1, #1
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	addvl	x19, x1, #1
	addvl	x20, x1, #2
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	addvl	x22, x1, #3
	addvl	x21, x1, #4
	mov	x11, 10
	cntd	x3
	add	x15, x15, 80
	addvl	x7, x2, #1
	addvl	x10, x2, #4
	addvl	x8, x2, #2
	addvl	x9, x2, #3
	mov	x6, x2
	add	x13, x1, 80
	add	x14, x14, 720
	add	x19, x19, 80
	add	x30, x30, 160
	add	x18, x18, 240
	add	x17, x17, 320
	add	x16, x16, 400
	add	x20, x20, 80
	add	x22, x22, 80
	add	x21, x21, 80
	whilelo	p2.d, x3, x11
	mov	x12, 0
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	b	.L2
.L6:
	whilelo	p1.d, xzr, x11
	ld1d	z1.d, p1/z, [x1]
	ld1rd	z17.d, p0/z, [x3]
	ld1rd	z16.d, p0/z, [x3, 8]
	ld1rd	z18.d, p0/z, [x3, 16]
	ld1rd	z7.d, p0/z, [x3, 24]
	ld1rd	z6.d, p0/z, [x3, 32]
	ld1rd	z5.d, p0/z, [x3, 40]
	ld1rd	z4.d, p0/z, [x3, 48]
	ld1rd	z3.d, p0/z, [x3, 56]
	ld1rd	z2.d, p0/z, [x3, 64]
	ld1d	z0.d, p1/z, [x6]
	fmla	z0.d, p0/m, z17.d, z1.d
	ld1rd	z1.d, p0/z, [x3, 72]
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x13]
	add	x27, x1, 160
	fmla	z0.d, p0/m, z16.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x27]
	add	x26, x1, 240
	fmla	z0.d, p0/m, z18.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x26]
	add	x25, x1, 320
	fmla	z0.d, p0/m, z7.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x25]
	add	x24, x1, 400
	fmla	z0.d, p0/m, z6.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x24]
	add	x23, x1, 480
	fmla	z0.d, p0/m, z5.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x23]
	add	x5, x1, 560
	fmla	z0.d, p0/m, z4.d, z19.d
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x5]
	add	x4, x1, 640
	fmla	z0.d, p0/m, z19.d, z3.d
	add	x3, x1, 720
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x4]
	addvl	x5, x1, #1
	fmla	z0.d, p0/m, z19.d, z2.d
	addvl	x4, x1, #1
	st1d	z0.d, p1, [x6]
	ld1d	z19.d, p1/z, [x3]
	addvl	x3, x1, #1
	fmla	z0.d, p0/m, z19.d, z1.d
	st1d	z0.d, p1, [x6]
	ptest	p0, p2.b
	add	x5, x5, 480
	add	x4, x4, 560
	add	x3, x3, 640
	beq	.L4
	ld1d	z19.d, p2/z, [x1, #1, mul vl]
	ld1d	z0.d, p2/z, [x7]
	fmla	z0.d, p0/m, z17.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x19]
	fmla	z0.d, p0/m, z19.d, z16.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x30]
	fmla	z0.d, p0/m, z19.d, z18.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x18]
	fmla	z0.d, p0/m, z7.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x17]
	fmla	z0.d, p0/m, z6.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x16]
	fmla	z0.d, p0/m, z5.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x5]
	fmla	z0.d, p0/m, z4.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x4]
	fmla	z0.d, p0/m, z3.d, z19.d
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x3]
	cntw	x3
	fmla	z0.d, p0/m, z2.d, z19.d
	whilelo	p1.d, x3, x11
	addvl	x28, x1, #2
	addvl	x26, x1, #2
	addvl	x25, x1, #2
	addvl	x24, x1, #2
	addvl	x23, x1, #2
	addvl	x5, x1, #2
	addvl	x4, x1, #2
	addvl	x3, x1, #2
	st1d	z0.d, p2, [x7]
	ld1d	z19.d, p2/z, [x14]
	fmla	z0.d, p0/m, z1.d, z19.d
	st1d	z0.d, p2, [x7]
	add	x28, x28, 160
	add	x26, x26, 240
	add	x25, x25, 320
	add	x24, x24, 400
	add	x23, x23, 480
	add	x5, x5, 560
	add	x4, x4, 640
	add	x3, x3, 720
	beq	.L4
	ld1d	z19.d, p1/z, [x1, #2, mul vl]
	ld1d	z0.d, p1/z, [x8]
	fmla	z0.d, p0/m, z17.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x20]
	fmla	z0.d, p0/m, z16.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x28]
	fmla	z0.d, p0/m, z18.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x26]
	fmla	z0.d, p0/m, z7.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x25]
	fmla	z0.d, p0/m, z6.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x24]
	fmla	z0.d, p0/m, z5.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x23]
	fmla	z0.d, p0/m, z4.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x5]
	fmla	z0.d, p0/m, z3.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x4]
	fmla	z0.d, p0/m, z2.d, z19.d
	st1d	z0.d, p1, [x8]
	ld1d	z19.d, p1/z, [x3]
	cntd	x3, all, mul #3
	fmla	z0.d, p0/m, z1.d, z19.d
	addvl	x28, x1, #3
	addvl	x26, x1, #3
	addvl	x25, x1, #3
	addvl	x24, x1, #3
	addvl	x23, x1, #3
	addvl	x5, x1, #3
	addvl	x4, x1, #3
	st1d	z0.d, p1, [x8]
	whilelo	p1.d, x3, x11
	addvl	x3, x1, #3
	add	x28, x28, 160
	add	x26, x26, 240
	add	x25, x25, 320
	add	x24, x24, 400
	add	x23, x23, 480
	add	x5, x5, 560
	add	x4, x4, 640
	add	x3, x3, 720
	beq	.L4
	ld1d	z19.d, p1/z, [x1, #3, mul vl]
	ld1d	z0.d, p1/z, [x9]
	fmla	z0.d, p0/m, z17.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x22]
	fmla	z0.d, p0/m, z16.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x28]
	fmla	z0.d, p0/m, z18.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x26]
	fmla	z0.d, p0/m, z7.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x25]
	fmla	z0.d, p0/m, z6.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x24]
	fmla	z0.d, p0/m, z5.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x23]
	fmla	z0.d, p0/m, z4.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x5]
	fmla	z0.d, p0/m, z3.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x4]
	fmla	z0.d, p0/m, z2.d, z19.d
	st1d	z0.d, p1, [x9]
	ld1d	z19.d, p1/z, [x3]
	cnth	x3
	fmla	z0.d, p0/m, z1.d, z19.d
	addvl	x28, x1, #4
	addvl	x26, x1, #4
	addvl	x25, x1, #4
	addvl	x24, x1, #4
	addvl	x23, x1, #4
	addvl	x5, x1, #4
	addvl	x4, x1, #4
	st1d	z0.d, p1, [x9]
	whilelo	p1.d, x3, x11
	addvl	x3, x1, #4
	add	x28, x28, 160
	add	x26, x26, 240
	add	x25, x25, 320
	add	x24, x24, 400
	add	x23, x23, 480
	add	x5, x5, 560
	add	x4, x4, 640
	add	x3, x3, 720
	beq	.L4
	ld1d	z0.d, p1/z, [x10]
	ld1d	z19.d, p1/z, [x1, #4, mul vl]
	fmad	z17.d, p0/m, z19.d, z0.d
	st1d	z17.d, p1, [x10]
	ld1d	z0.d, p1/z, [x21]
	fmad	z16.d, p0/m, z0.d, z17.d
	st1d	z16.d, p1, [x10]
	ld1d	z0.d, p1/z, [x28]
	fmad	z18.d, p0/m, z0.d, z16.d
	st1d	z18.d, p1, [x10]
	ld1d	z0.d, p1/z, [x26]
	fmad	z7.d, p0/m, z0.d, z18.d
	st1d	z7.d, p1, [x10]
	ld1d	z0.d, p1/z, [x25]
	fmad	z6.d, p0/m, z0.d, z7.d
	st1d	z6.d, p1, [x10]
	ld1d	z0.d, p1/z, [x24]
	fmad	z5.d, p0/m, z0.d, z6.d
	st1d	z5.d, p1, [x10]
	ld1d	z0.d, p1/z, [x23]
	fmad	z4.d, p0/m, z0.d, z5.d
	st1d	z4.d, p1, [x10]
	ld1d	z0.d, p1/z, [x5]
	fmad	z3.d, p0/m, z0.d, z4.d
	st1d	z3.d, p1, [x10]
	ld1d	z0.d, p1/z, [x4]
	fmad	z2.d, p0/m, z0.d, z3.d
	st1d	z2.d, p1, [x10]
	ld1d	z0.d, p1/z, [x3]
	fmla	z2.d, p0/m, z1.d, z0.d
	st1d	z2.d, p1, [x10]
.L4:
	add	x12, x12, 80
	add	x6, x6, 80
	cmp	x12, 800
	add	x7, x7, 80
	add	x10, x10, 80
	add	x8, x8, 80
	add	x9, x9, 80
	beq	.L1
.L2:
	mov	x3, x0
	add	x4, x7, x15
	cmp	x3, x4
	add	x0, x0, 80
	ccmp	x6, x0, 2, cc
	cset	w5, cs
	cmp	x14, x6
	ccmp	x1, x7, 2, hi
	cset	w4, cs
	tst	w5, w4
	bne	.L6
	add	x5, x2, x12
	mov	x4, x1
	.p2align 3
.L3:
	ldr	d2, [x4]
	add	x4, x4, 8
	ldr	d0, [x3]
	ldr	d1, [x5]
	fmadd	d0, d0, d2, d1
	str	d0, [x5]
	ldr	d1, [x3, 8]
	ldr	d2, [x4, 72]
	fmadd	d0, d1, d2, d0
	str	d0, [x5]
	ldr	d2, [x3, 16]
	ldr	d1, [x4, 152]
	fmadd	d1, d1, d2, d0
	str	d1, [x5]
	ldr	d2, [x3, 24]
	ldr	d0, [x4, 232]
	fmadd	d1, d0, d2, d1
	str	d1, [x5]
	ldr	d2, [x3, 32]
	ldr	d0, [x4, 312]
	fmadd	d0, d0, d2, d1
	str	d0, [x5]
	ldr	d2, [x3, 40]
	ldr	d1, [x4, 392]
	fmadd	d0, d1, d2, d0
	str	d0, [x5]
	ldr	d1, [x3, 48]
	ldr	d2, [x4, 472]
	fmadd	d1, d1, d2, d0
	str	d1, [x5]
	ldr	d0, [x3, 56]
	ldr	d2, [x4, 552]
	fmadd	d1, d0, d2, d1
	str	d1, [x5]
	ldr	d0, [x3, 64]
	ldr	d2, [x4, 632]
	fmadd	d0, d0, d2, d1
	str	d0, [x5]
	ldr	d2, [x3, 72]
	ldr	d1, [x4, 712]
	cmp	x4, x13
	fmadd	d0, d1, d2, d0
	str	d0, [x5], 8
	bne	.L3
	add	x12, x12, 80
	add	x6, x6, 80
	cmp	x12, 800
	add	x7, x7, 80
	add	x10, x10, 80
	add	x8, x8, 80
	add	x9, x9, 80
	bne	.L2
.L1:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
