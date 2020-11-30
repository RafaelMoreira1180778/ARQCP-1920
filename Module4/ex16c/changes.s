.section .text
	.global changes
	.global changes_vec
		
	changes:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %edx	# pointer passado na funcao
		movl (%edx), %eax	# valor do pointer
		movb $20, %cl		# valor do numero de bits a deslocar	

		shrl %cl, %eax		# shift 20 bits para a direita da copia do apontador
		andl $15, %eax		# AND $15 com o valor (ja depois da deslocacao) coloca todos os bits a 0 exceto os ultimos 4
		
		cmpl $7, %eax		# verifica se os 4 bits menos significativos do segundo byte do apontado sao maiores que 7
		jg inverter

		jmp end1


	inverter:
		movl $1, %ebx		# valor a deslocar os bits
		cmpb $24, %cl		# se chegar a 24 bits quer dizer que o loop acabou e que ja nao inverte mais bits
		je end1

		shll %cl, %ebx		# deslocacao dos bits de %ebx, %cl 'vezes
		xorl %ebx, (%edx)	# o XOR deteta se os bits sao diferentes e se devem ser invertidos
		incb %cl			# incrementa o bit a ser lido
		jmp inverter
		
	end1:
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret



	changes_vec:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
	#	pushl %ebx
	#	pushl %edi
	#	pushl %esi

		movl 8(%ebp), %edx	# vetor de inteiros passado por parametro
		movl 12(%ebp), %ecx	# numero de inteiros no vetor

	loop:
		cmpl $0, %ecx		# compara o contador com 0 - se for 0, entao chegou ao fim do vetor
		je end2

		pushl %ecx
		pushl %edx
			call changes
		popl %edx
		popl %ecx

		addl $4, %edx		# salta $4 de modo a ler o proximo INT do vetor,
							# em %edx esta o INT que e passado para a outra funcao
		decl %ecx			# decrementa o contador
		jmp loop

	end2:
		
	#	popl %esi
	#	popl %edi
	#	popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
	
