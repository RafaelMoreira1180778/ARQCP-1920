.section .text
	.global rotate_left
        rotate_left:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------

		movl $0, %eax								# limpa eax
		movl $0, %ecx								# limpa ecx
		movl 8(%ebp), %eax							# move o num para eax
		movl 12(%ebp), %ecx							# move nBits a rodar para ecx

		roll %cl, %eax								# rotate sem carry n bits para a esquerda	

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret

    .global rotate_right
        rotate_right:
        # prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------

        movl $0, %eax								# limpa eax
		movl $0, %ecx								# limpa ecx
		movl 8(%ebp), %eax							# move o num para eax
		movl 12(%ebp), %ecx							# move nBits a rodar para ecx

		rorl %cl, %eax								# rotate sem carry n bits para a direita

		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
        