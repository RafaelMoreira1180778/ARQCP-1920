.section .text
	.global count_bits_zero
	.global vec_count_bits_zero
	
	count_bits_zero:
		pushl %ebp
		movl %esp, %ebp
	
		pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		
		movl 8(%ebp), %ecx		# numero a ser lido
		movl $0, %eax
		movl $32, %edx
		
		loop:
			cmpl $0, %edx		# se for igual, ja percorreu os bits todos
			je end1

		movl %ecx, %ebx			# o valor a ser analisado esta em %ebx
		and $1, %ebx			# faz o AND para extrair o bit menos significativo

		cmpl $0, %ebx
		jne iterador			# se o Bit nao for $0, salta o incremento do %eax
			
		incl %eax				# se o Bit for $0 incrementa logo o %eax

		iterador:
			shr %ecx
			decl %edx

			jmp loop


		end1:
		
		
	#	popl %esi
	#	popl %edi
		popl %ebx

		movl %ebp, %esp
		popl %ebp
	
		ret



	vec_count_bits_zero:
		pushl %ebp
		movl %esp, %ebp

		pushl %ebx
		pushl %esi
		pushl %edi


		movl 8(%ebp), %edi
		movl $0, %ebx
		movl $0, %esi

		loop1:
			cmpl %ebx, 12(%ebp)		# se for igual, ja percorreu os bits todos
			je end2

		movl (%edi), %ecx			# o valor a ser analisado esta em %ecx
									# (o qual e passado como parametro para a proxima funcao)

		pushl %ecx					# PUSH pois %ecx e usado no CALL
			call count_bits_zero
		popl %ecx					# POP para ir buscar novamente o %ecx

		addl %eax, %esi				# quantidade de $0 em %esi
		
		incl %ebx					# incrementa o contador do Array
		addl $4, %edi				# salta para o proximo INT do vetor, a ser lido
		jmp loop1					# retorna ao LOOP para contar os Bit igual a 0

		end2:
		movl %esi, %eax				# move a contagem final para %eax para dar o retorno final


		popl %edi
		popl %esi
		popl %ebx

		movl %ebp, %esp
		popl %ebp

		ret
