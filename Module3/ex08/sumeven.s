.section .data
	.global num
	.global even
	.global ptrvec			# apontador para INT do vec

.section .text
	.global test_even
	.global vec_sum_even
	
	test_even:
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi
		
		movl $0, %edx
		movl $0, %esi
		movl $2, %edi
		movl even, %eax			# numero a ser avaliado
		idivl %edi				# quociente em %eax e resto em %edx
		
		cmpl %esi, %edx			# comparar o resto com 0
		je par					# se for resto = 0 (numero par) salta para o PAR
		
		movl $0, %eax			# se for resto != 0 (numero impar) guarda $0 em %eax
		jmp end1
		
		par:
			movl $1, %eax		# guarda $1 em %eax
			
		end1:
		
		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret

	vec_sum_even:
		pushl %ebp
		movl %esp, %ebp
		pushl %ebx
		pushl %edi
		pushl %esi	
			
		movl ptrvec, %edi		# o pointer do vetor está em %edi
		movl num, %ecx			# tamanho do array
		movl $0, %edx			# iniciar um contador para percorrer o array
		movl $0, %esi			# inicia a soma final
		
		vetor:
			cmpl %ecx, %edx		# compara o size-vec com o iterador
			je end2			
			
			movl (%edi), %ebx	# transfere o presente valor no vetor para a variavel %ebx
			movl %ebx, even
			
			
			pushl %edx			
			pushl %ecx
			call test_even	
			popl %ecx
			popl %edx
			
			
			cmpl $1, %eax		# estando 1 em %eax, logo %ebx é PAR
			je somar
			
			jmp iterador		# salta para o valor seguinte
			
		iterador:
			addl $4, %edi		# leitura do proximo numero no array, incrementando o pointer
			incl %edx			# incrementa o iterador
			jmp vetor
			
		somar:
			addl %ebx, %esi
			jmp iterador		# salta para o valor seguinte
			
		end2:
		
		movl $0, %eax
		movl %esi, %eax
		

		popl %esi
		popl %edi
		popl %ebx
		movl %ebp, %esp
		popl %ebp
		
		ret
