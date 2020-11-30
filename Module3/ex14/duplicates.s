.section .data
	.global num
	.global x
	.global ptrvec			# apontador para INT do vec

.section .text
	.global exists # int exists(void)
	.global vec_diff # int vec_diff(void)
		
	exists:
	
		#prologue
		pushl %ebp
		movl %esp, %ebp
		
		pushl %edi
		pushl %ebx
		
		
		movl $0, %edi			# registo de contagem de Presenças do numero X
		movl ptrvec, %ecx		# passa o endereco do Array para %ecx
		movl num, %edx			# inicia com o numero de elementos do Array e decrementa a cada iteracao
		movw x, %bx				# move o valor a verificar para %bx
		movl $0, %eax			# por predifinição, X não tem duplos
		
		exists_repetido:
			cmpl $2, %edi		# verifica se o numero aparece pelo menos 2x
			je present
		
		cmpl $0, %edx			# verifica se o Array chegou ao fim
		je end					# salta para o fim caso seja igual
		
		cmpw %bx, (%ecx)		# compara o valor de X com o valor em ecx
		je found				# salta para found caso seja igual
		
		addl $2, %ecx			# "anda para a frente" no vetor
		decl %edx				# decrementa o Array
		jmp exists_repetido		# volta para o inicio do loop
		
		found:
			addl $2, %ecx			# passa para o proximo valor do Array de shorts
			addl $1, %edi			# incrementa o contador de vezes que X aparece 
			decl %edx				# decrementa o Array
			jmp exists_repetido		# volta para o inicio do loop
		
		present:
			movl $1, %eax		# move $1 para %eax ja que o X se repete no Array
	
		end:
		

		popl %ebx
		popl %edi
		
		#epilogue		
		movl %ebp, %esp
		popl %ebp
		ret

		
	vec_diff:
		
		#prologue
		pushl %ebp
		movl %esp, %ebp
		
		pushl %ebx
		pushl %edi
		pushl %esi
		

		movl $0, %ecx			# inicia o contador de valores unicos
		movl ptrvec, %esi		# passa o endereco do Array para %esi
		movl num, %edi			# inicia com o numero de elementos do Array e decrementa a cada iteracao
		
		vec_diff_loop:
			cmpl $0, %edi		# verifica se o Array chegou ao fim
			je end2				# salta para o fim caso seja igual
			
		movw (%esi), %dx		# move o valor apontado pelo registo para %dx
		movw %dx, x				# move o valor de %dx para a variavel X, de modo a ser usado na outra funcao
		
		pushl %ecx			# guarda o registo %ecx por ser usado na outra funcao
		pushl %edx			# guarda o registo %edx por ser usado na outra funcao
			call exists			# executa a outra funcao
		popl %edx			# chama novamente o registo %edx
		popl %ecx			# chama novamente o registo %ecx
		
		cmpl $0, %eax		# compara o retorno da outra funcao com $0
		je unico			# salta caso o numero X seja unico (%eax = 0)
			
		addl $2, %esi			# "anda para a frente" no vetor
		decl %edi				# decrementa o Array		
		jmp vec_diff_loop		# volta ao inicio do loop
			
		unico:
			addl $1, %ecx			# contador de valores unicos
			addl $2, %esi			# "anda para a frente" no vetor
			decl %edi				# decrementa o Array
			jmp vec_diff_loop		# volta ao inicio do loop
	
		end2:
			movl %ecx, %eax		# o contador dos nao-repetidos passa para %eax para dar retorno
		

		popl %esi
		popl %edi
		popl %ebx
		
		#epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
