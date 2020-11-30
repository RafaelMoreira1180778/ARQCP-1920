.section .data
	.global num
	.global ptrvec			# apontador para INT do vec

.section .text
	.global vec_add_one
	
	vec_add_one:
		pushl %ebp
		movl %esp, %ebp
		
		movl ptrvec, %eax		# o pointer do vetor está em %edi
		movl num, %ecx			# tamanho do array
		movl $0, %edx			# iniciar um contador para percorrer o array
		
		
		loop:
			
			cmpl %ecx, %edx		# compara o size-vec com o iterador
			je loop_end			
			
			addl $1, (%eax)		# +1 ao valor INT			
			
			jmp iterador		# salta para o valor seguinte
			
			
		iterador:
			addl $4, %eax		# leitura do proximo numero no array
			addl $1, %edx		# incrementa o iterador
			jmp loop

			
		loop_end:
		
		
		movl %ebp, %esp
		popl %ebp
		ret
