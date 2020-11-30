.section .text
	.global changes
		
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
							# o terceiro Byte de um INT, comeca no 17o bit e termina no 24o, subtraindo 20, obtemos os 4 mais significativos

		shrl %cl, %eax		# shift 20 bits para a direita da copia do apontador
		andl $15, %eax		# AND $15 com o valor (ja depois da deslocacao) coloca todos os bits a 0 exceto os ultimos 4
		
		cmpl $7, %eax		# verifica se os 4 bits menos significativos do segundo byte do apontado sao maiores que 7
		jg inverter

		jmp end


	inverter:
		movl $1, %ebx		# valor a deslocar os bits
		cmpb $24, %cl		# se chegar a 24 bits quer dizer que o loop acabou e que ja nao inverte mais bits
		je end

		shll %cl, %ebx		# deslocacao dos bits de %ebx, %cl 'vezes
		xorl %ebx, (%edx)	# o XOR deteta se os bits sao diferentes e se devem ser invertidos
		incb %cl			# incrementa o bit a ser lido
		jmp inverter
		
	end:
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret

