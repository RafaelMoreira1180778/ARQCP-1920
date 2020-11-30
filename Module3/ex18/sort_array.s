.section .data
	.global num
	.global ptrsrc
	.global ptrdest

.section .text
	.global exists

	exists:

	# prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	pushl %esi
	pushl %edi

	movl ptrdest, %esi		# o pointer para o Array inicial esta em %esi
	movl num, %edi			# o tamanho do Array_Inicial esta em %edi

	check_element:			# incia o Loop apra verificar se o valor ja existe
		movl $0, %eax		# assumimos que o valor e Unico
		cmpl $0, %edi		# se o %edi for 0 entao o Array chegou ao fim
		je end1

		cmpl (%esi), %ecx		# compara o valor do apontador com o valor a ser comparado,
								# valor esse que vem da funcao sort_without_reps (linha 162)
		je is_in_array
		
		decl %edi			# decrementa o contador
		addl $4, %esi		# avanca para o proximo valor no Array
		jmp check_element	# volta ao iniico do loop para repetir o processo

	is_in_array:
		movl $1, %eax		# altera o 0 de %eax para 1, para mostrar que o valor ja existe

	end1:

	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp
	popl %ebp

	ret



	.global sort_two_elements

	sort_two_elements:		# esta funcao altera a ordem de 2 elementos no Array ...

	# prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %esi
	pushl %edi

	movl (%ecx), %esi
	movl (%edx), %edi
	movl %esi, (%edx)
	movl %edi, (%ecx)

	popl %edi
	popl %esi

	# epilogue
	movl %ebp, %esp
	popl %ebp

	ret						# ... esta funcao alterou a ordem de 2 elementos no Array



	.global sort_ascending_order

	sort_ascending_order:

	# prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	pushl %esi
	pushl %edi

	movl ptrdest, %ecx		# coloca o pointer do Array de destino em %ecx
	movl %ecx, %edx			# copia o pointer do Array de destino para o %edx
	movl $0, %edi			# inicia um contador para o Array de destino
	movl $0, %esi			# inicia um contador para o Array de inicio
	
	subl $1, %eax			# subtrai 1 ao %eax (que vem de outra funcao) de modo a
							# prevenir que o numero se compare a ele proprio
	cmpl $-1, %eax			# se o %eax for negativo significa que o Array ja acabou
	je end2

	check_sort:
		cmpl %edi, %eax		# verifica se o Array de destino ja chegou ao fim
		je end2				# salta para o fim em caso afirmativo

	check_sort_2:
		cmpl %esi, %eax		# verifica se o Array de inicio ja chegou ao fim
		jne sort			# salta para a Ordenacao em caso negativo
	
	incl %edi				# incrementa o contador do Array de destino
	addl $4, %ecx			# passa para o proximo valor a ser comparado
	movl %ecx, %edx
	subl $1, %esi			# retrocede no Array de destino de modo a fazer uma nova verificacao
	jmp check_sort

	sort:
		addl $4, %edx		# salta para o proximo valor no array de origem
		movl (%ecx), %ebx	# o valor presente no Array de destino e copiado
		cmpl %ebx, (%edx)	# compara-se o valor do Destino com o de Origem
		jl sort_elements	# se o de Origem for menor faz-se a ordenacao
	jmp increment3

	sort_elements:
		call sort_two_elements

	increment3:
		incl %esi			# incrementa o contador do Array de inicio 
		jmp check_sort_2

	end2:

	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp
	popl %ebp

	ret



	.global sort_without_reps

	sort_without_reps:

	# prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	pushl %esi
	pushl %edi

	movl ptrsrc, %esi		# o Array inicial esta em %esi
	movl ptrdest, %edi		# o Array final esta em %edi
	movl $0, %edx			# contador de numeros unicos
	movl num, %ebx			# contador de posicoes do Array a ser decrementado

	check_reps:
	cmpl $0, %ebx			# o vetor ja foi todo lido
	je sort1				# salta para a ordenacao

	movl (%esi), %ecx		# o valor apontado esta em %ecx
		call exists			# vai a funcao Exists verificar se o valor apontado existe
	cmpl $0, %eax			# se o %eax for 0, quer dizer que o valor e unico
	je copy
	jmp increment2

	copy:
		movl %ecx, (%edi)	# o valor Unico encontrado e copiado para o Array final
		addl $4, %edi		# salta para o proximo INT no Array final
		incl %edx			# incrementa o valor de Valores_Unicos presentes

	increment2:
		addl $4, %esi		# avanca para o proximo valor no Array inicial
		decl %ebx			# decrementa o valor de NUM (%ebx)
		jmp check_reps		# volta ao inicio do Loop para ler o proximo valor

	sort1:
		movl %edx, %eax		# guarda o valor de %edx (quantidade de valores unicos) em %eax
		pushl %edx			# guarda o registo %edx na Stack
			call sort_ascending_order
		popl %edx			# vai buscar o %edx a Stack
		movl %edx, %eax

	end3:

	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp
	popl %ebp

	ret
