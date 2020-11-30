.section .text
	.global activate_bit
	.global activate_2bits
	
	activate_bit:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
		pushl %esi
		
		movl 8(%ebp), %edx		# pointer para o numero recebido
		movl (%edx), %esi		# numero recebido
		movb 12(%ebp), %cl		# posição a ativar
		movl $1, %ebx			# numero de deslocacoes/shifts

		
		sal %cl, %ebx			# faz shift do numero, em 1 posicao para a esquerda
		and %ebx, %esi			# mascara AND verifica se o bit ja e 1
								# se o bit fosse 0, este prevalece no AND
		
		cmpl %ebx, %esi			# se o numero nao foi alterado (aka. igual) move 0 para %eax
			je num_igual
		
		xor %ebx, (%edx)		# a mascara XOR coloca 1 quando o bit e diferente ao comparado
		movl $1, %eax			# com a alteracao do numero move 1 para %eax
		jmp end
		
	num_igual:
		movl $0, %eax
		
	end:
		
		
		popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret



	activate_2bits:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %ecx			# apontador do numero a ativar
		movl 12(%ebp), %edx			# posição a ativar
		movl $31, %ebx				# distancia entre os 2 bits a serem ativados
		
		pushl %edx					# o %edx deve ser a primeira a dar POP porque e a que esta mais em cima na stack
									# isto determina os proximos PUSH e POP
		pushl %ecx
			call activate_bit
		popl %ecx
		popl %edx
		
		subl %edx, %ebx				# subtrai 31-Bit de modo a ativar o proximo Bit
		movl %ebx, %edx				# %edx deve conter o Bit a ser usado pela outra funcao
		
		pushl %edx
		pushl %ecx
			call activate_bit
		popl %ecx
		popl %edx
		
	end2:
		
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
