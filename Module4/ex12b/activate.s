.section .text
	.global activate_bit
	
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
