	.file	"math_func.cpp"
	.text
	.globl	_Z19calculate_factoriali
	.def	_Z19calculate_factoriali;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19calculate_factoriali
_Z19calculate_factoriali:
.LFB0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L2
.L3: 
	movl	-12(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L2: #условие цикла
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax № сравнение счетчика i с n
	jle	.L3 # если i <= n возвращаемся к L3
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
