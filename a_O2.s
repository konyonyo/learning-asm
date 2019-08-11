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
	mov	x7, x0
	add	x6, x0, 80   // c[0] == a[0] + 80byte
	sub	x2, x2, x0
	add	x8, x0, 880
.L2:
	sub	x5, x6, #80   // x5 = x0 + 80 - 80 = x0
	mov	x4, 0
	add	x5, x2, x5    // x5 = x2 - x0 + x0 = x2
	.p2align 3
.L6:
	add	x3, x1, x4
	mov	x0, x7
	ldr	d0, [x5, x4]  // d0 == c
	.p2align 3
.L3:
	ldr	d2, [x0], 8   // d2 == a   x0+=8
	ldr	d1, [x3], 80  // d1 == b
	cmp	x6, x0   // x6 == x0 + 80
	fmadd	d0, d2, d1, d0   // d0 = d2 * d1 + d0
	str	d0, [x5, x4]
	bne	.L3          // kのloop先頭へ
	add	x4, x4, 8
	cmp	x4, 80
	bne	.L6         // jのloop先頭へ 
	add	x6, x6, 80
	add	x7, x7, 80
	cmp	x6, x8      // x6とx0+880を比較
	bne	.L2    // iのloop先頭へ
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.ident	"GCC: (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36)) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
