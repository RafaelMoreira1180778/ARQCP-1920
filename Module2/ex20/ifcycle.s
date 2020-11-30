
.section .data		 
	.global num


.section .text
	.global check_num

	check_num:
		# prologue
		pushl %ebp
		movl %esp, %ebp

		# callee save
		pushl %ebx
		pushl %edi
		pushl %esi

		movl $2, %edi
		movl $0, %esi
		
		movl num, %eax
		cdq					# estender o sinal, pois pode ser negativo
		movl %edx, %ebx		# o sinal está em %ebx
		idivl %edi			# quociente em %eax e resto em %edx
							# dividiu-se por 2 para se saber se seria par, ou nao
		
		movl $0, %eax		# limpa-se o registo colocando-se 0 em %eax
		movl %edx, %ecx		# resto da divisao do NUM por 2 em %ecx
		
		cmpl %esi, %ecx		# comparar o resto com 0
		je par				# se for par (resto = 0)
		
		addl $2, %eax		# adiciona-se 2 ao %eax por ser impar
							# ou seja, nao entrou no comapre anterior

		cmpl %esi, %ebx		# comparar o valor do sinal do NUM com 0
		je positivo			# se igual, quer dizer que é positivo
		jmp end				# salta para o fim
		
		
		par:
			addl $1, %eax		# adiciona-se 1 por ser par
			cmpl %esi, %ebx		# comparar o valor do sinal do NUM com 0
			je positivo			# se igual, quer dizer que é positivo
			jmp end				# salta para o fim
		
		positivo:
			addl $2, %eax		# acrescenta 2 ao output final
								# 4 se impar ou 3 se par
			jmp	end				# salta para o fim
		
		end:

		# callee restore
		popl %esi
		popl %edi
		popl %ebx
		
		# epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
		
		
