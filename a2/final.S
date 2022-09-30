	.file	"a2_prep.c"
	.text
	.globl	fn1
	.type	fn1, @function
fn1:
.LFB0:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movl	$1, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
.LCFI2:
	ret
.LFE0:
	.size	fn1, .-fn1
	.globl	fn2
	.type	fn2, @function
fn2:
.LFB1:
	pushq	%rbp
.LCFI3:
	movq	%rsp, %rbp
.LCFI4:
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L4
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L4:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.L5:
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L6
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	popq	%rbp
.LCFI5:
	ret
.LFE1:
	.size	fn2, .-fn2
	.globl	fn3
	.type	fn3, @function
fn3:
.LFB2:
	pushq	%rbp
.LCFI6:
	movq	%rsp, %rbp
.LCFI7:
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L9
.L10:
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(% rbp)
	addl	$1, -12(%rbp)
.L9:
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -24(%rbp)
	jg	.L10
	movq	-8(%rbp), %rax
	popq	%rbp
.LCFI8:
	ret
.LFE2:
	.size	fn3, .-fn3
	.globl	main
	.type	main, @function
main:
.LFB3:
	pushq	%rbp
.LCFI9:
	movq	%rsp, %rbp
.LCFI10:
	movl	$0, %eax
	popq	%rbp
.LCFI11:
	ret

