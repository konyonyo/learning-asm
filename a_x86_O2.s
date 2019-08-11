	.text
	.file	"a.c"
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	leaq	(%r8,%r8,4), %rax
	shlq	$4, %rax
	leaq	(%rdi,%rax), %r9
	addq	%rdi, %rax
	addq	$8, %rax
	movq	$-10, %rcx
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%r9), %xmm0            # xmm0 = mem[0],zero
	mulsd	80(%rsi,%rcx,8), %xmm0
	addsd	80(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, 80(%rdx,%rcx,8)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	160(%rsi,%rcx,8), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rdx,%rcx,8)
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	240(%rsi,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rdx,%rcx,8)
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	320(%rsi,%rcx,8), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rdx,%rcx,8)
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	400(%rsi,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rdx,%rcx,8)
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	480(%rsi,%rcx,8), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rdx,%rcx,8)
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	560(%rsi,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rdx,%rcx,8)
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	640(%rsi,%rcx,8), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rdx,%rcx,8)
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	720(%rsi,%rcx,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rdx,%rcx,8)
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	800(%rsi,%rcx,8), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rdx,%rcx,8)
	addq	$1, %rcx
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %r8
	addq	$80, %rdx
	cmpq	$10, %r8
	jne	.LBB0_1
# %bb.4:
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
