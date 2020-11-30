.section .data
	.equ ADDRESS_OFFSET, 124	# este valor vem do facto de a Structure ter:
# char(1*1) + short(1*2) + int(4*10) + char(1*80) = 123 ate chegar/encontrar o Address na Structure, na posicao 124
	.equ GRADES_OFFSET, 4			# este valor vem do facto de a Structure ter:
# char(1*1) + short(1*2) = 3 ate chegar/encontrar o Array Grades na Structure, na posicao 4


.section .text
	.global update_address
	.global update_grades
	.global locate_greater
		
	update_address:
	# prologue
		pushl %ebp
		movl %esp, %ebp
		
	#	pushl %ebx
	#	pushl %edi
	#	pushl %esi
		
		movl 8(%ebp), %edx			# endereco da Structure passada por parametro
		movl 12(%ebp), %ecx			# endereco do Address a ser alocado, passado por parametro

		addl $ADDRESS_OFFSET, %edx	# adiciona/move o POINTER da Structure de modo a 'chegar' ao Address

		pushl %ecx
		pushl %edx
			call strcpy
		
	end1:
	
	#	popl %esi
	#	popl %edi
	#	popl %ebx
		
	# epilogue
		movl %ebp, %esp
		popl %ebp

		ret



	update_grades:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	# -----------------------------------------------------------------------------------------------------------------------------
	pushl %ebx

	movl 8(%ebp), %edx 										# estudante a modificar
	movl 12(%ebp), %ecx 									# array de notas do estudante

	addl $GRADES_OFFSET, %edx
	movl $0, %eax											# limpa eax, contador do loop
		
	loop:
	cmpl $10, %eax											# se já tivermos adicionado as 10 notas acabou o loop
	je end 

	movl $0, %ebx											# limpa ebx

	movl (%ecx), %ebx										# move a nota atual para o para ebx
	movl %ebx, (%edx)										# move a nota que está em ebx para o student

	addl $4, %ecx											# avança uma posição no array de notas
	addl $4, %edx											# avança uma posição na estrutura do estudante

	incl %eax												# incrementa o contador do loop
	jmp loop

	end:
	popl %ebx
	# -----------------------------------------------------------------------------------------------------------------------------
	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret

	
	
	locate_greater:
	# prologue
		pushl %ebp
		movl %esp, %ebp
		
		subl $4, %esp					# reserva espaco para uma variavel
		
		pushl %ebx
	#	pushl %edi
		pushl %esi	

		movl 8(%ebp), %edx				# endereco da Structure passada por parametro
		movl 12(%ebp), %eax				# valor com o qual os valores das Grades devem ser comparados
		movl 16(%ebp), %ebx				# endereco das Grades presentes, passado por parametro
		addl $GRADES_OFFSET, %edx		# valor a adicionar para mover o POINTER da Structure de modo a 'chegar' as Grades
		movl $10, %ecx					# numero de disciplinas/notas/Grades de uma Structure/aluno
		movl $0, -4(%ebp)				# 'zera' o espaco reservado
		
	notas:
		cmp $0, %ecx					# se tiver lido 10 notas, chegou ao fim do Array de Grades
		je end3
		
		cmpl %eax, (%edx)				# compara o valor da nota (%ebx) com o valor_minimo passado por parametro
		jg maior						# se a nota > minimo, copia a nota
		addl $4, %edx					# salta para a proxima nota das Grades
		decl %ecx						# decrementa o contador pois ja leu uma nota
		jmp notas
		
	maior:
		movl (%edx), %esi				# copia a nota a ser lida para %esi
		movl %esi, (%ebx)				# copia a nota, que tinha sido lido, para o Pointer %ebx
		addl $4, %edx					# salta para a proxima nota das Grades
		addl $1, -4(%ebp)				# quantidade de notas superiores ao valor_minimo
		decl %ecx						# leu uma Grade, passando a seguinte
		jmp notas
		
	end3:
		movl -4(%ebp), %eax				# retorna o numero de notas superiores ao Minimo passado por parametro
	
		popl %esi
	#	popl %edi
		popl %ebx
		
	# epilogue
		movl %ebp, %esp
		popl %ebp

		ret	
	
	
	
