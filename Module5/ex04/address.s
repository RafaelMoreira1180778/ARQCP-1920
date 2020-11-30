.section .text
	.global update_address
		
	update_address:
	# prologue
		pushl %ebp
		movl %esp, %ebp
		
		.equ ADDRESS_OFFSET, 124		# este valor vem do facto de a Structure ter:
# char(1*1) + short(1*2) + int(4*10) + char(1*80) = 123 ate chegar/encontrar o Address na Structure, na posicao 124
		
		movl 8(%ebp), %edx			# endereco da Structure passada por parametro
		movl 12(%ebp), %ecx			# endereco do Address a ser alocado, passado por parametro

		addl $ADDRESS_OFFSET, %edx	# adiciona/move o POINTER da Structure de modo a 'chegar' ao Address

		pushl %ecx
		pushl %edx
			call strcpy
		
	end:
		
	# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
