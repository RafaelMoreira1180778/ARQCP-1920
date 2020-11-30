.section .text
	.global inc_and_square
		inc_and_square:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------

		movl 8(%ebp), %ecx							# move *v1 para ecx
		incl (%ecx)									# incrementa o valor apontado por *v1

		movl 12(%ebp), %eax							# move v2 para eax
		imull 12(%ebp), %eax						# v2*v2 square

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
