	.file	"cp_2.c"
	.section	.rodata
.LC0:
	.string	"Enter any number (>0) :: "
.LC1:
	.string	"%d"
.LC2:
	.string	"INPUT NUMBER IS NOT PRIME"
.LC3:
	.string	"INPUT NUMBER IS PRIME"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L2
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	movl	$2, -12(%rbp)
	jmp	.L4
.L7:
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L5
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L6
.L5:
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L7
.L6:
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L3
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L3:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
