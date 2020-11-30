.section .text
	.global count_bits_zero
	
	count_bits_zero:
		# prologue
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %ecx		# numero a ser lido
		movl $32, %edx			# tamanho maximo do LOOP-FOR
		movl $0, %eax			# contador dos Zeros
		
		
		for_loop:
			cmpl $0, %edx		# se for igual, ja percorreu os bits todos
			je end
			
			movl %ecx, %ebx		# o valor a ser analisado esta em %ebx
			andl $1, %ebx		# faz o AND para extrair o bit menos significativo
			
			cmpl $0, %ebx		# compara $0 com o bit extraido anteriormente
			jne iterador		# se o Bit nao for $0, salta o incremento do %eax
			
			incl %eax			# se o Bit for $0 incrementa logo o %eax
			
		iterador:
			shrl %ecx			# desloca para a direita os bits
			decl %edx			# decrementa o numero de bits a percorrer
			
			jmp for_loop
		
		end:
		
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret
