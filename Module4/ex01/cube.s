.section .text
	.global cube
		cube:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------

		movl 8(%ebp), %eax							# move o parâmetro da função para eax

		imull %eax, %eax							# x^2
		imull 8(%ebp), %eax							# x^3

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
