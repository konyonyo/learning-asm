	.text
	.file	"a.c"
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	cmpl	$10, -28(%rbp)
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	cmpl	$10, -32(%rbp)
	jge	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -36(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$10, -36(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	popq	%rbp
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
