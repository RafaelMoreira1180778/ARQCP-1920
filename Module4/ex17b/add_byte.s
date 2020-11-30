.global add_byte
	add_byte:
		# prologue
		pushl %ebp
		movl %esp, %ebp
		# -----------------------------------------------------------------------------------------------------------------------------
		pushl %ebx
		pushl %edi

		movl 12(%ebp), %ebx 				# *vec1 em ebx
		movl 16(%ebp), %edi 				# *vec2 em edi
		movl $0, %edx						# limpar edx
		movl 8(%ebp), %edx 					# x em dl
			
		movl (%ebx), %ecx					# apontado por vec1 para ecx
		movl %ecx, (%edi) 					# numero de elementos do vec2 no apontado por vec2
		addl $4, %ebx						# incrementar vec1
		addl $4, %edi 						# incrementar vec2
		cmpl $0, %ecx 						# compara o num de elementos com 0
		je end								# se igual, jmp end (vetor nulo)
			
		loop:
		pushl %ecx							# guarda o valor atual de ecx
		movl $0, %ecx						# limpa ecx

		movl (%ebx), %eax 					# apontado por vec1 em eax
		movl (%ebx), %ecx 					# apontado por vec1 em cl
		addb %dl, %cl 						# (dl+cl) em cl

		shrl $8, %eax 						# shift right
		shll $8, %eax 						# shift left
		ORL %ecx, %eax 						# or
		movl %eax, (%edi) 					# resutado do or no valor apontado por edi

		addl $4, %ebx						# incrementar vec1
		addl $4, %edi						# incrementar vec2
		popl %ecx							# restaura o valor de ecx
		loop loop							# loop (semelhante a c)
		
		end:
		popl %edi
		popl %ebx
		# -----------------------------------------------------------------------------------------------------------------------------
		# epilogue
		movl %ebp, %esp
		popl %ebp
		ret
