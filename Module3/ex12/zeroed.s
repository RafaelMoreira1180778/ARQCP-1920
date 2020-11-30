.section .data
	.global num
	.global ptrvec			# apontador para INT do vec

.section .text
	.global vec_zero
	
	vec_zero:
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		
		
		movl ptrvec, %ebx		# o pointer do vetor está em %ebx
		movl num, %ecx			# tamanho do array
		movl $0, %edx			# iniciar um contador para percorrer o array
		movl $0, %eax			# contador de valores iguais ou maiores que 100
		
		
		loop:
			cmpl %ecx, %edx		# compara o size-vec com o iterador
			je loop_end			
			
			cmpw $100, (%ebx)
			jge zerar		
			
			addl $2, %ebx		# leitura do proximo numero no array
			addl $1, %edx		# incrementa o iterador
			jmp loop

			
		zerar:
			movw $0, (%ebx)
			addl $1, %eax
			
			addl $2, %ebx		# leitura do proximo numero no array
			addl $1, %edx		# incrementa o iterador
			
			jmp loop
			
		loop_end:
		
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
